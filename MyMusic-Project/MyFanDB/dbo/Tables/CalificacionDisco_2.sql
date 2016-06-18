CREATE TABLE [dbo].[CalificacionDisco] (
    [IdFanatico]   INT            NOT NULL,
    [IdDisco]      INT            NULL,
    [Calificacion] INT            NOT NULL,
    [Comentario]   VARCHAR (1000) NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC),
    CONSTRAINT [fk_calificacionDiscoDisco] FOREIGN KEY ([IdDisco]) REFERENCES [dbo].[Disco] ([IdDisco]),
    CONSTRAINT [fk_calificacionDiscoFanatico] FOREIGN KEY ([IdFanatico]) REFERENCES [dbo].[Fanatico] ([IdFanatico])
);

