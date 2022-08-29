CREATE PROCEDURE [dbo].[sp_get_readers]
AS
BEGIN
   SELECT TOP 100 PERCENT [FirstName], [LastName],[Email], [Interests] FROM [dbo].[Readers] ORDER BY [FirstName];
END