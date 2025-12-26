CREATE VIEW my_sp_special_columns_view AS
    SELECT CASE 1 WHEN 1 THEN cast('abc' as sysname) WHEN 2 THEN cast('abc' as sysname) ELSE cast('abc' as sysname) END AS result;
GO

select column_name, data_type from information_schema.columns where table_name like '%my_sp_special_columns_view%';
GO

select top 1 cast(pg_typeof(type_name) as varchar(100)) from sys.sp_special_columns_view;
GO
