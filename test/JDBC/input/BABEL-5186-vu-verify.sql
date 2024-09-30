-- Error: relation \"%s\" does not exist
-- Client Test
BEGIN TRY
		select * from asdfasdfasdf;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: relation \"%s\" does not exist
-- Simple batch with try catch
BEGIN TRY
    SELECT * FROM non_existing_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

BEGIN TRY
    EXEC('SELECT * FROM non_existing_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: relation \"%s\" does not exist
-- Simple batch with transaction inside try-catch
BEGIN TRY
    BEGIN TRAN
        SELECT * FROM non_existing_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('SELECT * FROM non_existing_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside try-catch but not inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_relation_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside procedure but not inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_relation_err3;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_relation_err3;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: relation \"%s\" does not exist
-- Transaction inside try-catch and inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_relation_err1;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: column \"%s\" does not exist
-- Simple batch with try catch
BEGIN TRY
    SELECT b FROM babel_5186_try_catch_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

BEGIN TRY
    EXEC('SELECT b FROM babel_5186_try_catch_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH
GO

-- Error: column \"%s\" does not exist
-- Simple batch with transaction inside try-catch
BEGIN TRY
    BEGIN TRAN
        SELECT b FROM babel_5186_try_catch_table;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('SELECT b FROM babel_5186_try_catch_table;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside try-catch but not inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_column_err2;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
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
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside procedure but not inside try-catch
BEGIN TRY
    SELECT xact_state();
    EXEC babel_5186_try_catch_column_err3;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    SELECT xact_state();
    EXEC('EXEC babel_5186_try_catch_column_err3;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

-- Error: column \"%s\" does not exist
-- Transaction inside try-catch and inside procedure
BEGIN TRY
    BEGIN TRAN
        EXEC babel_5186_try_catch_column_err4;
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO

BEGIN TRY
    BEGIN TRAN
        EXEC('EXEC babel_5186_try_catch_column_err4;');
END TRY
BEGIN CATCH
		SELECT 'Severity_' + cast(ERROR_SEVERITY() as nvarchar(500))
					+ ' Error State_'+ cast(ERROR_STATE() as nvarchar(500))
					+ ' Error number_'+ cast(ERROR_NUMBER() as nvarchar(500))
					+ ' Error Line number_'+ cast(ERROR_LINE() as nvarchar(500))
					+ ' Error message_'+ cast(ERROR_MESSAGE() as nvarchar(500));
END CATCH;
GO
IF @@trancount > 0 ROLLBACK TRAN;
GO
