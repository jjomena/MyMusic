CREATE TABLE [dbo].[Disco] (
    [IdDisco]           INT            IDENTITY (1, 1) NOT NULL,
    [Nombre]            VARCHAR (100)  NOT NULL,
    [Imagen]            VARCHAR (100)  NULL,
    [FechaCreacion]     DATE           NOT NULL,
    [IdBanda]           INT            NULL,
    [IdGenero]          INT            NULL,
    [SelloDiscografico] VARCHAR (100)  NULL,
    [Descripcion]       VARCHAR (1000) NULL,
    PRIMARY KEY CLUSTERED ([IdDisco] ASC),
    CONSTRAINT [fk_discoBanda] FOREIGN KEY ([IdBanda]) REFERENCES [dbo].[Banda] ([IdBanda]),
    CONSTRAINT [fk_discoGenero] FOREIGN KEY ([IdGenero]) REFERENCES [dbo].[GenerosMusicales] ([IdGenero])
);

