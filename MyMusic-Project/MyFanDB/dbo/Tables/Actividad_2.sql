CREATE TABLE [dbo].[Actividad] (
    [IdActividad]   INT            IDENTITY (1, 1) NOT NULL,
    [Titulo]        VARCHAR (100)  NOT NULL,
    [Fecha]         DATETIME       DEFAULT (getdate()) NOT NULL,
    [IdBanda]       INT            NOT NULL,
    [Descripcion]   VARCHAR (1000) NULL,
    [TipoActividad] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([IdActividad] ASC),
    CONSTRAINT [fk_actividadBanda] FOREIGN KEY ([IdBanda]) REFERENCES [dbo].[Banda] ([IdBanda]),
    CONSTRAINT [fk_actividadTipo] FOREIGN KEY ([TipoActividad]) REFERENCES [dbo].[TipoActividad] ([IdTipoActividad])
);

