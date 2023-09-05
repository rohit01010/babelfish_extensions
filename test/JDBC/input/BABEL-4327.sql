CREATE TABLE [dbo].[test_babel_4327_table](
       [id] [bigint] IDENTITY(1,1) NOT NULL,
       [my_varchar_data] [varchar](20) NULL,
       [my_computed_column] AS isnull([my_varchar_data],[id]));
GO

-- should be sys.varchar
select name from sys.types where system_type_id = 
(
  select system_type_id from sys.columns where 
    name = 'my_computed_column' and 
	object_id = 
	(
	  select object_id from sys.tables where name = 'test_babel_4327_table'
	)
);
GO

INSERT INTO [dbo].[test_babel_4327_table]([my_varchar_data])VALUES ('1');
INSERT INTO [dbo].[test_babel_4327_table]([my_varchar_data])VALUES ('HELLO');
INSERT INTO [dbo].[test_babel_4327_table]([my_varchar_data])VALUES (NULL);
GO

select
  ISNULL(NULL, NULL),
  ISNULL(NULL, 'Unassigned'),
  ISNULL([my_varchar_data], 'Unassigned'),
  ISNULL('Unassigned', 1),
  ISNULL ('', 5)
from [dbo].[test_babel_4327_table];
GO

select * from [dbo].[test_babel_4327_table] where ISNULL([my_varchar_data], [id]) = 'HELLO';
GO

select * from [dbo].[test_babel_4327_table] where [my_computed_column] = 'HELLO';
GO

select * from [dbo].[test_babel_4327_table] where ISNULL([my_varchar_data], [id]) = 'HeLLO';
GO

select * from [dbo].[test_babel_4327_table] where [my_computed_column] = 'HeLLO';
GO

DROP TABLE [dbo].[test_babel_4327_table];
GO