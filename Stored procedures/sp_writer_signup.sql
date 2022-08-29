CREATE PROCEDURE [dbo].[sp_writer_signup]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Email NVARCHAR(200),
	@Password VARCHAR(200),
	@PhoneNUmber VARCHAR(13),
	@DateOfBirth DATETIME2,
	@Message VARCHAR(200) OUTPUT
AS
BEGIN;
 BEGIN TRY
     INSERT INTO [dbo].[Writers] (
       [FirstName],
       [LastName],
       [Email],
       [Password],
       [PhoneNUmber],
	   [DateOfBirth]
     ) 
     VALUES(
       @FirstName,
	   @LastName,
	   @Email,
	   @Password,
	   @PhoneNUmber,
	   @DateOfBirth
     );
    SET @Message = 'Writer account created successfully.';
 END TRY
 BEGIN CATCH
    SET @Message = 'An error occured while trying to create this user. Please try again later';
 END CATCH
END;
	


