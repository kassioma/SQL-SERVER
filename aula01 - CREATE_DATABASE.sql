--Creating Databases -CREATE DATABASE - Microsoft SQL Server
CREATE DATABASE teste01 ON PRIMARY
(NAME = teste01,
FILENAME = 'C:\SQL\teste01.mdf',
SIZE = 6MB,
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON (
NAME = teste01_log,
FILENAME = 'C:\SQL\teste01.ldf',
SIZE = 1MB,
FILEGROWTH = 1MB
GO
)

--Consult existing databases
SELECT name
FROM master.sys.databases
ORDER BY name;

--Select database to use
USE teste01;

--Get information about a specific database
EXEC sp_helpdb teste01;

--Delete database
DROP DATABASE teste01;

--Delete database in use
USE MASTER
GO
ALTER DATABASE teste01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE teste01;