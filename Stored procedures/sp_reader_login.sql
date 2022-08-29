CREATE PROCEDURE [dbo].[sp_reader_login]
	@Email NVARCHAR(200),
	@Password VARCHAR(200)
AS
BEGIN
     SELECT TOP(1) [FirstName],[Email],[Password] FROM [dbo].[Readers]
	 WHERE Email = @Email 
	 AND [Password] = @Password;
END
	


