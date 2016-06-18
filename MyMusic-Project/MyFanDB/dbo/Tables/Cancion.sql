CREATE TABLE [dbo].[Cancion] (
    [IdCancion]     INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]        VARCHAR (50)  NOT NULL,
    [Link]          VARCHAR (200) NULL,
    [Duracion]      VARCHAR (15)  NOT NULL,
    [TipoGrabacion] BIT           NOT NULL,
    [Edicion]       BIT           DEFAULT ((0)) NOT NULL,
    [IdDisco]       INT           NULL,
    PRIMARY KEY CLUSTERED ([IdCancion] ASC),
    CONSTRAINT [fk_cancionDisco] FOREIGN KEY ([IdDisco]) REFERENCES [dbo].[Disco] ([IdDisco])
);

