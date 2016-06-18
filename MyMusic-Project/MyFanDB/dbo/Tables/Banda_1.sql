CREATE TABLE [dbo].[Banda] (
    [IdBanda]          INT           IDENTITY (1, 1) NOT NULL,
    [Usuario]          VARCHAR (16)  NOT NULL,
    [Password]         VARCHAR (8)   NULL,
    [Correo]           VARCHAR (25)  NOT NULL,
    [AnoCreacion]      INT           NOT NULL,
    [FechaInscripcion] DATETIME      DEFAULT (getdate()) NOT NULL,
    [IdGeneroMusical]  INT           NOT NULL,
    [Hashtag]          VARCHAR (50)  NOT NULL,
    [Biografia]        VARCHAR (500) NULL,
    [BandaActiva]      BIT           DEFAULT ((1)) NOT NULL,
    [Foto]             IMAGE         NULL,
    [IdPais]           INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([IdBanda] ASC),
    CONSTRAINT [GENEROBANDA] FOREIGN KEY ([IdGeneroMusical]) REFERENCES [dbo].[GenerosMusicales] ([IdGenero]),
    CONSTRAINT [PAISBANDA] FOREIGN KEY ([IdPais]) REFERENCES [dbo].[Pais] ([IdPais]),
    UNIQUE NONCLUSTERED ([Usuario] ASC)
);

