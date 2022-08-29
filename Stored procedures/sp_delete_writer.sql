CREATE PROCEDURE [dbo].[sp_delete_writer]
	@WriterId INT
AS
BEGIN
    DELETE FROM [dbo].[Writers]  WHERE [id] = @WriterId; 
END