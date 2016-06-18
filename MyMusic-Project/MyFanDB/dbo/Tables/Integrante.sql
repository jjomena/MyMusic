CREATE TABLE [dbo].[Integrante] (
    [IdIntegrante]     INT           IDENTITY (1, 1) NOT NULL,
    [IdBanda]          INT           NOT NULL,
    [NombreIntegrante] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdIntegrante] ASC),
    CONSTRAINT [fk_integranteBanda] FOREIGN KEY ([IdBanda]) REFERENCES [dbo].[Banda] ([IdBanda])
);

