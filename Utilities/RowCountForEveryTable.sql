--
-- List the row count for every table in the current database
--
-- Source: http://stackoverflow.com/questions/2221555/how-to-fetch-the-row-count-for-all-tables-in-a-sql-server-database
--
-- This gives output which is better formated than using: sp_msforeachtable ' select ''?'' as ''Table'', count(*) as ''Rows'' from ? '


SELECT t.NAME TableName, 
       i.rows Records 
FROM   sysobjects t, 
       sysindexes i 
WHERE  t.xtype = 'U' 
       AND i.id = t.id 
       AND i.indid IN ( 0, 1 ) 
ORDER  BY records DESC, 
          tablename ASC; 
		  
		  		  