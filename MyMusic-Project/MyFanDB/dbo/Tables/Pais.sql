CREATE TABLE [dbo].[Pais] (
    [IdPais]     INT          IDENTITY (1, 1) NOT NULL,
    [NombrePais] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPais] ASC),
    UNIQUE NONCLUSTERED ([NombrePais] ASC)
);

