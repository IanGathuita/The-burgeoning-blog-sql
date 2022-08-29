CREATE PROCEDURE [dbo].[sp_writer_login]
	@Email NVARCHAR(200),
	@Password VARCHAR(200)
AS
BEGIN
     SELECT TOP(1) [FirstName],[Email],[Password] FROM [dbo].[Writers]
	 WHERE Email = @Email 
	 AND [Password] = @Password
	 AND [Active] = 1;
END
	


