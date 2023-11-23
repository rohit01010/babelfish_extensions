-- sla 20000
SET NOCOUNT ON
DECLARE @sp_columns_managed_var table(a nvarchar(128), b nvarchar(128), c nvarchar(128), d nvarchar(128), e int, f nvarchar(4000), g nvarchar(3), h nvarchar(128), i int, j int, k int, l int, m int, n int, o nvarchar(128), p nvarchar(128), q nvarchar(128), r nvarchar(128), s int, t int, u int)
INSERT INTO @sp_columns_managed_var EXEC babel_sp_columns_managed_dep_vu_prepare_p1 "master", "dbo", "sysdatabases"
SELECT * FROM @sp_columns_managed_var ORDER BY a, b, c, d, e
SET NOCOUNT OFF

SET NOCOUNT ON
DECLARE @sp_columns_managed_var1 table(a nvarchar(128), b nvarchar(128), c nvarchar(128), d nvarchar(128), e int, f nvarchar(4000), g nvarchar(3), h nvarchar(128), i int, j int, k int, l int, m int, n int, o nvarchar(128), p nvarchar(128), q nvarchar(128), r nvarchar(128), s int, t int, u int)
INSERT INTO @sp_columns_managed_var1 EXEC babel_sp_columns_managed_dep_vu_prepare_p1 "master", "dbo", "SYSDATABASES"
SELECT * FROM @sp_columns_managed_var1 ORDER BY a, b, c, d, e
SET NOCOUNT OFF

EXEC babel_sp_columns_managed_dep_vu_prepare_p1 "master", "dbo", "sysdatabases", "name";
GO

EXEC babel_sp_columns_managed_dep_vu_prepare_p1 "MASTER", "DbO", "SYSDATABASES", "NaMe";
GO
