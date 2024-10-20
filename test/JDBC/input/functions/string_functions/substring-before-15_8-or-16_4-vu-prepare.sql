CREATE TABLE babel_3658_substring_t1(a NCHAR(50))
GO
INSERT INTO babel_3658_substring_t1 VALUES(N'abc🙂defghi🙂🙂')
INSERT INTO babel_3658_substring_t1 VALUES(N'比尔·拉莫斯')
GO

CREATE TABLE babel_3658_substring_t2(a NVARCHAR(50))
GO
INSERT INTO babel_3658_substring_t2 VALUES(N'abc🙂defghi🙂🙂')
GO

CREATE TABLE babel_3658_substring_t3(a CHAR(50))
GO
INSERT INTO babel_3658_substring_t3 VALUES('abcdefghi')
GO

CREATE TABLE babel_3658_substring_t4(a VARCHAR(50))
GO
INSERT INTO babel_3658_substring_t4 VALUES('abcdefghi')
GO

CREATE TABLE babel_3658_substring_t5(a VARBINARY(50))
GO
INSERT INTO babel_3658_substring_t5 VALUES(0x2020616263642020)
GO

CREATE TABLE babel_3658_substring_t6(a BINARY(50))
GO
INSERT INTO babel_3658_substring_t6 VALUES(0x2020616263642020)
GO

CREATE TABLE babel_3658_substring_chinese_prc_ci_as(a VARCHAR(50) COLLATE CHINESE_PRC_CI_AS)
GO
INSERT INTO babel_3658_substring_chinese_prc_ci_as VALUES(N'比尔·拉莫斯')
GO

CREATE TABLE babel_3658_substring_chinese_prc_cs_as(a VARCHAR(50) COLLATE CHINESE_PRC_CS_AS)
GO
INSERT INTO babel_3658_substring_chinese_prc_cs_as VALUES(N'比尔·拉莫斯')
GO

CREATE TABLE babel_3658_substring_chinese_prc_ci_ai(a VARCHAR(50) COLLATE CHINESE_PRC_CI_AI)
GO
INSERT INTO babel_3658_substring_chinese_prc_ci_ai VALUES(N'比尔·拉莫斯')
GO

CREATE TABLE babel_3658_substring_arabic_ci_as(a VARCHAR(50) COLLATE ARABIC_CI_AS)
GO
INSERT INTO babel_3658_substring_arabic_ci_as VALUES(N'الله مع المتقين')
GO

CREATE TABLE babel_3658_substring_arabic_cs_as(a VARCHAR(50) COLLATE ARABIC_CS_AS)
GO
INSERT INTO babel_3658_substring_arabic_cs_as VALUES(N'الله مع المتقين')
GO

CREATE TABLE babel_3658_substring_arabic_ci_ai(a VARCHAR(50) COLLATE ARABIC_CI_AI)
GO
INSERT INTO babel_3658_substring_arabic_ci_ai VALUES(N'الله مع المتقين')
GO

CREATE TABLE babel_3658_substring_image(a IMAGE)
GO
INSERT INTO babel_3658_substring_image values(CAST ('6F9619FF-8B86-D011-B42D-00C04FC964FF' AS image))
GO

CREATE TABLE babel_3658_substring_text(a TEXT, b NTEXT)
GO
INSERT INTO babel_3658_substring_text VALUES (N'abc🙂defghi🙂🙂', N'abc🙂defghi🙂🙂')
GO

CREATE TYPE dbo.babel_3658_substring_imageUDT FROM image;
GO

CREATE TYPE dbo.babel_3658_substring_varUDT FROM varchar(50);
GO

CREATE TABLE babel_3658_substring_UDT(a dbo.babel_3658_substring_imageUDT, b dbo.babel_3658_substring_varUDT)
GO
INSERT INTO babel_3658_substring_UDT VALUES(CAST('abcdef' as dbo.babel_3658_substring_imageUDT), CAST('abcdef' as dbo.babel_3658_substring_varUDT))
GO

CREATE VIEW babel_3658_substring_dep_view AS
    SELECT substring(a, 4, 1) as result from babel_3658_substring_t2
GO

CREATE PROCEDURE babel_3658_substring_dep_proc AS
    SELECT substring(a, 4, 1) as result from babel_3658_substring_t2
GO

CREATE FUNCTION babel_3658_substring_dep_func()
RETURNS NVARCHAR(200)
AS
BEGIN
RETURN (SELECT TOP 1 substring(a, 4, 1) from babel_3658_substring_t2)
END
GO

CREATE VIEW babel_3658_substring_dep_view_1 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t1
GO

CREATE VIEW babel_3658_substring_dep_view_2 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t2
GO

CREATE VIEW babel_3658_substring_dep_view_3 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t3
GO

CREATE VIEW babel_3658_substring_dep_view_4 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t4
GO

CREATE VIEW babel_3658_substring_dep_view_5 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t5
GO

CREATE VIEW babel_3658_substring_dep_view_6 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_text
GO

CREATE VIEW babel_3658_substring_dep_view_7 AS
    SELECT substring(b, 4, 1) as result FROM babel_3658_substring_text
GO

CREATE VIEW babel_3658_substring_dep_view_8 AS
    SELECT substring(a, 4, 1) as result FROM babel_3658_substring_t6
GO

CREATE FUNCTION babel_3658_substring_itvf_func()
RETURNS TABLE
AS
RETURN (SELECT substring(a, 4, 1) as result from babel_3658_substring_t2)
GO
