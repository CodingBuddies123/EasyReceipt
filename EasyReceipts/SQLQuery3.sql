USE [C:\USERS\20904\DOCUMENTS\GITHUB\EASYRECEIPT\EASYRECEIPTS\EASYRECEIPTS\APP_DATA\TESTDB.MDF]
GO

DECLARE	@return_value Int,
		@outId int

EXEC	@return_value = [dbo].[spLogin]
		@user = N'3453453453',
		@pwd = N'45345345345',
		@outId = @outId OUTPUT

SELECT	@outId as N'@outId'

SELECT	@return_value as 'Return Value'

GO
