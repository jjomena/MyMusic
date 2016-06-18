CREATE TABLE [dbo].[Fanatico] (
    [IdFanatico]      INT           IDENTITY (1, 1) NOT NULL,
    [Usuario]         VARCHAR (16)  NOT NULL,
    [Password]        VARCHAR (8)   NOT NULL,
    [Nombre]          VARCHAR (100) NULL,
    [Correo]          VARCHAR (25)  NULL,
    [Genero]          BIT           NOT NULL,
    [FechaNacimiento] DATE          NOT NULL,
    [IdGeneroMusical] INT           NOT NULL,
    [IdPais]          INT           NOT NULL,
    [FanaticoActivo]  BIT           DEFAULT ((1)) NOT NULL,
    [Foto]            VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([IdFanatico] ASC),
    CONSTRAINT [fk_paisUsuario] FOREIGN KEY ([IdPais]) REFERENCES [dbo].[Pais] ([IdPais]),
    UNIQUE NONCLUSTERED ([Usuario] ASC)
);

