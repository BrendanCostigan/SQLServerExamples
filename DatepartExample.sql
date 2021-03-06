﻿-- Tested on SQL Azure 11 Oct 2016

SELECT DATEPART(YEAR, GETDATE()) AS Year;
SELECT DATEPART(MONTH, GETDATE()) AS Month;
SELECT DATEPART(DAYOFYEAR, GETDATE()) AS DayOfYear;
SELECT DATEPART(ISO_WEEK, GETDATE()) AS ISO_Week;


SELECT DATEPART(TZoffset, TODATETIMEOFFSET(CAST(GETDATE() AS DATETIME2), '-07:00')) AS TZoffset;   --< Returns -420 which is -7 * 60 = -420
