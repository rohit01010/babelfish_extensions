select 0 as a, 0.0 as b, 0.00 as c, 0.000 as d into babel_5655_t1
go

select TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE
from information_schema.columns 
where TABLE_NAME = 'babel_5655_t1' order by COLUMN_NAME
go

select 0.00 * cast(1.23 as numeric(10, 3))
go

select 0.00 * cast(1.23 as numeric(10, 2))
go

select 0.0000 * cast(1.23 as numeric(10, 2))
go

declare @strDev float = 2.73;
select
    case
        when 2 = 3 then 0.00
        else ROUND(@strDev, 2)
    end;
go

declare @strDev float = 2.73;
select 0.00 as a, ROUND(@strDev, 2) as b into babel_5655_temp_t1
go

declare @strDev float = 2.73;
select
    case
        when 2 = 3 then 0.00
        else ROUND(@strDev, 2)
    end as a
into babel_5655_temp_t2
go

select TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE
from information_schema.columns 
where TABLE_NAME = 'babel_5655_temp_t1' order by COLUMN_NAME
go

select TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE
from information_schema.columns 
where TABLE_NAME = 'babel_5655_temp_t2' order by COLUMN_NAME
go

drop table babel_5655_t1
go

