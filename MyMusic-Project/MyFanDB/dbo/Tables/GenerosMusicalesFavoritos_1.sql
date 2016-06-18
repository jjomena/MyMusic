CREATE TABLE [dbo].[GenerosMusicalesFavoritos] (
    [IdFanatico] INT NOT NULL,
    [IdGenero]   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC, [IdGenero] ASC),
    CONSTRAINT [fk_fanaticoGeneroFavorito] FOREIGN KEY ([IdFanatico]) REFERENCES [dbo].[Fanatico] ([IdFanatico]),
    CONSTRAINT [fk_generoMusicalFavorito] FOREIGN KEY ([IdGenero]) REFERENCES [dbo].[GenerosMusicales] ([IdGenero])
);

