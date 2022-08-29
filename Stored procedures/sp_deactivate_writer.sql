CREATE PROCEDURE [dbo].[sp_deactivate_writer]
	@WriterId INT
AS
BEGIN
    UPDATE [dbo].[Writers] SET [Active] = 0 WHERE [id] = @WriterId; 
END