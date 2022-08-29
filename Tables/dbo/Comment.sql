USE the_burgeoning_blog;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Comments](
    [Id] INT PRIMARY KEY IDENTITY(1,1),
	[Likes] INT NOT NULL,
	[CommentorId] INT CONSTRAINT fk_reader_comment  REFERENCES [dbo].[Readers]([id]) 
	    ON UPDATE CASCADE
		ON DELETE CASCADE,
	[Date] DATETIME2 DEFAULT(SYSDATETIME())  
);

ALTER TABLE [dbo].[Comments] ADD [BlogId] INT CONSTRAINT fk_blog_comment  REFERENCES [dbo].[Blogs]([id]) 
	    ON UPDATE CASCADE
		ON DELETE CASCADE;

ALTER TABLE [dbo].[Comments] ADD [Comment] NVARCHAR(MAX);

ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT default_likes  DEFAULT(0) FOR [Likes];


