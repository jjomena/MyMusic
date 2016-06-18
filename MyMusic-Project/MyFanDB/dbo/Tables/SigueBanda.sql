CREATE TABLE [dbo].[SigueBanda] (
    [IdFanatico] INT NOT NULL,
    [IdBanda]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC, [IdBanda] ASC),
    CONSTRAINT [fk_sigueBanda] FOREIGN KEY ([IdBanda]) REFERENCES [dbo].[Banda] ([IdBanda]),
    CONSTRAINT [fk_sigueFanatico] FOREIGN KEY ([IdFanatico]) REFERENCES [dbo].[Fanatico] ([IdFanatico])
);

