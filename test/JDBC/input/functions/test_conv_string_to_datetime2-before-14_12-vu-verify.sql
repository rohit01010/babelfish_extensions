-- Empty string, should return default values
SELECT CONVERT(DATETIME2, '')
GO

SELECT CONVERT(DATETIME2, '', 130)
GO

-- -- Numeric
SELECT CONVERT(DATETIME2, '3-2-4 14:30')
GO

SELECT CONVERT(DATETIME2, '3-12-4 14:30')
GO

SELECT CONVERT(DATETIME2, '3-12-24 14:30')
GO

SELECT CONVERT(DATETIME2, '3-12-2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3     -        12 -           2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3.2.4 14:30')
GO

SELECT CONVERT(DATETIME2, '3.12.4 14:30')
GO

SELECT CONVERT(DATETIME2, '3.12.24 14:30')
GO

SELECT CONVERT(DATETIME2, '3.12.2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3     .        12 .           2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3/2/4 14:30')
GO

SELECT CONVERT(DATETIME2, '3/12/4 14:30')
GO

SELECT CONVERT(DATETIME2, '3/12/24 14:30')
GO

SELECT CONVERT(DATETIME2, '3/12/2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3     /        12 /           2024 14:30')
GO

SELECT CONVERT(DATETIME2, '04-02-03 14:30')
GO

-- invalid syntax
SELECT CONVERT(DATETIME2, '3 12 2024')
GO

SELECT CONVERT(DATETIME2, '3#12#2024')
GO

SELECT CONVERT(DATETIME2, '3/12.2024')
GO

-- Alphabetical
SELECT CONVERT(DATETIME2, 'Apr 12,2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 12 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 1 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 1,2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 16, 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 1, 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'April 16, 2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'April 16  2000 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 16, 24 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 16,4 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 1,4 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 16    24 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 16 4 14:30')
GO

SELECT CONVERT(DATETIME2, 'April 16 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2024 22 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2024 2 14:30')
GO

SELECT CONVERT(DATETIME2, '24 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3 Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3Apr2024 14:30')
GO

SELECT CONVERT(DATETIME2, '3Apr24 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr24 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr,24 14:30')
GO

SELECT CONVERT(DATETIME2, '24 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '12 24 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '12 2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 12 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 9 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 Apr 12 14:30')
GO

SELECT CONVERT(DATETIME2, '12, Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '12 Apr, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '12, Apr 2024 14:30')
GO

SELECT CONVERT(DATETIME2, '2024, Apr, 12 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 Apr, 12 14:30')
GO

SELECT CONVERT(DATETIME2, '2024, Apr 12 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr, 12, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 12, 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr, 12 2024 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr, 2024, 12 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr 2024, 12 14:30')
GO

SELECT CONVERT(DATETIME2, 'Apr, 2024 12 14:30')
GO

SELECT CONVERT(DATETIME2, '12, 2024, Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '12 2024, Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '12, 2024 Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024, 12, Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024 12, Apr 14:30')
GO

SELECT CONVERT(DATETIME2, '2024, 12 Apr 14:30')
GO

-- ISO 8601	
SELECT CONVERT(DATETIME2, '2023-11-27')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00.123')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00.123-12:12')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00.123+12:12')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00')
GO

SELECT CONVERT(DATETIME2, '2022-10 -30T03: 00:00')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00.12345')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00:123')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00:12345')
GO

-- Unseparated
SELECT CONVERT(DATETIME2, '20240129')
GO

SELECT CONVERT(DATETIME2, '20241329')
GO

SELECT CONVERT(DATETIME2, '240129')
GO

SELECT CONVERT(DATETIME2, '241329')
GO

SELECT CONVERT(DATETIME2, '2001')
GO

SELECT CONVERT(DATETIME2, '0001')
GO

SELECT CONVERT(DATETIME2, '20240129 03:00:00')
GO

SELECT CONVERT(DATETIME2, '20241329 03:00:00')
GO

SELECT CONVERT(DATETIME2, '240129 03:00')
GO

SELECT CONVERT(DATETIME2, '241329 03:00')
GO

SELECT CONVERT(DATETIME2, '2001 03:00:00.123')
GO

SELECT CONVERT(DATETIME2, '0001 03:00:00.421')
GO

-- -- invalid syntax
SELECT CONVERT(DATETIME2, '0')
GO

SELECT CONVERT(DATETIME2, '1')
GO

SELECT CONVERT(DATETIME2, '11')
GO

SELECT CONVERT(DATETIME2, '111')
GO

SELECT CONVERT(DATETIME2, '11111')
GO

SELECT CONVERT(DATETIME2, '1111111')
GO

-- should return default DATETIME2
SELECT CONVERT(DATETIME2, '16:23:51')
GO

SELECT CONVERT(DATETIME2, '4:12:12:123')
GO

SELECT CONVERT(DATETIME2, '4:12:12:1234')
GO

SELECT CONVERT(DATETIME2, '4:12:12.1234')
GO

-- hijri
SELECT CONVERT(DATETIME2, '20231229', 130)
GO

SELECT CONVERT(DATETIME2, '20231230', 130)
GO

SELECT CONVERT(DATETIME2, '20231129', 130)
GO

SELECT CONVERT(DATETIME2, '20231130', 130)
GO

SELECT CONVERT(DATETIME2, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATETIME2, N'22 محرم 1440 1:39:17.090', 131)
GO

SELECT CONVERT(DATETIME2, '22/12/1440 1:39:17.090PM', 130)
GO

SELECT CONVERT(DATETIME2, '22/12/1440 1:39:17.090PM', 131)
GO

SELECT CONVERT(DATETIME2, N'29 شوال 1445 11:46:25:347AM', 130)
GO

SELECT CONVERT(DATETIME2, N'29 شوال 1445 11:46:25:347AM', 131)
GO

-- -- hijri leap year
SELECT CONVERT(DATETIME2, '20241230', 130)
GO

-- rounding of DATETIME2
SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345679')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345678')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345677')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345676')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345675')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345674')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345673')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345672')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345671')
GO

SELECT CONVERT(DATETIME2, '01/01/98 23:59:59.12345670')
GO

-- DATETIME2 with typmod
SELECT CONVERT(DATETIME2(0), '01/01/98 23:59:56.501')
GO

SELECT CONVERT(DATETIME2(0), '01/01/98 23:59:56.500')
GO

SELECT CONVERT(DATETIME2(0), '01/01/98 23:59:56.499')
GO

SELECT CONVERT(DATETIME2(1), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATETIME2(2), '01/01/98 23:59:59.123')
GO

SELECT CONVERT(DATETIME2(3), '01/01/98 23:59:59.123')
GO

-- -- Boundary values
SELECT CONVERT(DATETIME2, '9999-12-30 23:59:59.9999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-30 23:59:59.99999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-30 23:59:59.999999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-30 23:59:59.9999999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-31 23:59:59.99999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-31 23:59:59.999999999')
GO

SELECT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999999')
GO

-- -- out of bound values
SELECT CONVERT(DATETIME2,'2022-10-00 23:59:59.990')
GO

SELECT CONVERT(DATETIME2,'0000-10-01 23:59:59.990')
GO

SELECT CONVERT(DATETIME2,'2023-00-01 23:59:59.990')
GO

SELECT CONVERT(DATETIME2,'0000-00-00 23:59:59.990')
GO

-- Different DATETIME formats with their corresponding styles
SELECT CONVERT(DATETIME2, 'Apr 10 2021 11:12AM', 0)
GO

SELECT CONVERT(DATETIME2, '02/12/21', 1)
GO

SELECT CONVERT(DATETIME2, '21.02.12', 2)
GO

SELECT CONVERT(DATETIME2, '12/02/21', 3)
GO

SELECT CONVERT(DATETIME2, '12.02.21', 4)
GO

SELECT CONVERT(DATETIME2, '12-02-21', 5)
GO

SELECT CONVERT(DATETIME2, '12 Apr 21', 6)
GO

SELECT CONVERT(DATETIME2, 'Apr 12, 21', 7)
GO

SELECT CONVERT(DATETIME2, '10:13:14', 8)
GO

SELECT CONVERT(DATETIME2, '10:13:14', 24)
GO

SELECT CONVERT(DATETIME2, 'Apr 12 2021 10:13:14:123AM', 9)
GO

SELECT CONVERT(DATETIME2, '02-12-21', 10)
GO

SELECT CONVERT(DATETIME2, '21/02/12', 11)
GO

SELECT CONVERT(DATETIME2, '210212', 12)
GO

SELECT CONVERT(DATETIME2, '12 Apr 2021 15:13:14:123', 13)
GO

SELECT CONVERT(DATETIME2, '15:13:14:123', 14)
GO

SELECT CONVERT(DATETIME2, '2021-02-12 15:13:14', 20)
GO

SELECT CONVERT(DATETIME2, '2021-02-12 15:13:14.123', 21)
GO

SELECT CONVERT(DATETIME2, '02/12/21 15:13:14 PM', 22)
GO

SELECT CONVERT(DATETIME2, '2021-02-12', 23)
GO

SELECT CONVERT(DATETIME2, '2021-02-12 15:13:14.123', 25)
GO

SELECT CONVERT(DATETIME2, 'Apr 10 2021 11:12AM', 100)
GO

SELECT CONVERT(DATETIME2, '02/12/2021', 101)
GO

SELECT CONVERT(DATETIME2, '2021.02.12', 102)
GO

SELECT CONVERT(DATETIME2, '12/02/2021', 103)
GO

SELECT CONVERT(DATETIME2, '12.02.2021', 104)
GO

SELECT CONVERT(DATETIME2, '12-02-2021', 105)
GO

SELECT CONVERT(DATETIME2, '12 Apr 2021', 106)
GO

SELECT CONVERT(DATETIME2, 'Apr 12, 2021', 107)
GO

SELECT CONVERT(DATETIME2, '10:13:14', 108)
GO

SELECT CONVERT(DATETIME2, 'Apr 12 2021 10:13:14:123AM', 109)
GO

SELECT CONVERT(DATETIME2, '02-12-2021', 110)
GO

SELECT CONVERT(DATETIME2, '2021/02/12', 111)
GO

SELECT CONVERT(DATETIME2, '20210212', 112)
GO

SELECT CONVERT(DATETIME2, '12 Apr 2021 15:13:14:123', 113)
GO

SELECT CONVERT(DATETIME2, '15:13:14:123', 114)
GO

SELECT CONVERT(DATETIME2, '2021-02-12 15:13:14', 120)
GO

SELECT CONVERT(DATETIME2, '2021-02-12 15:13:14.123', 121)
GO

SELECT CONVERT(DATETIME2, '2021-02-12T15:13:14.123', 126)
GO

SELECT CONVERT(DATETIME2, '2021-02-12T15:13:14.123', 127)
GO

SELECT CONVERT(DATETIME2, N'22 محرم 1440 1:39:17.090', 130)
GO

SELECT CONVERT(DATETIME2, '12/02/2021 15:13:14:123 PM', 131)
GO

--- misc
SELECT CONVERT(DATETIME2,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATETIME2, '2020')
GO

SELECT CONVERT(DATETIME2, '2000-04-22 16:23:51.7668c0')
GO

SELECT CONVERT(DATETIME2, '2001-04-022 16:23:51.766890 +12:00')
GO

SELECT CONVERT(DATETIME2, '02001-04-22 16:23:51.766890 +12:00') 
GO 

SELECT CONVERT(DATETIME2, ' 2001- 04 - 22 16: 23: 51. 766890 +12:00')
GO

SELECT CONVERT(DATETIME2, '02001-04-22 16:23:51')
GO

SELECT CONVERT(DATETIME2, '1900-05-06 13:59:29.050 -8:00')
GO

SELECT CONVERT(DATETIME2, '2011-08-15 14:30.00')
GO

SELECT CONVERT(DATETIME2,'2022-10-29 20:01:00.000')
GO

SELECT CONVERT(DATETIME2, '2020')
GO

SELECT CONVERT(DATETIME2, '2022-10-30T03:00:00')
GO

-- some commits are missing in 2_X_DEV causing unexpected output here
SELECT CONVERT(DATETIME2, CONVERT(DATETIMEOFFSET,'2021-01-01 00:00:00.000 +12:00'))
GO

SELECT CONVERT(DATETIME2, '2011-08-15 10:30.00 AMZ')
GO

SELECT CONVERT(DATETIME2, '2011-08-15 10:30.00 PMZ')
GO

DECLARE @TM_ICLO TIME = '17:24:07.1766670'
SELECT CONVERT(DATETIME2, @TM_ICLO)
GO

-- Dependent objects
SELECT * FROM test_conv_string_to_datetime2_v1
GO
EXEC test_conv_string_to_datetime2_p1
GO
SELECT test_conv_string_to_datetime2_f1()
GO

SELECT * FROM test_conv_string_to_datetime2_v2
GO
EXEC test_conv_string_to_datetime2_p2
GO
SELECT test_conv_string_to_datetime2_f2()
GO

EXEC test_conv_string_to_datetime2_p2_2
GO
SELECT test_conv_string_to_datetime2_f2_2()
GO

SELECT * FROM test_conv_string_to_datetime2_v3
GO
EXEC test_conv_string_to_datetime2_p3
GO
SELECT test_conv_string_to_datetime2_f3()
GO

SELECT * FROM test_conv_string_to_datetime2_v4
GO
EXEC test_conv_string_to_datetime2_p4
GO
SELECT test_conv_string_to_datetime2_f4()
GO

SELECT * FROM test_conv_string_to_datetime2_v5
GO
EXEC test_conv_string_to_datetime2_p5
GO
SELECT test_conv_string_to_datetime2_f5()
GO

SELECT * FROM test_conv_string_to_datetime2_v6
GO
EXEC test_conv_string_to_datetime2_p6
GO
SELECT test_conv_string_to_datetime2_f6()
GO

SELECT * FROM test_conv_string_to_datetime2_v7
GO
EXEC test_conv_string_to_datetime2_p7
GO
SELECT test_conv_string_to_datetime2_f7()
GO

SELECT * FROM test_conv_string_to_datetime2_v8
GO
EXEC test_conv_string_to_datetime2_p8
GO
SELECT test_conv_string_to_datetime2_f8()
GO
