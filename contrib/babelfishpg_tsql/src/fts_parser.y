%{
#include "postgres.h"
#include "lib/stringinfo.h"
#include <ctype.h>
#include "fts_data.h"

/* All grammar constructs return strings */
#define FTS_YYSTYPE char *

/*
 * Bison doesn't allocate anything that needs to live across parser calls,
 * so we can easily have it use palloc instead of palloc.  This prevents
 * memory leaks if we error out during parsing.  Note this only works with
 * bison >= 2.0.  However, in bison 1.875 the default is to use alloca()
 * if possible, so there's not really much problem anyhow, at least if
 * you're building with gcc.
 */
#define YYpALLOC palloc
#define YYFREE   pfree

static char *scanbuf;
static int	scanbuflen;

static char* translate_simple_term(const char* s);
static char *trim(char *s, bool insideQuotes);
static bool containsSpecialCharacters(char s);

%}

%token WORD_TOKEN WS_TOKEN TEXT_TOKEN PREFIX_TERM_TOKEN GENERATION_TERM_TOKEN AND_TOKEN NOT_TOKEN AND_NOT_TOKEN OR_TOKEN INFLECTIONAL_TOKEN THESAURUS_TOKEN FORMSOF_TOKEN O_PAREN_TOKEN C_PAREN_TOKEN COMMA_TOKEN SPECIAL_CHAR_TOKEN NON_ENGLISH_TOKEN
%left OR_TOKEN
%left AND_TOKEN
%left AND_NOT_TOKEN

%start contains_search_condition
%define api.prefix {fts_yy}
%parse-param {char** result}
%expect 0

/* Grammar follows */
%%

contains_search_condition:
    simple_term
    | prefix_term
    | generation_term
    ;

simple_term:
    WORD_TOKEN  {
        *result = translate_simple_term($1);
    }
    | TEXT_TOKEN {
        *result = translate_simple_term($1);
    }
    | WS_TOKEN WORD_TOKEN {
        *result = translate_simple_term($2);
    }
    | WORD_TOKEN WS_TOKEN {
        *result = translate_simple_term($1);
    }
    | WS_TOKEN WORD_TOKEN WS_TOKEN {
        *result = translate_simple_term($2);
    }
    | WS_TOKEN TEXT_TOKEN {
        *result = translate_simple_term($2);
    }
    | TEXT_TOKEN WS_TOKEN {
        *result = translate_simple_term($1);
    }
    | WS_TOKEN TEXT_TOKEN WS_TOKEN {
        *result = translate_simple_term($2);
    }
    ;

prefix_term:
    PREFIX_TERM_TOKEN {
        fts_yyerror(NULL, "Prefix term is not currently supported in Babelfish");
    }
    ;

generation_term:
    FORMSOF_TOKEN O_PAREN_TOKEN generation_type COMMA_TOKEN simple_term_list C_PAREN_TOKEN {
        fts_yyerror(NULL, "Generation term is not currently supported in Babelfish");
    }
    ;

generation_type:
    INFLECTIONAL_TOKEN {
        fts_yyerror(NULL, "Generation term is not currently supported in Babelfish");
    }
    | THESAURUS_TOKEN {
        fts_yyerror(NULL, "Generation term is not currently supported in Babelfish");
    }
    ;

simple_term_list:
    simple_term {
        $$ = $1;
    }
    | simple_term_list COMMA_TOKEN simple_term {
        $$ = $1;
    }
    ;

%%

/* Helper function that takes in a word or phrase and returns the same word/phrase in Postgres format
 * Example: 'word' is rewritten into 'word'; '"word1 word2 word3"' is rewritten into 'word1<->word2<->word3'
 * Case 1: 'word' = 'word'
 * Case 2: '"word1 word2 word3"' = 'word1<->word2<->word3'
 * Case 3: '  word' = 'word' || 'word ' = 'word' || ' word ' = 'word'
 * Case 4: '" word1 word2"' = 'word1<->word2' || '"word1 word2 "' = 'word1<->word2' || '" word1 word2 "' = 'word1<->word2'
 * Trivial Case: spaces before and after double quotes, Example - '   "word1 word2" ' = 'word1<->word2'
 */
static
char* translate_simple_term(const char* inputStr) {
    int             inputLength;
    StringInfoData  output;
    const char*     inputPtr;
    char*           trimmedInputStr;

    // Check for empty input - this should not be possible based on lexer rules, but check just in case
    if (!inputStr || !(inputLength = strlen(inputStr))) {
        ereport(ERROR,
			(errcode(ERRCODE_INTERNAL_ERROR),
				errmsg("Null or empty full-text predicate.")));
    }

    trimmedInputStr = pstrdup(inputStr);

    // removing trailing and leading spaces
    trim(trimmedInputStr, false);
    inputLength = strlen(trimmedInputStr);

    // Check if the input is a phrase enclosed in double quotes
    if (trimmedInputStr[0] == '"' && trimmedInputStr[inputLength - 1] == '"') {
        trim(trimmedInputStr, true);
        inputLength = strlen(trimmedInputStr);

        initStringInfo(&output);
        appendStringInfoString(&output, "");

        // Initialize pointers for input and output
        for (inputPtr = trimmedInputStr; *inputPtr != '\0'; inputPtr++) {
            if (isspace((unsigned char)*inputPtr)) {
                // Replace space with "<->"
                while (isspace((unsigned char)*(inputPtr + 1))) {
                    // Handle multiples spaces between words and skip over additional spaces
                    inputPtr++;
                }
                appendStringInfoString(&output, "<->");
            } else if (*inputPtr != '-' && containsSpecialCharacters((unsigned char)*inputPtr)) {   // Handle special characters and other languages
                pfree(trimmedInputStr);
                yyerror(NULL, "Full-text search conditions with special characters or languages other than English are not currently supported in Babelfish");
            } else {
                // Copy the character
                appendStringInfoChar(&output, *inputPtr);
            }
        }
        pfree(trimmedInputStr);
        return output.data;
    } else {
         // Initialize pointers for input and output
        for (inputPtr = trimmedInputStr; *inputPtr != '\0'; inputPtr++) {
            if (*inputPtr != '-' && containsSpecialCharacters((unsigned char)*inputPtr)) {   // Handle special characters and other languages
                pfree(trimmedInputStr);
                yyerror(NULL, "Full-text search conditions with special characters or languages other than English are not currently supported in Babelfish");
            }
        }
        // It's a single word, so no transformation needed
        return trimmedInputStr;
    }
}

/*
 * Function to remove leading and trailing spaces of a string
 * If flag is true then it removes spaces inside double quotes
 */
static char *trim(char *s, bool insideQuotes) {
    size_t length;
    size_t start;
    size_t end;
    size_t newLength;

    /*
     * Empty string, nothing to trim
     * for the empty input, we're automatically throwing error, 
     * so if string is NULL or empty, this clause won't pose any issue, it's just a safety check
     */
    if (!s || !(length = strlen(s))) {
        return s;
    }

    start = 0;
    end = length - 1;

    if(insideQuotes) {
        start++;
        end--;
    }

    // Trim leading spaces
    while (start < length && isspace(s[start])) {
        start++;
    }

    // Trim trailing spaces
    while (end > start && isspace(s[end])) {
        end--;
    }

    // Calculate the new length
    newLength = end - start + 1;

    // Shift the non-space part to the beginning of the string
    memmove(s, s + start, newLength);

    // Null-terminate the result
    s[newLength] = '\0';

    return s;
}

static bool containsSpecialCharacters(char str) {
    // Ignore Non-breaking space character
    return str != '\302' && str != -62 && str != '\240' && str != -96 && !isalnum(str) && !isspace(str);
}

# include "fts_scan.c"