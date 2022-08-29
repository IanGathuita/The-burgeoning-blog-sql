CREATE PROCEDURE sp_get_a_writer @Email NVARCHAR(200)
AS
BEGIN
SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[Email]
      ,[PhoneNUmber]
      ,[DateOfBirth]
      ,[Active]
      ,[Password]
      ,[StartTime]
      ,[EndTime]
FROM [dbo].[Writers] WHERE [Email] = @Email;
END
