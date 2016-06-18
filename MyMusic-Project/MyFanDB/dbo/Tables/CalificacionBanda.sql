CREATE TABLE [dbo].[CalificacionBanda] (
    [IdFanatico]   INT NOT NULL,
    [IdBanda]      INT NOT NULL,
    [Calificacion] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC, [IdBanda] ASC),
    CONSTRAINT [fk_banda] FOREIGN KEY ([IdBanda]) REFERENCES [dbo].[Banda] ([IdBanda]),
    CONSTRAINT [fk_fanatico] FOREIGN KEY ([IdFanatico]) REFERENCES [dbo].[Fanatico] ([IdFanatico])
);

