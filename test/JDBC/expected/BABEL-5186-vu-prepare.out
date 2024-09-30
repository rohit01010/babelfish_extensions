CREATE PROCEDURE babel_5186_try_catch_relation_err1
AS
    SELECT * FROM non_existing_table;
GO

CREATE PROCEDURE babel_5186_try_catch_relation_err2
AS
    SELECT * FROM non_existing_table;
GO

CREATE PROCEDURE babel_5186_try_catch_relation_err3
AS
BEGIN
    BEGIN TRAN
        SELECT * FROM non_existing_table;
    COMMIT TRAN
END
GO

CREATE PROCEDURE babel_5186_try_catch_relation_err4
AS
BEGIN
    BEGIN TRAN
        SELECT * FROM non_existing_table;
    COMMIT TRAN
END
GO

CREATE TABLE babel_5186_try_catch_table1 (a INT)
GO

CREATE PROCEDURE babel_5186_try_catch_column_err1
AS
    SELECT b FROM babel_5186_try_catch_table;
GO

CREATE PROCEDURE babel_5186_try_catch_column_err2
AS
    SELECT b FROM babel_5186_try_catch_table;
GO

CREATE PROCEDURE babel_5186_try_catch_column_err3
AS
BEGIN
    BEGIN TRAN
        SELECT b FROM babel_5186_try_catch_table;
    COMMIT TRAN
END
GO

CREATE PROCEDURE babel_5186_try_catch_column_err4
AS
BEGIN
    BEGIN TRAN
        SELECT b FROM babel_5186_try_catch_table;
    COMMIT TRAN
END
GO
