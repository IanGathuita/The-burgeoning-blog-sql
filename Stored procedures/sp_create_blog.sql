CREATE PROCEDURE [dbo].[sp_create_blog]
	@Title NVARCHAR(100),
	@Body NVARCHAR(MAX),
	@Tags NVARCHAR(MAX),
	@Likes INT,
	@WriterId INT
AS
BEGIN
    INSERT INTO [dbo].[Blogs] (	[Title],[Body],	[Tags],	[WriterId]) VALUES (
	@Title,
	@Body,
	@Tags,
	@WriterId
	);
END