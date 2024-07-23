CREATE TABLE string_agg_t (id int, a varchar(10), b varchar(10), g int, sbid int)
go

INSERT INTO string_agg_t values 
(3,'c','x',1,4), 
(2,'b','y',2,6), 
(2,'g','u',2,5), 
(1,'a','z',1,7), 
(5,'e','v',2,1), 
(4,'d','w',1,3), 
(4,'h','t',1,2)
go

CREATE VIEW string_agg_dep_v1 AS
    SELECT STRING_AGG (a, '-') as result FROM string_agg_t
GO

CREATE PROCEDURE string_agg_dep_p1 AS
    SELECT STRING_AGG (a, '-') FROM string_agg_t
GO

CREATE FUNCTION string_agg_dep_f1()
RETURNS NVARCHAR(50)
AS
BEGIN
RETURN (SELECT STRING_AGG (a, '-') FROM string_agg_t)
END
GO

CREATE VIEW string_agg_dep_v2 AS
    SELECT STRING_AGG (a, '-') as result FROM string_agg_t GROUP BY g
GO

CREATE PROCEDURE string_agg_dep_p2 AS
    SELECT STRING_AGG (a, '-') FROM string_agg_t GROUP BY g
GO

CREATE FUNCTION string_agg_dep_f2()
RETURNS TABLE
AS
RETURN (SELECT STRING_AGG (a, '-') as result FROM string_agg_t GROUP BY g)
GO

CREATE VIEW string_agg_dep_v3 AS
    SELECT STRING_AGG (a, '-') WITHIN GROUP (ORDER BY sbid) as result FROM string_agg_t GROUP BY g
GO

CREATE PROCEDURE string_agg_dep_p3 AS
    SELECT STRING_AGG (a, '-') WITHIN GROUP (ORDER BY sbid) FROM string_agg_t GROUP BY g
GO

CREATE FUNCTION string_agg_dep_f3()
RETURNS TABLE
AS
RETURN (SELECT STRING_AGG (a, '-') WITHIN GROUP (ORDER BY sbid) as result FROM string_agg_t GROUP BY g)
GO

-- Create a table to test the trigger
CREATE TABLE string_agg_order_school (
    classID INT,
    rollID INT,
    studentName VARCHAR(50)
);
GO

INSERT INTO string_agg_order_school (classID, rollID, studentName)
VALUES
    (1, 2, 'StudentB'),
    (1, 1, 'StudentA'),
    (1, 3, 'StudentC'),
    (2, 2, 'StudentE'),
    (2, 1, 'StudentD');
GO

-- Create a trigger to display classID, list of student names seperated by ', '
CREATE TRIGGER string_agg_tr_concat_student_names
ON string_agg_order_school
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SELECT classID, STRING_AGG(studentName, ', ') 
    WITHIN GROUP (ORDER BY rollID) 
    FROM string_agg_order_school 
    GROUP BY classID;
END;
GO