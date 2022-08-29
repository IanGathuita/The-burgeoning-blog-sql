USE the_burgeoning_blog;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Readers](
    [Id] INT CONSTRAINT reader_id_primary_key PRIMARY KEY IDENTITY(1,1),
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(200) NOT NULL,
	[Password] VARCHAR(200) NOT NULL,
    [Interests] VARCHAR(MAX),
	[Points] INT NOT NULL DEFAULT(0)
);

ALTER TABLE [dbo].[Readers]  ADD CONSTRAINT uq_email UNIQUE(Email);
