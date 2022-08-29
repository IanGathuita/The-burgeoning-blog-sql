CREATE PROCEDURE sp_reader_signup
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Email NVARCHAR(200),
	@Password VARCHAR(200),
	@Interests VARCHAR(max),
	@Message VARCHAR(200) OUTPUT
AS
BEGIN;
 BEGIN TRY
     INSERT INTO [dbo].[Readers] (
       [FirstName],
       [LastName],
       [Email],
       [Password],
       [Interests]
     ) 
     VALUES(
       @FirstName,
	   @LastName,
	   @Email,
	   @Password,
	   @Interests
     );
    SET @Message = 'Reader account created successfully.';
 END TRY
 BEGIN CATCH
    SET @Message = 'An error occured while trying to create this user. Please try again later';
 END CATCH
END;
	


