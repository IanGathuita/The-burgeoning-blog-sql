CREATE PROCEDURE [dbo].[sp_delete_reader]
	@ReaderId INT
AS
BEGIN
    DELETE FROM [dbo].[Readers]  WHERE [id] = @ReaderId; 
END