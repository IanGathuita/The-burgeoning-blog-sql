CREATE PROCEDURE sp_get_a_reader @Email NVARCHAR(200)
AS
BEGIN
SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[Email]
      ,[Password]
      ,[Interests]
      ,[Points]
FROM [dbo].[Readers] WHERE [Email] = @Email;
END
