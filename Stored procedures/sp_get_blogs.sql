CREATE PROCEDURE [dbo].[sp_get_blogs]
AS
SELECT 
    [id],
    [Title],
    [Body],
    [Tags],
	[Likes],
    [WriterId],
    [DateOfPublishing]
FROM [dbo].[Blogs]
WHERE IsDeleted = 0;