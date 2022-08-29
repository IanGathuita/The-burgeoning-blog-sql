CREATE PROCEDURE sp_update_blog(@BlogId INT, @Title nvarchar(100) = '',@Body nvarchar(max) = '', @Tags nvarchar(max ) = '')
AS
BEGIN
    DECLARE @blog TABLE([Title] [nvarchar](100), [Body] [nvarchar](max) ,[Tags] [nvarchar](max));
	INSERT INTO @blog SELECT [Title],[Body],[Tags] FROM [dbo].[Blogs] WHERE Id = @BlogId;

	DECLARE @newTitle nvarchar(100),  @newBody nvarchar(max), @newTags nvarchar(max);
	SET @newTitle = IIF(@Title = '', (SELECT Title FROM @blog), @Title);
	SET @newBody = IIF(@Body = '', (SELECT Body FROM @blog), @Body);
	SET @newTags = IIF(@Tags = '', (SELECT Tags FROM @blog), @Tags);

	UPDATE [dbo].[Blogs] SET [Title] = @newTitle, [Body]= @newBody, [Tags] = @newTags WHERE [Id] = @BlogId;

END