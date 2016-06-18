CREATE TABLE [dbo].[Concierto] (
    [IdConcierto] INT IDENTITY (1, 1) NOT NULL,
    [IdActividad] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdConcierto] ASC),
    CONSTRAINT [fk_concirtoActividad] FOREIGN KEY ([IdActividad]) REFERENCES [dbo].[Actividad] ([IdActividad])
);

