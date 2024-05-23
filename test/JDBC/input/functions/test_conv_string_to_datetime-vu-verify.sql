-- sla 100000
-- Empty string, should return default values
SELECT CONVERT(DATETIME, '')
GO

SELECT CONVERT(DATETIME, '', 130)
GO

-- -- Numeric: 
-- 1 or 2 digit number in a given datetime string literal is considered as either 
-- day, month or year based on session dateformat value.
-- [m]m<seperator>[d]d<seperator>([y]y|yyyy)
SELECT CONVERT(DATETIME, '3-2-4 14:30')
GO

SELECT CONVERT(DATETIME, '3-12-4 14:30')
GO

SELECT CONVERT(DATETIME, '3-12-24 14:30')
GO

SELECT CONVERT(DATETIME, '3-12-2024 14:30')
GO

SELECT CONVERT(DATETIME, '11-12-2024 14:30')
GO

SELECT CONVERT(DATETIME, '3     -        12 -           2024 14:30')
GO

SELECT CONVERT(DATETIME, '3.2.4 14:30')
GO

SELECT CONVERT(DATETIME, '3.12.4 14:30')
GO

SELECT CONVERT(DATETIME, '3.12.24 14:30')
GO

SELECT CONVERT(DATETIME, '3.12.2024 14:30')
GO

SELECT CONVERT(DATETIME, '11.12.2024 14:30')
GO

SELECT CONVERT(DATETIME, '3     .        12 .           2024 14:30')
GO

SELECT CONVERT(DATETIME, '3/2/4 14:30')
GO

SELECT CONVERT(DATETIME, '3/12/4 14:30')
GO

SELECT CONVERT(DATETIME, '3/12/24 14:30')
GO

SELECT CONVERT(DATETIME, '3/12/2024 14:30')
GO

SELECT CONVERT(DATETIME, '11/12/2024 14:30')
GO

SELECT CONVERT(DATETIME, '3     /        12 /           2024 14:30')
GO

-- [m]m<seperator>([y]y|yyyy)<seperator>[d]d
SELECT CONVERT(DATETIME, '3-4-2 14:30')
GO

SELECT CONVERT(DATETIME, '3-4-12 14:30')
GO

SELECT CONVERT(DATETIME, '3-24-12 14:30')
GO

SELECT CONVERT(DATETIME, '3-2024-12 14:30')
GO

SELECT CONVERT(DATETIME, '11-2024-12 14:30')
GO

SELECT CONVERT(DATETIME, '3 -           2024     -        12 14:30')
GO

SELECT CONVERT(DATETIME, '3.4.2 14:30')
GO

SELECT CONVERT(DATETIME, '3.4.12 14:30')
GO

SELECT CONVERT(DATETIME, '3.24.12 14:30')
GO

SELECT CONVERT(DATETIME, '3.2024.12 14:30')
GO

SELECT CONVERT(DATETIME, '11.2024.12 14:30')
GO

SELECT CONVERT(DATETIME, '3 .           2024     .        12 14:30')
GO

SELECT CONVERT(DATETIME, '3/4/2 14:30')
GO

SELECT CONVERT(DATETIME, '3/4/12 14:30')
GO

SELECT CONVERT(DATETIME, '3/24/12 14:30')
GO

SELECT CONVERT(DATETIME, '3/2024/12 14:30')
GO

SELECT CONVERT(DATETIME, '11/2024/12 14:30')
GO

SELECT CONVERT(DATETIME, '3 /           2024     /        12 14:30')
GO

-- [d]d<seperator>[m]m<seperator>([y]y|yyyy)
SELECT CONVERT(DATETIME, '2-3-4 14:30')
GO

SELECT CONVERT(DATETIME, '12-3-4 14:30')
GO

SELECT CONVERT(DATETIME, '12-3-24 14:30')
GO

SELECT CONVERT(DATETIME, '12-3-2024 14:30')
GO

SELECT CONVERT(DATETIME, '12-11-2024 14:30')
GO

SELECT CONVERT(DATETIME, '12 -           3     -        2024 14:30')
GO

SELECT CONVERT(DATETIME, '2.3.4 14:30')
GO

SELECT CONVERT(DATETIME, '12.3.4 14:30')
GO

SELECT CONVERT(DATETIME, '12.3.24 14:30')
GO

SELECT CONVERT(DATETIME, '12.3.2024 14:30')
GO

SELECT CONVERT(DATETIME, '12.11.2024 14:30')
GO

SELECT CONVERT(DATETIME, '12 .           3     .        2024 14:30')
GO

SELECT CONVERT(DATETIME, '2/3/4 14:30')
GO

SELECT CONVERT(DATETIME, '12/3/4 14:30')
GO

SELECT CONVERT(DATETIME, '12/3/24 14:30')
GO

SELECT CONVERT(DATETIME, '12/3/2024 14:30')
GO

SELECT CONVERT(DATETIME, '12/11/2024 14:30')
GO

SELECT CONVERT(DATETIME, '12 /           3     /        2024 14:30')
GO

-- [d]d<seperator>([y]y|yyyy)<seperator>[m]m
SELECT CONVERT(DATETIME, '2-4-3 14:30')
GO

SELECT CONVERT(DATETIME, '12-4-3 14:30')
GO

SELECT CONVERT(DATETIME, '12-24-3 14:30')
GO

SELECT CONVERT(DATETIME, '12-2024-3 14:30')
GO

SELECT CONVERT(DATETIME, '12-2024-11 14:30')
GO

SELECT CONVERT(DATETIME, '12     -        2024 -           3 14:30')
GO

SELECT CONVERT(DATETIME, '2.4.3 14:30')
GO

SELECT CONVERT(DATETIME, '12.4.3 14:30')
GO

SELECT CONVERT(DATETIME, '12.24.3 14:30')
GO

SELECT CONVERT(DATETIME, '12.2024.3 14:30')
GO

SELECT CONVERT(DATETIME, '12.2024.11 14:30')
GO

SELECT CONVERT(DATETIME, '12     .        2024 .           3 14:30')
GO

SELECT CONVERT(DATETIME, '2/4/3 14:30')
GO

SELECT CONVERT(DATETIME, '12/4/3 14:30')
GO

SELECT CONVERT(DATETIME, '12/24/3 14:30')
GO

SELECT CONVERT(DATETIME, '12/2024/3 14:30')
GO

SELECT CONVERT(DATETIME, '12/2024/11 14:30')
GO

SELECT CONVERT(DATETIME, '12     /        2024 /           3 14:30')
GO

-- ([y]y|yyyy)<seperator>[m]m<seperator>[d]d
SELECT CONVERT(DATETIME, '4-3-2 14:30')
GO

SELECT CONVERT(DATETIME, '4-3-12 14:30')
GO

SELECT CONVERT(DATETIME, '24-3-12 14:30')
GO

SELECT CONVERT(DATETIME, '2024-3-12 14:30')
GO

SELECT CONVERT(DATETIME, '2024-11-12 14:30')
GO

SELECT CONVERT(DATETIME, '2024     -        3 -           12 14:30')
GO

SELECT CONVERT(DATETIME, '4.3.2 14:30')
GO

SELECT CONVERT(DATETIME, '4.3.12 14:30')
GO

SELECT CONVERT(DATETIME, '24.3.12 14:30')
GO

SELECT CONVERT(DATETIME, '2024.3.12 14:30')
GO

SELECT CONVERT(DATETIME, '2024.11.12 14:30')
GO

SELECT CONVERT(DATETIME, '2024     .        3 .           12 14:30')
GO

SELECT CONVERT(DATETIME, '4/3/2 14:30')
GO

SELECT CONVERT(DATETIME, '4/3/12 14:30')
GO

SELECT CONVERT(DATETIME, '24/3/12 14:30')
GO

SELECT CONVERT(DATETIME, '2024/3/12 14:30')
GO

SELECT CONVERT(DATETIME, '2024/11/12 14:30')
GO

SELECT CONVERT(DATETIME, '2024     /        3 /           12 14:30')
GO

-- combination of different seperator also works for DATETIME
SELECT CONVERT(DATETIME, '2024/11-12 14:30')
GO

SELECT CONVERT(DATETIME, '2024-11/12 14:30')
GO

SELECT CONVERT(DATETIME, '2024.11/12 14:30')
GO

SELECT CONVERT(DATETIME, '2024.11-12 14:30')
GO

-- invalid syntax
SELECT CONVERT(DATETIME, '3 12 2024')
GO

SELECT CONVERT(DATETIME, '3#12#2024')
GO

-- cut off year
SELECT CONVERT(DATETIME, '11-12-49')
GO

SELECT CONVERT(DATETIME, '11-12-50')
GO

-- Babelfish currently doesn't support setting DATEFORMAT, 
-- hence currently session language dateformat is used
SET DATEFORMAT 'MDY'
GO

SELECT CONVERT(DATETIME, '2-3-4')
GO

SELECT CONVERT(DATETIME, '03-22-2024')
GO

SET DATEFORMAT 'DMY'
GO

SELECT CONVERT(DATETIME, '2-3-4')
GO

SELECT CONVERT(DATETIME, '22-03-2024')
GO

SET DATEFORMAT 'YMD'
GO

SELECT CONVERT(DATETIME, '2-3-4')
GO

SELECT CONVERT(DATETIME, '2024-03-22')
GO

SET DATEFORMAT 'MYD'
GO

SELECT CONVERT(DATETIME, '2-3-4')
GO

SELECT CONVERT(DATETIME, '03-2024-22')
GO

SET DATEFORMAT 'DYM'
GO

SELECT CONVERT(DATETIME, '2-3-4')
GO

SELECT CONVERT(DATETIME, '22-2024-03')
GO

SET DATEFORMAT 'YDM'
GO

-- YDM DATE format is not supported when converting from this 
-- character string format to DATETIME, Hence following query should throw error
SELECT CONVERT(DATETIME, '2-3-4')
GO

-- For DATE as follows, it will always be treated as YMD DATEFORMAT as YDM is not supported.
SELECT CONVERT(DATETIME, '2024-22-03')
GO

-- SET DATEFORMAT back to default
SET DATEFORMAT 'MDY'
GO

-- Alphabetical
--- mon [dd][,] yyyy
SELECT CONVERT(DATETIME, 'Apr 12,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12 2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1 2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12 2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1 2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr,2000 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr2000 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'محرم  12,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم  12 2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم  1,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم  1 2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم ,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم  2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12 2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1 2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم ,2000  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 2000  14:30', 130)
GO

--- mon [d]d[,] [yy]
SELECT CONVERT(DATETIME, 'Apr 12, 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12, 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12, 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 12 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1, 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1, 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1, 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 1 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12, 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12, 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12, 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr12 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1, 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1 24 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1, 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1 4 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1, 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr1 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'محرم 12, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 12  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 1  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم12  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم1  14:30', 130)
GO

--- mon yyyy [dd]
SELECT CONVERT(DATETIME, 'Apr 2024 22 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 2024 2 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr2024 22 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr2024 2 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr2024 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'محرم 2024 22  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 2024 2  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم2024 22  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم2024 2  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم2024  14:30', 130)
GO

--- [dd] mon[,] yyyy
SELECT CONVERT(DATETIME, '24 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '24 Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME, '4 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '4 Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME, '24Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '24Apr2024 14:30')
GO

SELECT CONVERT(DATETIME, '4Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '4Apr2024 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, 'Apr2024 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format, 
-- also these styles only support DATEFORMAT DMY, hence following queries should 
SELECT CONVERT(DATETIME, N'24 محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'24 محرم 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'4 محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'4 محرم 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'24محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'24محرم2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'4محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'4محرم2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'محرم2024  14:30', 130)
GO

--- dd mon[,][yy]yy
SELECT CONVERT(DATETIME, '12 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr, 24 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr 24 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr, 4 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr 4 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr, 14:30')
GO

SELECT CONVERT(DATETIME, '12 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr2024 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr, 24 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr24 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr, 4 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr4 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr, 14:30')
GO

SELECT CONVERT(DATETIME, '12Apr 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format, 
-- also these styles only support DATEFORMAT DMY, hence following queries should work
SELECT CONVERT(DATETIME, N'12 محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم, 2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم2024  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم, 24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم24  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم, 4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم4  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم,  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12محرم  14:30', 130)
GO

--- dd [yy]yy mon
SELECT CONVERT(DATETIME, '12 2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '12 24 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '12 2024Apr 14:30')
GO

SELECT CONVERT(DATETIME, '12 24Apr 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'12 2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 24 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 2024محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 24محرم  14:30', 130)
GO

--- [dd] yyyy mon
SELECT CONVERT(DATETIME, '12 2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2 2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '12 2024Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2 2024Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024Apr 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'12 2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2 2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'12 2024محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2 2024محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024محرم  14:30', 130)
GO

--- yyyy mon [dd]
SELECT CONVERT(DATETIME, '2024 Apr 12 14:30')
GO

SELECT CONVERT(DATETIME, '2024 Apr 2 14:30')
GO

SELECT CONVERT(DATETIME, '2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024Apr12 14:30')
GO

SELECT CONVERT(DATETIME, '2024Apr2 14:30')
GO

SELECT CONVERT(DATETIME, '2024Apr 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'2024 محرم 12  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 محرم 2  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024محرم12  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024محرم2  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024محرم  14:30', 130)
GO

--- yyyy [dd] mon
SELECT CONVERT(DATETIME, '2024 12 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024 2 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024 12Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024 2Apr 14:30')
GO

SELECT CONVERT(DATETIME, '2024Apr 14:30')
GO

-- For styles 130 and 131, the month name will be in hijri format,
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATETIME, N'2024 12 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 2 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 12محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024 2محرم  14:30', 130)
GO

SELECT CONVERT(DATETIME, N'2024محرم  14:30', 130)
GO

-- ISO 8601
SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-1-22T13:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-2T13:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22T3:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:4:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:1.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.1')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.12')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.1234')
GO

SELECT CONVERT(DATETIME, '2022-10-22T13:34:12.15')
GO

-- -- spaces are not allowed between any two tokens for ISO 8601
SELECT CONVERT(DATETIME, '2022-10-22T13 :34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10 -22T13:34:12.123')
GO

SELECT CONVERT(DATETIME, '2022-10-22 T 13:34:12.123')
GO

-- Unseparated
SELECT CONVERT(DATETIME, '20240129')
GO

SELECT CONVERT(DATETIME, '20241329')
GO

SELECT CONVERT(DATETIME, '240129')
GO

SELECT CONVERT(DATETIME, '241329')
GO

SELECT CONVERT(DATETIME, '2001')
GO

SELECT CONVERT(DATETIME, '0001')
GO

SELECT CONVERT(DATETIME, '20240129 03:00:00')
GO

SELECT CONVERT(DATETIME, '20241329 03:00:00')
GO

SELECT CONVERT(DATETIME, '240129 03:00')
GO

SELECT CONVERT(DATETIME, '241329 03:00')
GO

SELECT CONVERT(DATETIME, '2001 03:00:00.123')
GO

SELECT CONVERT(DATETIME, '0001 03:00:00.421')
GO

-- -- invalid syntax
SELECT CONVERT(DATETIME, '0')
GO

SELECT CONVERT(DATETIME, '1')
GO

SELECT CONVERT(DATETIME, '11')
GO

SELECT CONVERT(DATETIME, '111')
GO

SELECT CONVERT(DATETIME, '11111')
GO

SELECT CONVERT(DATETIME, '1111111')
GO

-- should return default DATETIME
SELECT CONVERT(DATETIME, '16:23:51')
GO

SELECT CONVERT(DATETIME, '4:12:12:123')
GO

SELECT CONVERT(DATETIME, '4:12:12:1234')
GO

SELECT CONVERT(DATETIME, '4:12:12.1234')
GO

-- hijri
SELECT CONVERT(DATETIME, '20231229', 130)
GO

SELECT CONVERT(DATETIME, '20231230', 130)
GO

SELECT CONVERT(DATETIME, '20231129', 130)
GO

SELECT CONVERT(DATETIME, '20231130', 130)
GO

SELECT CONVERT(DATETIME, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATETIME, N'22 محرم 1440 1:39:17.090', 131)
GO

SELECT CONVERT(DATETIME, '22/12/1440 1:39:17.090PM', 130)
GO

SELECT CONVERT(DATETIME, '22/12/1440 1:39:17.090PM', 131)
GO

-- -- hijri leap year
SELECT CONVERT(DATETIME, '20241230', 130)
GO

-- rounding of DATETIME
SELECT CONVERT(DATETIME, '01/01/98 23:59:59.999')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.998')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.997')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.996')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.995')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.994')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.993')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.992')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.991')
GO

SELECT CONVERT(DATETIME, '01/01/98 23:59:59.990')
GO

-- DATETIME with typmod
SELECT CONVERT(DATETIME(1), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATETIME(2), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATETIME(3), '01/01/98 23:59:59.123')
GO

-- boundary tests
SELECT CONVERT(DATETIME, '9999-12-31 23:59:59.999')
GO

SELECT CONVERT(DATETIME, '9999-12-31 23:59:59.998')
GO

-- -- out of bound values
SELECT CONVERT(DATETIME,'2022-10-00 23:59:59.990')
GO

SELECT CONVERT(DATETIME,'0000-10-01 23:59:59.990')
GO

SELECT CONVERT(DATETIME,'2023-00-01 23:59:59.990')
GO

SELECT CONVERT(DATETIME,'0000-00-00 23:59:59.990')
GO

SELECT CONVERT(DATETIME,'1742-10-01 23:59:59.990')
GO

-- Different DATETIME formats with their corresponding styles
SELECT CONVERT(DATETIME, 'Apr 10 2021 11:12AM', 0)
GO

SELECT CONVERT(DATETIME, '02/12/21', 1)
GO

SELECT CONVERT(DATETIME, '21.02.12', 2)
GO

SELECT CONVERT(DATETIME, '12/02/21', 3)
GO

SELECT CONVERT(DATETIME, '12.02.21', 4)
GO

SELECT CONVERT(DATETIME, '12-02-21', 5)
GO

SELECT CONVERT(DATETIME, '12 Apr 21', 6)
GO

SELECT CONVERT(DATETIME, 'Apr 12, 21', 7)
GO

SELECT CONVERT(DATETIME, '10:13:14', 8)
GO

SELECT CONVERT(DATETIME, '10:13:14', 24)
GO

SELECT CONVERT(DATETIME, 'Apr 12 2021 10:13:14:123AM', 9)
GO

SELECT CONVERT(DATETIME, '02-12-21', 10)
GO

SELECT CONVERT(DATETIME, '21/02/12', 11)
GO

SELECT CONVERT(DATETIME, '210212', 12)
GO

SELECT CONVERT(DATETIME, '12 Apr 2021 15:13:14:123', 13)
GO

SELECT CONVERT(DATETIME, '15:13:14:123', 14)
GO

SELECT CONVERT(DATETIME, '2021-02-12 15:13:14', 20)
GO

SELECT CONVERT(DATETIME, '2021-02-12 15:13:14.123', 21)
GO

SELECT CONVERT(DATETIME, '02/12/21 15:13:14 PM', 22)
GO

SELECT CONVERT(DATETIME, '2021-02-12', 23)
GO

SELECT CONVERT(DATETIME, '2021-02-12 15:13:14.123', 25)
GO

SELECT CONVERT(DATETIME, 'Apr 10 2021 11:12AM', 100)
GO

SELECT CONVERT(DATETIME, '02/12/2021', 101)
GO

SELECT CONVERT(DATETIME, '2021.02.12', 102)
GO

SELECT CONVERT(DATETIME, '12/02/2021', 103)
GO

SELECT CONVERT(DATETIME, '12.02.2021', 104)
GO

SELECT CONVERT(DATETIME, '12-02-2021', 105)
GO

SELECT CONVERT(DATETIME, '12 Apr 2021', 106)
GO

SELECT CONVERT(DATETIME, 'Apr 12, 2021', 107)
GO

SELECT CONVERT(DATETIME, '10:13:14', 108)
GO

SELECT CONVERT(DATETIME, 'Apr 12 2021 10:13:14:123AM', 109)
GO

SELECT CONVERT(DATETIME, '02-12-2021', 110)
GO

SELECT CONVERT(DATETIME, '2021/02/12', 111)
GO

SELECT CONVERT(DATETIME, '20210212', 112)
GO

SELECT CONVERT(DATETIME, '12 Apr 2021 15:13:14:123', 113)
GO

SELECT CONVERT(DATETIME, '15:13:14:123', 114)
GO

SELECT CONVERT(DATETIME, '2021-02-12 15:13:14', 120)
GO

SELECT CONVERT(DATETIME, '2021-02-12 15:13:14.123', 121)
GO

SELECT CONVERT(DATETIME, '2021-02-12T15:13:14.123', 126)
GO

SELECT CONVERT(DATETIME, '2021-02-12T15:13:14.123', 127)
GO

SELECT CONVERT(DATETIME, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATETIME, '12/02/2021 15:13:14:123 PM', 131)
GO

--- misc
SELECT CONVERT(DATETIME,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATETIME, '2020')
GO

SELECT CONVERT(DATETIME, '2000-04-22 16:23:51.7668c0')
GO

SELECT CONVERT(DATETIME, '2001-04-022 16:23:51.766890 +12:00')
GO

SELECT CONVERT(DATETIME, '02001-04-22 16:23:51.766890 +12:00') 
GO 

SELECT CONVERT(DATETIME, ' 2001- 04 - 22 16: 23: 51. 766890 +12:00')
GO

SELECT CONVERT(DATETIME, '02001-04-22 16:23:51')
GO

SELECT CONVERT(DATETIME, '1900-05-06 13:59:29.050 -8:00')
GO

SELECT CONVERT(DATETIME, '2011-08-15 14:30.00')
GO

SELECT CONVERT(DATETIME,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATETIME, '2020')
GO

SELECT CONVERT(DATETIME, '2022-10-30T03:00:00')
GO

-- some commits are missing in 2_X_DEV causing unexpected output here
SELECT CONVERT(DATETIME, CONVERT(DATETIMEOFFSET,'2021-01-01 00:00:00.000 +12:00'))
GO

SELECT CONVERT(DATETIME, '2011-08-15 10:30.00 AMZ')
GO

SELECT CONVERT(DATETIME, '2011-08-15 10:30.00 PMZ')
GO

DECLARE @TM_ICLO TIME = '17:24:07.1766670'
SELECT CONVERT(DATETIME, @TM_ICLO)
GO

-- Dependent objects
SELECT * FROM test_conv_string_to_datetime_v1
GO
EXEC test_conv_string_to_datetime_p1
GO
SELECT test_conv_string_to_datetime_f1()
GO

SELECT * FROM test_conv_string_to_datetime_v2
GO
EXEC test_conv_string_to_datetime_p2
GO
SELECT test_conv_string_to_datetime_f2()
GO

SELECT * FROM test_conv_string_to_datetime_v3
GO
EXEC test_conv_string_to_datetime_p3
GO
SELECT test_conv_string_to_datetime_f3()
GO

SELECT * FROM test_conv_string_to_datetime_v4
GO
EXEC test_conv_string_to_datetime_p4
GO
SELECT test_conv_string_to_datetime_f4()
GO

SELECT * FROM test_conv_string_to_datetime_v5
GO
EXEC test_conv_string_to_datetime_p5
GO
SELECT test_conv_string_to_datetime_f5()
GO

SELECT * FROM test_conv_string_to_datetime_v6
GO
EXEC test_conv_string_to_datetime_p6
GO
SELECT test_conv_string_to_datetime_f6()
GO

SELECT * FROM test_conv_string_to_datetime_v7
GO
EXEC test_conv_string_to_datetime_p7
GO
SELECT test_conv_string_to_datetime_f7()
GO

SELECT * FROM test_conv_string_to_datetime_v8
GO
EXEC test_conv_string_to_datetime_p8
GO
SELECT test_conv_string_to_datetime_f8()
GO
