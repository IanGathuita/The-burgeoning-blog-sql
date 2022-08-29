CREATE PROCEDURE [dbo].[sp_get_comments](@blogId int)
AS
BEGIN
SELECT 
    [Likes] ,
	[CommentorId],
	[Date],
	[BlogId],
	[Comment]
FROM [dbo].[comments] WHERE	BlogId = @blogId;
END