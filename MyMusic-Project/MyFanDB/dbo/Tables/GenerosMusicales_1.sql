CREATE TABLE [dbo].[GenerosMusicales] (
    [IdGenero] INT           NOT NULL,
    [Nombre]   VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdGenero] ASC),
    UNIQUE NONCLUSTERED ([Nombre] ASC)
);

