-- Error: relation \"%s\" does not exist
-- Client Test
BEGIN TRY
		select * from asdfasdfasdf;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO


BEGIN TRY
		EXEC('select * from asdfasdfasdf;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: relation \"%s\" does not exist
-- Simple batch with try catch
BEGIN TRY
    SELECT * FROM non_existent_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

BEGIN TRY
    EXEC('SELECT * FROM non_existent_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: relation \"%s\" does not exist
-- Simple batch with transaction inside try-catch
BEGIN TRY
    BEGIN TRAN
        SELECT * FROM non_existent_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('SELECT * FROM non_existent_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Simple batch with try-catch inside transaction
BEGIN TRAN
GO

BEGIN TRY
	SELECT * FROM non_existent_table;
END TRY
BEGIN CATCH
	SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
				+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
				+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
				+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
				+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
				+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRAN
GO

BEGIN TRY
	EXEC('SELECT * FROM non_existent_table;');
END TRY
BEGIN CATCH
	SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
				+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
				+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
				+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
				+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
				+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Simple procedure inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_relation_err1;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_relation_err1;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside try-catch but not inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_relation_err1;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('EXEC babel_5186_try_catch_relation_err1;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside procedure but not inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_relation_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_relation_err2;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside try-catch and inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_relation_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('EXEC babel_5186_try_catch_relation_err2;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Client Test
BEGIN TRY
		select name123 from sys.database_principals;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

BEGIN TRY
		EXEC('select name123 from sys.database_principals;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: column \"%s\" does not exist
-- Simple batch with try catch
BEGIN TRY
    SELECT non_existent_column FROM babel_5186_try_catch_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

BEGIN TRY
    EXEC('SELECT non_existent_column FROM babel_5186_try_catch_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: column \"%s\" does not exist
-- Simple batch with transaction inside try-catch
BEGIN TRY
    BEGIN TRAN
        SELECT non_existent_column FROM babel_5186_try_catch_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('SELECT non_existent_column FROM babel_5186_try_catch_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Simple procedure inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_column_err1;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_column_err1;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside try-catch but not inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_column_err1;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('EXEC babel_5186_try_catch_column_err1;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside procedure but not inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_column_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_column_err2;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside try-catch and inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_column_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('EXEC babel_5186_try_catch_column_err2;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Xact State_'+ cast(XACT_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

SELECT @@trancount
GO

IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Other Miscellanous testing
-- Simple batch
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (111);
INSERT INTO babel_5186_table_errTable VALUES (112);
SELECT * FROM non_existent_table;
INSERT INTO babel_5186_table_errTable VALUES (113);
GO

SELECT * FROM babel_5186_table_errTable
GO

SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (121);
INSERT INTO babel_5186_table_errTable VALUES (122);
EXEC('SELECT * FROM non_existent_table;');
INSERT INTO babel_5186_table_errTable VALUES (123);
GO

SELECT * FROM babel_5186_table_errTable
GO

SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (131);
INSERT INTO babel_5186_table_errTable VALUES (132);
SELECT non_existent_column FROM babel_5186_try_catch_table;
INSERT INTO babel_5186_table_errTable VALUES (133);
GO

SELECT * FROM babel_5186_table_errTable
GO

SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (141);
INSERT INTO babel_5186_table_errTable VALUES (142);
EXEC('SELECT non_existent_column FROM babel_5186_try_catch_table;');
INSERT INTO babel_5186_table_errTable VALUES (143);
GO

SELECT * FROM babel_5186_table_errTable
GO

-- Simple batch with transaction
BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (211);
INSERT INTO babel_5186_table_errTable VALUES (212);
SELECT * FROM non_existent_table;
INSERT INTO babel_5186_table_errTable VALUES (213);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (221);
INSERT INTO babel_5186_table_errTable VALUES (222);
EXEC('SELECT * FROM non_existent_table;');
INSERT INTO babel_5186_table_errTable VALUES (223);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (231);
INSERT INTO babel_5186_table_errTable VALUES (232);
SELECT non_existent_column FROM babel_5186_try_catch_table;
INSERT INTO babel_5186_table_errTable VALUES (233);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (241);
INSERT INTO babel_5186_table_errTable VALUES (242);
EXEC('SELECT non_existent_column FROM babel_5186_try_catch_table;');
INSERT INTO babel_5186_table_errTable VALUES (243);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

-- Simple batch with nested transaction
BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (311);
BEGIN TRAN;
INSERT INTO babel_5186_table_errTable VALUES (312);
SELECT * FROM non_existent_table;
COMMIT TRAN;
INSERT INTO babel_5186_table_errTable VALUES (313);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (321);
BEGIN TRAN;
INSERT INTO babel_5186_table_errTable VALUES (322);
EXEC('SELECT * FROM non_existent_table;');
COMMIT TRAN;
INSERT INTO babel_5186_table_errTable VALUES (323);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (331);
BEGIN TRAN;
INSERT INTO babel_5186_table_errTable VALUES (332);
SELECT non_existent_column FROM babel_5186_try_catch_table;
COMMIT TRAN;
INSERT INTO babel_5186_table_errTable VALUES (333);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT ON;
INSERT INTO babel_5186_table_errTable VALUES (341);
BEGIN TRAN;
INSERT INTO babel_5186_table_errTable VALUES (342);
EXEC('SELECT non_existent_column FROM babel_5186_try_catch_table;');
COMMIT TRAN;
INSERT INTO babel_5186_table_errTable VALUES (343);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_table_errTable
GO

-- Simple procedure with transaction
EXEC babel_5186_errProc1_1;
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc1_2
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc1_3
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc1_4
GO

SELECT * FROM babel_5186_table_errTable
GO

-- Nested procedure
EXEC babel_5186_errProc2_11;
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc2_21
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc2_31
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc2_41
GO

SELECT * FROM babel_5186_table_errTable
GO

-- Nest procedure with transaction
EXEC babel_5186_errProc3_11;
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc3_21
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc3_31
GO

SELECT * FROM babel_5186_table_errTable
GO

EXEC babel_5186_errProc3_41
GO

SELECT * FROM babel_5186_table_errTable
GO


-- XACT_ABORT OFF
-- Miscellanous testing
-- Simple batch
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (111);
INSERT INTO babel_5186_1_table_errTable VALUES (112);
SELECT * FROM non_existent_table;
INSERT INTO babel_5186_1_table_errTable VALUES (113);
GO

SELECT * FROM babel_5186_1_table_errTable
GO

SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (121);
INSERT INTO babel_5186_1_table_errTable VALUES (122);
EXEC('SELECT * FROM non_existent_table;');
INSERT INTO babel_5186_1_table_errTable VALUES (123);
GO

SELECT * FROM babel_5186_1_table_errTable
GO

SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (131);
INSERT INTO babel_5186_1_table_errTable VALUES (132);
SELECT non_existent_column FROM babel_5186_1_try_catch_table;
INSERT INTO babel_5186_1_table_errTable VALUES (133);
GO

SELECT * FROM babel_5186_1_table_errTable
GO

SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (141);
INSERT INTO babel_5186_1_table_errTable VALUES (142);
EXEC('SELECT non_existent_column FROM babel_5186_1_try_catch_table;');
INSERT INTO babel_5186_1_table_errTable VALUES (143);
GO

SELECT * FROM babel_5186_1_table_errTable
GO

-- Simple batch with transaction
BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (211);
INSERT INTO babel_5186_1_table_errTable VALUES (212);
SELECT * FROM non_existent_table;
INSERT INTO babel_5186_1_table_errTable VALUES (213);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (221);
INSERT INTO babel_5186_1_table_errTable VALUES (222);
EXEC('SELECT * FROM non_existent_table;');
INSERT INTO babel_5186_1_table_errTable VALUES (223);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (231);
INSERT INTO babel_5186_1_table_errTable VALUES (232);
SELECT non_existent_column FROM babel_5186_1_try_catch_table;
INSERT INTO babel_5186_1_table_errTable VALUES (233);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (241);
INSERT INTO babel_5186_1_table_errTable VALUES (242);
EXEC('SELECT non_existent_column FROM babel_5186_1_try_catch_table;');
INSERT INTO babel_5186_1_table_errTable VALUES (243);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

-- Simple batch with nested transaction
BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (311);
BEGIN TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (312);
SELECT * FROM non_existent_table;
COMMIT TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (313);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (321);
BEGIN TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (322);
EXEC('SELECT * FROM non_existent_table;');
COMMIT TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (323);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (331);
BEGIN TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (332);
SELECT non_existent_column FROM babel_5186_1_try_catch_table;
COMMIT TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (333);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

BEGIN TRAN;
SET XACT_ABORT OFF;
INSERT INTO babel_5186_1_table_errTable VALUES (341);
BEGIN TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (342);
EXEC('SELECT non_existent_column FROM babel_5186_1_try_catch_table;');
COMMIT TRAN;
INSERT INTO babel_5186_1_table_errTable VALUES (343);
COMMIT TRAN;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

-- Simple procedure with transaction
EXEC babel_5186_1_errProc1_1;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc1_2
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc1_3
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc1_4
GO

SELECT * FROM babel_5186_1_table_errTable
GO

-- Nested procedure
EXEC babel_5186_1_errProc2_11;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc2_21
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc2_31
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc2_41
GO

SELECT * FROM babel_5186_1_table_errTable
GO

-- Nest procedure with transaction
EXEC babel_5186_1_errProc3_11;
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc3_21
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc3_31
GO

SELECT * FROM babel_5186_1_table_errTable
GO

EXEC babel_5186_1_errProc3_41
GO

SELECT * FROM babel_5186_1_table_errTable
GO

