-- Only DATE string
-- Empty string, should return default values
SELECT CONVERT(DATE, '')
GO

SELECT CONVERT(DATE, '', 130)
GO

-- -- Numeric: 
-- 1 or 2 digit number in a given datetime string literal is considered as either 
-- day, month or year based on session dateformat value.
-- [m]m<seperator>[d]d<seperator>([y]y|yyyy)
SELECT CONVERT(DATE, '3-2-4')
GO

SELECT CONVERT(DATE, '3-12-4')
GO

SELECT CONVERT(DATE, '3-12-24')
GO

SELECT CONVERT(DATE, '3-12-2024')
GO

SELECT CONVERT(DATE, '11-12-2024')
GO

SELECT CONVERT(DATE, '3     -        12 -           2024')
GO

SELECT CONVERT(DATE, '3.2.4')
GO

SELECT CONVERT(DATE, '3.12.4')
GO

SELECT CONVERT(DATE, '3.12.24')
GO

SELECT CONVERT(DATE, '3.12.2024')
GO

SELECT CONVERT(DATE, '11.12.2024')
GO

SELECT CONVERT(DATE, '3     .        12 .           2024')
GO

SELECT CONVERT(DATE, '3/2/4')
GO

SELECT CONVERT(DATE, '3/12/4')
GO

SELECT CONVERT(DATE, '3/12/24')
GO

SELECT CONVERT(DATE, '3/12/2024')
GO

SELECT CONVERT(DATE, '11/12/2024')
GO

SELECT CONVERT(DATE, '3     /        12 /           2024')
GO

-- [m]m<seperator>([y]y|yyyy)<seperator>[d]d
SELECT CONVERT(DATE, '3-4-2')
GO

SELECT CONVERT(DATE, '3-4-12')
GO

SELECT CONVERT(DATE, '3-24-12')
GO

SELECT CONVERT(DATE, '3-2024-12')
GO

SELECT CONVERT(DATE, '11-2024-12')
GO

SELECT CONVERT(DATE, '3 -           2024     -        12')
GO

SELECT CONVERT(DATE, '3.4.2')
GO

SELECT CONVERT(DATE, '3.4.12')
GO

SELECT CONVERT(DATE, '3.24.12')
GO

SELECT CONVERT(DATE, '3.2024.12')
GO

SELECT CONVERT(DATE, '11.2024.12')
GO

SELECT CONVERT(DATE, '3 .           2024     .        12')
GO

SELECT CONVERT(DATE, '3/4/2')
GO

SELECT CONVERT(DATE, '3/4/12')
GO

SELECT CONVERT(DATE, '3/24/12')
GO

SELECT CONVERT(DATE, '3/2024/12')
GO

SELECT CONVERT(DATE, '11/2024/12')
GO

SELECT CONVERT(DATE, '3 /           2024     /        12')
GO

-- [d]d<seperator>[m]m<seperator>([y]y|yyyy)
SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '12-3-4')
GO

SELECT CONVERT(DATE, '12-3-24')
GO

SELECT CONVERT(DATE, '12-3-2024')
GO

SELECT CONVERT(DATE, '12-11-2024')
GO

SELECT CONVERT(DATE, '12 -           3     -        2024')
GO

SELECT CONVERT(DATE, '2.3.4')
GO

SELECT CONVERT(DATE, '12.3.4')
GO

SELECT CONVERT(DATE, '12.3.24')
GO

SELECT CONVERT(DATE, '12.3.2024')
GO

SELECT CONVERT(DATE, '12.11.2024')
GO

SELECT CONVERT(DATE, '12 .           3     .        2024')
GO

SELECT CONVERT(DATE, '2/3/4')
GO

SELECT CONVERT(DATE, '12/3/4')
GO

SELECT CONVERT(DATE, '12/3/24')
GO

SELECT CONVERT(DATE, '12/3/2024')
GO

SELECT CONVERT(DATE, '12/11/2024')
GO

SELECT CONVERT(DATE, '12 /           3     /        2024')
GO

-- [d]d<seperator>([y]y|yyyy)<seperator>[m]m
SELECT CONVERT(DATE, '2-4-3')
GO

SELECT CONVERT(DATE, '12-4-3')
GO

SELECT CONVERT(DATE, '12-24-3')
GO

SELECT CONVERT(DATE, '12-2024-3')
GO

SELECT CONVERT(DATE, '12-2024-11')
GO

SELECT CONVERT(DATE, '12     -        2024 -           3')
GO

SELECT CONVERT(DATE, '2.4.3')
GO

SELECT CONVERT(DATE, '12.4.3')
GO

SELECT CONVERT(DATE, '12.24.3')
GO

SELECT CONVERT(DATE, '12.2024.3')
GO

SELECT CONVERT(DATE, '12.2024.11')
GO

SELECT CONVERT(DATE, '12     .        2024 .           3')
GO

SELECT CONVERT(DATE, '2/4/3')
GO

SELECT CONVERT(DATE, '12/4/3')
GO

SELECT CONVERT(DATE, '12/24/3')
GO

SELECT CONVERT(DATE, '12/2024/3')
GO

SELECT CONVERT(DATE, '12/2024/11')
GO

SELECT CONVERT(DATE, '12     /        2024 /           3')
GO

-- ([y]y|yyyy)<seperator>[m]m<seperator>[d]d
SELECT CONVERT(DATE, '4-3-2')
GO

SELECT CONVERT(DATE, '4-3-12')
GO

SELECT CONVERT(DATE, '24-3-12')
GO

SELECT CONVERT(DATE, '2024-3-12')
GO

SELECT CONVERT(DATE, '2024-11-12')
GO

SELECT CONVERT(DATE, '2024     -        3 -           12')
GO

SELECT CONVERT(DATE, '4.3.2')
GO

SELECT CONVERT(DATE, '4.3.12')
GO

SELECT CONVERT(DATE, '24.3.12')
GO

SELECT CONVERT(DATE, '2024.3.12')
GO

SELECT CONVERT(DATE, '2024.11.12')
GO

SELECT CONVERT(DATE, '2024     .        3 .           12')
GO

SELECT CONVERT(DATE, '4/3/2')
GO

SELECT CONVERT(DATE, '4/3/12')
GO

SELECT CONVERT(DATE, '24/3/12')
GO

SELECT CONVERT(DATE, '2024/3/12')
GO

SELECT CONVERT(DATE, '2024/11/12')
GO

SELECT CONVERT(DATE, '2024     /        3 /           12')
GO

-- invalid syntax
SELECT CONVERT(DATE, '3 12 2024')
GO

SELECT CONVERT(DATE, '3#12#2024')
GO

SELECT CONVERT(DATE, '3/12.2024')
GO

-- cut off year
SELECT CONVERT(DATE, '11-12-49')
GO

SELECT CONVERT(DATE, '11-12-50')
GO

-- Babelfish currently doesn't support setting DATEFORMAT, 
-- hence currently session language dateformat is used
SET DATEFORMAT 'MDY'
GO

SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '03-22-2024')
GO

SET DATEFORMAT 'DMY'
GO

SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '22-03-2024')
GO

SET DATEFORMAT 'YMD'
GO

SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '2024-03-22')
GO

SET DATEFORMAT 'MYD'
GO

SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '03-2024-22')
GO

SET DATEFORMAT 'DYM'
GO

SELECT CONVERT(DATE, '2-3-4')
GO

SELECT CONVERT(DATE, '22-2024-03')
GO

SET DATEFORMAT 'YDM'
GO

-- YDM DATE format is not supported when converting from this 
-- character string format to DATE, Hence following query should throw error
SELECT CONVERT(DATE, '2-3-4')
GO

-- For DATE as follows, it will always be treated as YMD DATEFORMAT as YDM is not supported.
SELECT CONVERT(DATE, '2024-22-03')
GO

-- SET DATEFORMAT back to default
SET DATEFORMAT 'MDY'
GO

-- -- Boundary values
SELECT CONVERT(DATE, '9999-12-30 23:59:59.9999999')
GO

SELECT CONVERT(DATE, '9999-12-30 23:59:59.99999999')
GO

SELECT CONVERT(DATE, '9999-12-30 23:59:59.999999999')
GO

SELECT CONVERT(DATE, '9999-12-30 23:59:59.9999999999')
GO

SELECT CONVERT(DATE, '9999-12-31 23:59:59.9999999')
GO

SELECT CONVERT(DATE, '9999-12-31 23:59:59.99999999')
GO

SELECT CONVERT(DATE, '9999-12-31 23:59:59.999999999')
GO

SELECT CONVERT(DATE, '9999-12-31 23:59:59.9999999999')
GO

SELECT CONVERT(DATE,'2022-10-00')
GO

SELECT CONVERT(DATE,'0000-10-01')
GO

SELECT CONVERT(DATE,'2023-00-01')
GO

SELECT CONVERT(DATE,'0000-00-00')
GO

SELECT CONVERT(DATE,'1752-01-01')
GO

SELECT CONVERT(DATE,'1753-01-01')
GO

SELECT CONVERT(DATE,'1899-01-01')
GO

SELECT CONVERT(DATE,'1900-01-01')
GO

SELECT CONVERT(DATE,'2079-06-06')
GO

SELECT CONVERT(DATE,'2079-06-07')
GO

-- Alphabetical
--- mon [dd][,] yyyy
SELECT CONVERT(DATE, 'Apr 12,2000')
GO

SELECT CONVERT(DATE, 'Apr 12 2000')
GO

SELECT CONVERT(DATE, 'Apr 1,2000')
GO

SELECT CONVERT(DATE, 'Apr 1 2000')
GO

SELECT CONVERT(DATE, 'Apr,2000')
GO

SELECT CONVERT(DATE, 'Apr 2000')
GO

SELECT CONVERT(DATE, 'Apr12,2000')
GO

SELECT CONVERT(DATE, 'Apr12 2000')
GO

SELECT CONVERT(DATE, 'Apr1,2000')
GO

SELECT CONVERT(DATE, 'Apr1 2000')
GO

SELECT CONVERT(DATE, 'Apr,2000')
GO

SELECT CONVERT(DATE, 'Apr2000')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'محرم  12,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم  12 2000', 130)
GO

SELECT CONVERT(DATE, N'محرم  1,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم  1 2000', 130)
GO

SELECT CONVERT(DATE, N'محرم ,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم  2000', 130)
GO

SELECT CONVERT(DATE, N'محرم 12,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم 12 2000', 130)
GO

SELECT CONVERT(DATE, N'محرم 1,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم 1 2000', 130)
GO

SELECT CONVERT(DATE, N'محرم ,2000', 130)
GO

SELECT CONVERT(DATE, N'محرم 2000', 130)
GO

--- mon [d]d[,] [yy]
SELECT CONVERT(DATE, 'Apr 12, 24')
GO

SELECT CONVERT(DATE, 'Apr 12 24')
GO

SELECT CONVERT(DATE, 'Apr 12, 4')
GO

SELECT CONVERT(DATE, 'Apr 12 4')
GO

SELECT CONVERT(DATE, 'Apr 12,')
GO

SELECT CONVERT(DATE, 'Apr 12')
GO

SELECT CONVERT(DATE, 'Apr 1, 24')
GO

SELECT CONVERT(DATE, 'Apr 1 24')
GO

SELECT CONVERT(DATE, 'Apr 1, 4')
GO

SELECT CONVERT(DATE, 'Apr 1 4')
GO

SELECT CONVERT(DATE, 'Apr 1,')
GO

SELECT CONVERT(DATE, 'Apr 1')
GO

SELECT CONVERT(DATE, 'Apr12, 24')
GO

SELECT CONVERT(DATE, 'Apr12 24')
GO

SELECT CONVERT(DATE, 'Apr12, 4')
GO

SELECT CONVERT(DATE, 'Apr12 4')
GO

SELECT CONVERT(DATE, 'Apr12,')
GO

SELECT CONVERT(DATE, 'Apr12')
GO

SELECT CONVERT(DATE, 'Apr1, 24')
GO

SELECT CONVERT(DATE, 'Apr1 24')
GO

SELECT CONVERT(DATE, 'Apr1, 4')
GO

SELECT CONVERT(DATE, 'Apr1 4')
GO

SELECT CONVERT(DATE, 'Apr1,')
GO

SELECT CONVERT(DATE, 'Apr1')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'محرم 12, 24', 130)
GO

SELECT CONVERT(DATE, N'محرم 12 24', 130)
GO

SELECT CONVERT(DATE, N'محرم 12, 4', 130)
GO

SELECT CONVERT(DATE, N'محرم 12 4', 130)
GO

SELECT CONVERT(DATE, N'محرم 12,', 130)
GO

SELECT CONVERT(DATE, N'محرم 12', 130)
GO

SELECT CONVERT(DATE, N'محرم 1, 24', 130)
GO

SELECT CONVERT(DATE, N'محرم 1 24', 130)
GO

SELECT CONVERT(DATE, N'محرم 1, 4', 130)
GO

SELECT CONVERT(DATE, N'محرم 1 4', 130)
GO

SELECT CONVERT(DATE, N'محرم 1,', 130)
GO

SELECT CONVERT(DATE, N'محرم 1', 130)
GO

SELECT CONVERT(DATE, N'محرم12, 24', 130)
GO

SELECT CONVERT(DATE, N'محرم12 24', 130)
GO

SELECT CONVERT(DATE, N'محرم12, 4', 130)
GO

SELECT CONVERT(DATE, N'محرم12 4', 130)
GO

SELECT CONVERT(DATE, N'محرم12,', 130)
GO

SELECT CONVERT(DATE, N'محرم12', 130)
GO

SELECT CONVERT(DATE, N'محرم1, 24', 130)
GO

SELECT CONVERT(DATE, N'محرم1 24', 130)
GO

SELECT CONVERT(DATE, N'محرم1, 4', 130)
GO

SELECT CONVERT(DATE, N'محرم1 4', 130)
GO

SELECT CONVERT(DATE, N'محرم1,', 130)
GO

SELECT CONVERT(DATE, N'محرم1', 130)
GO

--- mon yyyy [dd]
SELECT CONVERT(DATE, 'Apr 2024 22')
GO

SELECT CONVERT(DATE, 'Apr 2024 2')
GO

SELECT CONVERT(DATE, 'Apr 2024')
GO

SELECT CONVERT(DATE, 'Apr2024 22')
GO

SELECT CONVERT(DATE, 'Apr2024 2')
GO

SELECT CONVERT(DATE, 'Apr2024')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'محرم 2024 22', 130)
GO

SELECT CONVERT(DATE, N'محرم 2024 2', 130)
GO

SELECT CONVERT(DATE, N'محرم 2024', 130)
GO

SELECT CONVERT(DATE, N'محرم2024 22', 130)
GO

SELECT CONVERT(DATE, N'محرم2024 2', 130)
GO

SELECT CONVERT(DATE, N'محرم2024', 130)
GO

--- [dd] mon[,] yyyy
SELECT CONVERT(DATE, '24 Apr, 2024')
GO

SELECT CONVERT(DATE, '24 Apr 2024')
GO

SELECT CONVERT(DATE, '4 Apr, 2024')
GO

SELECT CONVERT(DATE, '4 Apr 2024')
GO

SELECT CONVERT(DATE, 'Apr, 2024')
GO

SELECT CONVERT(DATE, 'Apr 2024')
GO

SELECT CONVERT(DATE, '24Apr, 2024')
GO

SELECT CONVERT(DATE, '24Apr2024')
GO

SELECT CONVERT(DATE, '4Apr, 2024')
GO

SELECT CONVERT(DATE, '4Apr2024')
GO

SELECT CONVERT(DATE, 'Apr, 2024')
GO

SELECT CONVERT(DATE, 'Apr2024')
GO

-- For styles 130 and 131, the month name will be in hijri format, 
-- also these styles only support DATEFORMAT DMY, hence following queries should 
SELECT CONVERT(DATE, N'24 محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'24 محرم 2024', 130)
GO

SELECT CONVERT(DATE, N'4 محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'4 محرم 2024', 130)
GO

SELECT CONVERT(DATE, N'محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'محرم 2024', 130)
GO

SELECT CONVERT(DATE, N'24محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'24محرم2024', 130)
GO

SELECT CONVERT(DATE, N'4محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'4محرم2024', 130)
GO

SELECT CONVERT(DATE, N'محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'محرم2024', 130)
GO

--- dd mon[,][yy]yy
SELECT CONVERT(DATE, '12 Apr, 2024')
GO

SELECT CONVERT(DATE, '12 Apr 2024')
GO

SELECT CONVERT(DATE, '12 Apr, 24')
GO

SELECT CONVERT(DATE, '12 Apr 24')
GO

SELECT CONVERT(DATE, '12 Apr, 4')
GO

SELECT CONVERT(DATE, '12 Apr 4')
GO

SELECT CONVERT(DATE, '12 Apr,')
GO

SELECT CONVERT(DATE, '12 Apr')
GO

SELECT CONVERT(DATE, '12Apr, 2024')
GO

SELECT CONVERT(DATE, '12Apr2024')
GO

SELECT CONVERT(DATE, '12Apr, 24')
GO

SELECT CONVERT(DATE, '12Apr24')
GO

SELECT CONVERT(DATE, '12Apr, 4')
GO

SELECT CONVERT(DATE, '12Apr4')
GO

SELECT CONVERT(DATE, '12Apr,')
GO

SELECT CONVERT(DATE, '12Apr')
GO

-- For styles 130 and 131, the month name will be in hijri format, 
-- also these styles only support DATEFORMAT DMY, hence following queries should work
SELECT CONVERT(DATE, N'12 محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'12 محرم 2024', 130)
GO

SELECT CONVERT(DATE, N'12 محرم, 24', 130)
GO

SELECT CONVERT(DATE, N'12 محرم 24', 130)
GO

SELECT CONVERT(DATE, N'12 محرم, 4', 130)
GO

SELECT CONVERT(DATE, N'12 محرم 4', 130)
GO

SELECT CONVERT(DATE, N'12 محرم,', 130)
GO

SELECT CONVERT(DATE, N'12 محرم', 130)
GO

SELECT CONVERT(DATE, N'12محرم, 2024', 130)
GO

SELECT CONVERT(DATE, N'12محرم2024', 130)
GO

SELECT CONVERT(DATE, N'12محرم, 24', 130)
GO

SELECT CONVERT(DATE, N'12محرم24', 130)
GO

SELECT CONVERT(DATE, N'12محرم, 4', 130)
GO

SELECT CONVERT(DATE, N'12محرم4', 130)
GO

SELECT CONVERT(DATE, N'12محرم,', 130)
GO

SELECT CONVERT(DATE, N'12محرم', 130)
GO

--- dd [yy]yy mon
SELECT CONVERT(DATE, '12 2024 Apr')
GO

SELECT CONVERT(DATE, '12 24 Apr')
GO

SELECT CONVERT(DATE, '12 2024Apr')
GO

SELECT CONVERT(DATE, '12 24Apr')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'12 2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'12 24 محرم', 130)
GO

SELECT CONVERT(DATE, N'12 2024محرم', 130)
GO

SELECT CONVERT(DATE, N'12 24محرم', 130)
GO

--- [dd] yyyy mon
SELECT CONVERT(DATE, '12 2024 Apr')
GO

SELECT CONVERT(DATE, '2 2024 Apr')
GO

SELECT CONVERT(DATE, '2024 Apr')
GO

SELECT CONVERT(DATE, '12 2024Apr')
GO

SELECT CONVERT(DATE, '2 2024Apr')
GO

SELECT CONVERT(DATE, '2024Apr')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'12 2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'2 2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'12 2024محرم', 130)
GO

SELECT CONVERT(DATE, N'2 2024محرم', 130)
GO

SELECT CONVERT(DATE, N'2024محرم', 130)
GO

--- yyyy mon [dd]
SELECT CONVERT(DATE, '2024 Apr 12')
GO

SELECT CONVERT(DATE, '2024 Apr 2')
GO

SELECT CONVERT(DATE, '2024 Apr')
GO

SELECT CONVERT(DATE, '2024Apr12')
GO

SELECT CONVERT(DATE, '2024Apr2')
GO

SELECT CONVERT(DATE, '2024Apr')
GO

-- For styles 130 and 131, the month name will be in hijri format
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'2024 محرم 12', 130)
GO

SELECT CONVERT(DATE, N'2024 محرم 2', 130)
GO

SELECT CONVERT(DATE, N'2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'2024محرم12', 130)
GO

SELECT CONVERT(DATE, N'2024محرم2', 130)
GO

SELECT CONVERT(DATE, N'2024محرم', 130)
GO

--- yyyy [dd] mon
SELECT CONVERT(DATE, '2024 12 Apr')
GO

SELECT CONVERT(DATE, '2024 2 Apr')
GO

SELECT CONVERT(DATE, '2024 Apr')
GO

SELECT CONVERT(DATE, '2024 12Apr')
GO

SELECT CONVERT(DATE, '2024 2Apr')
GO

SELECT CONVERT(DATE, '2024Apr')
GO

-- For styles 130 and 131, the month name will be in hijri format,
-- this is only applicable for datetime and smalldatetime, for other datatypes error will be thrown
SELECT CONVERT(DATE, N'2024 12 محرم', 130)
GO

SELECT CONVERT(DATE, N'2024 2 محرم', 130)
GO

SELECT CONVERT(DATE, N'2024 محرم', 130)
GO

SELECT CONVERT(DATE, N'2024 12محرم', 130)
GO

SELECT CONVERT(DATE, N'2024 2محرم', 130)
GO

SELECT CONVERT(DATE, N'2024محرم', 130)
GO

-- ISO 8601
SELECT CONVERT(DATE, '2023-11-27')
GO

SELECT CONVERT(DATE, '2023-2-29')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-1-22T13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-2T13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22T3:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22T13:4:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:1.123')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.1')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.12')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.1234')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.12345')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123456')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.1234567')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.12345678')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123456789')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.1234567891')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.15')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123-11:11')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123Z')
GO

-- -- spaces are not allowed between any two tokens for ISO 8601
SELECT CONVERT(DATE, '2022-10-22T13 :34:12.123')
GO

SELECT CONVERT(DATE, '2022-10 -22T13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22 T 13:34:12.123')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123 Z')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.123 -11:11')
GO

-- -- rounding
SELECT CONVERT(DATE, '2022-10-22T13:34:12.99999995')
GO

SELECT CONVERT(DATE, '2022-10-22T13:34:12.99999994')
GO

-- DATE with typmod
SELECT CONVERT(DATE(1), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATE(2), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATE(3), '01/01/98 23:59:59.123')
GO

-- Unseparated
SELECT CONVERT(DATE, '20240129')
GO

SELECT CONVERT(DATE, '20790606')
GO

SELECT CONVERT(DATE, '20790607')
GO

SELECT CONVERT(DATE, '240129')
GO

SELECT CONVERT(DATE, '241329')
GO

SELECT CONVERT(DATE, '2001')
GO

SELECT CONVERT(DATE, '0001')
GO

SELECT CONVERT(DATE, '1753')
GO

SELECT CONVERT(DATE, '1900')
GO

-- for styles 130 and 131, the DATE ranges (for example, number of days in a month) are different compared to other styles 
SELECT CONVERT(DATE, '20231229', 130)
GO

SELECT CONVERT(DATE, '20231230', 130)
GO

SELECT CONVERT(DATE, '20231129', 130)
GO

SELECT CONVERT(DATE, '20231130', 130)
GO

SELECT CONVERT(DATE, '20231229', 131)
GO

SELECT CONVERT(DATE, '20231230', 131)
GO

SELECT CONVERT(DATE, '20231129', 131)
GO

SELECT CONVERT(DATE, '20231130', 131)
GO

-- -- hijri leap year only contains 29 days in 12th month (for style 130 and 131)
SELECT CONVERT(DATE, '20241230', 130)
GO

SELECT CONVERT(DATE, '20241230', 131)
GO

SELECT CONVERT(DATE, '20241229', 130)
GO

SELECT CONVERT(DATE, '20241229', 131)
GO

-- -- invalid syntax
SELECT CONVERT(DATE, '0')
GO

SELECT CONVERT(DATE, '1')
GO

SELECT CONVERT(DATE, '11')
GO

SELECT CONVERT(DATE, '111')
GO

SELECT CONVERT(DATE, '11111')
GO

SELECT CONVERT(DATE, '1111111')
GO

-- W3C XML format
SELECT CONVERT(DATE, '2024-04-22-05:12')
GO

SELECT CONVERT(DATE, '2024-04-22+05:12')
GO

SELECT CONVERT(DATE, '2024-04-22-14:00')
GO

SELECT CONVERT(DATE, '2024-04-22+14:00')
GO

SELECT CONVERT(DATE, '2024-04-22-14:10')
GO

SELECT CONVERT(DATE, '2024-04-22+14:10')
GO

SELECT CONVERT(DATE, '2024-04-22Z')
GO

SELECT CONVERT(DATE, '24-04-22Z')
GO

SELECT CONVERT(DATE, '2024-4-22Z')
GO

SELECT CONVERT(DATE, '2024-04-2Z')
GO

-- hijri
-- month in hijri is only supported for conversion to datetime and smalldatetime
SELECT CONVERT(DATE, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATE, N'22 محرم 1440 1:39:17.090', 131)
GO

SELECT CONVERT(DATE, '22/12/1440 1:39:17.090PM', 130)
GO

SELECT CONVERT(DATE, '22/12/1440 1:39:17.090PM', 131)
GO

-- Different DATETIME formats with their corresponding styles
SELECT CONVERT(DATE, 'Apr 10 2021 11:12AM', 0)
GO

SELECT CONVERT(DATE, '02/12/21', 1)
GO

SELECT CONVERT(DATE, '21.02.12', 2)
GO

SELECT CONVERT(DATE, '12/02/21', 3)
GO

SELECT CONVERT(DATE, '12.02.21', 4)
GO

SELECT CONVERT(DATE, '12-02-21', 5)
GO

SELECT CONVERT(DATE, '12 Apr 21', 6)
GO

SELECT CONVERT(DATE, 'Apr 12, 21', 7)
GO

SELECT CONVERT(DATE, '10:13:14', 8)
GO

SELECT CONVERT(DATE, '10:13:14', 24)
GO

SELECT CONVERT(DATE, 'Apr 12 2021 10:13:14:123AM', 9)
GO

SELECT CONVERT(DATE, '02-12-21', 10)
GO

SELECT CONVERT(DATE, '21/02/12', 11)
GO

SELECT CONVERT(DATE, '210212', 12)
GO

SELECT CONVERT(DATE, '12 Apr 2021 15:13:14:123', 13)
GO

SELECT CONVERT(DATE, '15:13:14:123', 14)
GO

SELECT CONVERT(DATE, '2021-02-12 15:13:14', 20)
GO

SELECT CONVERT(DATE, '2021-02-12 15:13:14.123', 21)
GO

SELECT CONVERT(DATE, '02/12/21 15:13:14 PM', 22)
GO

SELECT CONVERT(DATE, '2021-02-12', 23)
GO

SELECT CONVERT(DATE, '2021-02-12 15:13:14.123', 25)
GO

SELECT CONVERT(DATE, 'Apr 10 2021 11:12AM', 100)
GO

SELECT CONVERT(DATE, '02/12/2021', 101)
GO

SELECT CONVERT(DATE, '2021.02.12', 102)
GO

SELECT CONVERT(DATE, '12/02/2021', 103)
GO

SELECT CONVERT(DATE, '12.02.2021', 104)
GO

SELECT CONVERT(DATE, '12-02-2021', 105)
GO

SELECT CONVERT(DATE, '12 Apr 2021', 106)
GO

SELECT CONVERT(DATE, 'Apr 12, 2021', 107)
GO

SELECT CONVERT(DATE, '10:13:14', 108)
GO

SELECT CONVERT(DATE, 'Apr 12 2021 10:13:14:123AM', 109)
GO

SELECT CONVERT(DATE, '02-12-2021', 110)
GO

SELECT CONVERT(DATE, '2021/02/12', 111)
GO

SELECT CONVERT(DATE, '20210212', 112)
GO

SELECT CONVERT(DATE, '12 Apr 2021 15:13:14:123', 113)
GO

SELECT CONVERT(DATE, '15:13:14:123', 114)
GO

SELECT CONVERT(DATE, '2021-02-12 15:13:14', 120)
GO

SELECT CONVERT(DATE, '2021-02-12 15:13:14.123', 121)
GO

SELECT CONVERT(DATE, '2021-02-12T15:13:14.123', 126)
GO

SELECT CONVERT(DATE, '2021-02-12T15:13:14.123', 127)
GO

-- month in hijri is only supported for conversion to datetime and smalldatetime
SELECT CONVERT(DATE, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATE, N'22 April 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATE, '12/02/2021 15:13:14:123 PM', 131)
GO

-- -- misc
SELECT CONVERT(DATE,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATE, '2020')
GO

SELECT CONVERT(DATE, '2000-04-22 16:23:51.7668c0')
GO

SELECT CONVERT(DATE, '2001-04-022 16:23:51.766890 +12:00')
GO

SELECT CONVERT(DATE, '02001-04-22 16:23:51.766890 +12:00') 
GO 

SELECT CONVERT(DATE, ' 2001- 04 - 22 16: 23: 51. 766890 +12:00')
GO

SELECT CONVERT(DATE, '02001-04-22 16:23:51')
GO

SELECT CONVERT(DATE, '1900-05-06 13:59:29.050 -8:00')
GO

SELECT CONVERT(DATE, '2011-08-15 14:30.00')
GO

SELECT CONVERT(DATE,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATE, '2020')
GO

SELECT CONVERT(DATE, '2022-10-30T03:00:00')
GO

-- some commits are missing in 2_X_DEV causing unexpected output here
SELECT CONVERT(DATE, CONVERT(DATETIMEOFFSET,'2021-01-01 00:00:00.000 +12:00'))
GO

SELECT CONVERT(DATE, '2011-08-15 10:30.00 AMZ')
GO

SELECT CONVERT(DATE, '2011-08-15 10:30.00 PMZ')
GO

DECLARE @TM_ICLO TIME = '17:24:07.1766670'
SELECT CONVERT(DATE, @TM_ICLO)
GO

-- Dependent objects
SELECT * FROM test_conv_string_to_date_v1
GO
EXEC test_conv_string_to_date_p1
GO
SELECT test_conv_string_to_date_f1()
GO

SELECT * FROM test_conv_string_to_date_v2
GO
EXEC test_conv_string_to_date_p2
GO
SELECT test_conv_string_to_date_f2()
GO

SELECT * FROM test_conv_string_to_date_v3
GO
EXEC test_conv_string_to_date_p3
GO
SELECT test_conv_string_to_date_f3()
GO

SELECT * FROM test_conv_string_to_date_v4
GO
EXEC test_conv_string_to_date_p4
GO
SELECT test_conv_string_to_date_f4()
GO

SELECT * FROM test_conv_string_to_date_v5
GO
EXEC test_conv_string_to_date_p5
GO
SELECT test_conv_string_to_date_f5()
GO

SELECT * FROM test_conv_string_to_date_v6
GO
EXEC test_conv_string_to_date_p6
GO
SELECT test_conv_string_to_date_f6()
GO

SELECT * FROM test_conv_string_to_date_v7
GO
EXEC test_conv_string_to_date_p7
GO
SELECT test_conv_string_to_date_f7()
GO

SELECT * FROM test_conv_string_to_date_v8
GO
EXEC test_conv_string_to_date_p8
GO
SELECT test_conv_string_to_date_f8()
GO

SELECT * FROM test_conv_string_to_date_v9
GO
EXEC test_conv_string_to_date_p9
GO
SELECT test_conv_string_to_date_f9()
GO

SELECT * FROM test_conv_string_to_date_v10
GO

SELECT * FROM test_conv_string_to_date_v11
GO

SELECT * FROM test_conv_string_to_date_v12
GO
