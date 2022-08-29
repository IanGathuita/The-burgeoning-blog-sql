USE the_burgeoning_blog;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Reads](
    [Id] INT PRIMARY KEY IDENTITY(1,1),
	[BlogId] INT CONSTRAINT fk_blog_reads  REFERENCES [dbo].[Blogs]([id]) 
	    ON UPDATE CASCADE
		ON DELETE CASCADE ,
	[ReaderId] INT CONSTRAINT fk_reader_reads  REFERENCES [dbo].[Readers]([id]) 
	    ON UPDATE CASCADE
		ON DELETE CASCADE,
	[Date] DATETIME2 DEFAULT(SYSDATETIME())  
);


