﻿USE [C:\USERS\20904\DOCUMENTS\GITHUB\EASYRECEIPT\EASYRECEIPTS\EASYRECEIPTS\APP_DATA\TESTDB.MDF]
GO

DECLARE	@return_value Int,
		@outId int

SELECT	@outId = NULL

EXEC	@return_value = [dbo].[spLogin]
		@user = N'Hola',
		@pwd = N'123456',
		@outId = @outId OUTPUT

SELECT	@outId as N'@outId'

SELECT	@return_value as 'Return Value'

GO
