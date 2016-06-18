CREATE TABLE [dbo].[CalificacionConcierto] (
    [IdFanatico]   INT            NOT NULL,
    [IdConcierto]  INT            NOT NULL,
    [Calificacion] INT            NOT NULL,
    [Comentario]   VARCHAR (1000) NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC, [IdConcierto] ASC),
    CONSTRAINT [fk_calificacionConciertoConcierto] FOREIGN KEY ([IdConcierto]) REFERENCES [dbo].[Concierto] ([IdConcierto]),
    CONSTRAINT [fk_calificacionConciertoFanatico] FOREIGN KEY ([IdFanatico]) REFERENCES [dbo].[Fanatico] ([IdFanatico])
);

