USE [C:\USERS\20904\DOCUMENTS\GITHUB\EASYRECEIPT\EASYRECEIPTS\EASYRECEIPTS\APP_DATA\TESTDB.MDF]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[prLoginCreate]
		@user = N'Hola',
		@password = N'12345',
		@id = 1

SELECT	@return_value as 'Return Value'

GO
