CREATE TABLE [dbo].[TipoActividad] (
    [IdTipoActividad] INT          IDENTITY (1, 1) NOT NULL,
    [Nombre]          VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([IdTipoActividad] ASC)
);

