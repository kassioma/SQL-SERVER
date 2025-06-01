--Criando Bancos de Dados -CREATE DATABASE - Microsoft SQL Server
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

--Consultar bancos esistentes
SELECT name
FROM master.sys.databases
ORDER BY name;

--Selecionar banco a usar
USE teste01;

--Obter informações sobre um banco específico
EXEC sp_helpdb teste01;

--Excluir banco de dados
DROP DATABASE teste01;

--Excluir banco em uso
USE MASTER
GO
ALTER DATABASE teste01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE teste01;