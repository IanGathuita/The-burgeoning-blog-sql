CREATE PROCEDURE [dbo].[sp_activate_writer]
	@WriterId INT
AS
BEGIN
    UPDATE [dbo].[Writers] SET [Active] = 1 WHERE [id] = @WriterId; 
END