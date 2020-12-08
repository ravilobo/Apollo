-- SQL query to enable QueryStore 
-- This script is re-runnable 
USE [master]
GO
ALTER DATABASE [YourDBName] SET QUERY_STORE = ON
GO
ALTER DATABASE [YourDBName] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, MAX_STORAGE_SIZE_MB = 1024)
GO
