CREATE TABLE [Banda] (
  [IdBanda] int identity (1,1),
  [Usuario] varchar (16) UNIQUE not null,
  [Password] varchar (8),
  [Correo] varchar (25) not null,
  [AnoCreacion] int not null,
  [FechaInscripcion] datetime default(getdate()) not null,
  [IdGeneroMusical] int not null,
  [Hashtag] varchar (50) not null,
  [Biografia] varchar (500),
  [BandaActiva] bit not null default (1),
  [Foto] image,
  [IdPais] int not null,
  PRIMARY KEY ([IdBanda])
);

CREATE TABLE [Fanatico] (
  [IdFanatico] int identity (1,1),
  [Usuario] varchar (16) unique not null,
  [Password] varchar (8) not null,
  [Nombre] varchar (100),
  [Correo] varchar (25),
  [Genero] bit not null,
  [FechaNacimiento] date not null,
  [IdGeneroMusical] int not null,
  [IdPais] int not null,
  [FanaticoActivo] bit default (1) not null,
  [Foto] varchar (100),
  PRIMARY KEY ([IdFanatico])
);

CREATE TABLE CalificacionBanda (
	IdFanatico int,
	IdBanda int,
	Calificacion int not null,
	PRIMARY KEY (IdFanatico, IdBanda)
);

CREATE TABLE SigueBanda (
	IdFanatico int,
	IdBanda int
	PRIMARY KEY (IdFanatico, IdBanda)
);

CREATE TABLE GenerosMusicales (
	IdGenero int,
	Nombre varchar (100) unique not null,
	PRIMARY KEY (IdGenero)
);

CREATE TABLE GenerosMusicalesFavoritos (
	IdFanatico int,
	IdGenero int
	PRIMARY KEY (IdFanatico, IdGenero)
);

CREATE TABLE Pais (
	IdPais int identity(1,1),
	NombrePais varchar (50) unique not null,
	PRIMARY KEY (IdPais)
);

CREATE TABLE Integrante (
	IdIntegrante int identity (1,1), --PK
	IdBanda int not null,
	NombreIntegrante varchar (100) not null
	PRIMARY KEY (IdIntegrante)
);

--------------------------------------------------------------------------------

CREATE TABLE Actividad (
	IdActividad int identity (1,1),
	Titulo varchar (100) not null,
	Fecha datetime default(getdate()) not null,
	IdBanda int not null,
	Descripcion varchar (1000),
	TipoActividad int not null,
	PRIMARY KEY (IdActividad)
);

CREATE TABLE TipoActividad (
	IdTipoActividad int identity (1,1),
	Nombre varchar (20),
	PRIMARY KEY (IdTipoActividad)
);

CREATE TABLE Concierto (
	IdConcierto int identity (1,1),
	IdActividad int not null,
	PRIMARY KEY (IdConcierto)
);

CREATE TABLE CalificacionConcierto (
	IdFanatico int not null,
	IdConcierto int not null,
	Calificacion int not null,
	Comentario varchar (1000),
	PRIMARY KEY (IdFanatico, IdConcierto)
);

--------------------------------------------------------------------------------

CREATE TABLE Disco (
	IdDisco int identity (1,1),
	Nombre varchar (100) not null,
	Imagen varchar (100),
	FechaCreacion date not null,
	IdBanda int,
	IdGenero int,
	SelloDiscografico varchar (100),
	Descripcion varchar (1000),
	PRIMARY KEY (IdDisco)
);

CREATE TABLE Cancion (
	IdCancion int identity (1,1),
	Nombre varchar (50) not null,
	Link varchar (200),
	Duracion varchar (15) not null,
	TipoGrabacion bit not null,
	Edicion bit default (0) not null,
	IdDisco int,
	PRIMARY KEY (IdCancion)
);

CREATE TABLE CalificacionDisco (
	IdFanatico int,
	IdDisco int,
	Calificacion int not null,
	Comentario varchar (1000),
	PRIMARY KEY (IdFanatico)
);