GO
ALTER TABLE Banda
	ADD CONSTRAINT GENEROBANDA FOREIGN KEY (IdGeneroMusical) REFERENCES GenerosMusicales(IdGenero),
	CONSTRAINT PAISBANDA FOREIGN KEY (IdPais) REFERENCES Pais(IdPais)
GO

ALTER TABLE CalificacionBanda
	ADD CONSTRAINT fk_fanatico FOREIGN KEY (IdFanatico) REFERENCES Fanatico(IdFanatico),
	CONSTRAINT fk_banda FOREIGN KEY (IdBanda) REFERENCES Banda(IdBanda)

ALTER TABLE SigueBanda
	ADD CONSTRAINT fk_sigueFanatico FOREIGN KEY (IdFanatico) REFERENCES Fanatico (IdFanatico),
	CONSTRAINT fk_sigueBanda FOREIGN KEY (IdBanda) REFERENCES Banda(IdBanda)

ALTER TABLE GenerosMusicalesFavoritos
	ADD CONSTRAINT fk_fanaticoGeneroFavorito FOREIGN KEY (IdFanatico) REFERENCES Fanatico (IdFanatico),
	CONSTRAINT fk_generoMusicalFavorito FOREIGN KEY (IdGenero) REFERENCES GenerosMusicales (IdGenero)

ALTER TABLE Integrante
	ADD CONSTRAINT fk_integranteBanda FOREIGN KEY (IdBanda) REFERENCES Banda (IdBanda)

ALTER TABLE Fanatico
	ADD CONSTRAINT fk_paisUsuario FOREIGN KEY (IdPais) REFERENCES Pais (IdPais)

------------------------------------------------------------------------------------------------------------

ALTER TABLE Actividad
	ADD CONSTRAINT fk_actividadBanda FOREIGN KEY (IdBanda) REFERENCES Banda(IdBanda),
	CONSTRAINT fk_actividadTipo FOREIGN KEY (TipoActividad) REFERENCES TipoActividad (IdTipoActividad)

ALTER TABLE Concierto
	ADD CONSTRAINT fk_concirtoActividad FOREIGN KEY (IdActividad) REFERENCES Actividad (IdActividad)

ALTER TABLE CalificacionConcierto
	ADD CONSTRAINT fk_calificacionConciertoFanatico FOREIGN KEY (IdFanatico) REFERENCES Fanatico(IdFanatico),
	CONSTRAINT fk_calificacionConciertoConcierto FOREIGN KEY (IdConcierto) REFERENCES Concierto(IdConcierto)

------------------------------------------------------------------------------------------------------------

ALTER TABLE CalificacionDisco
	ADD CONSTRAINT fk_calificacionDiscoFanatico FOREIGN KEY (IdFanatico) REFERENCES Fanatico(IdFanatico),
	CONSTRAINT fk_calificacionDiscoDisco FOREIGN KEY (IdDisco) REFERENCES Disco(IdDisco)

ALTER TABLE Disco
	ADD CONSTRAINT fk_discoBanda FOREIGN KEY (IdBanda) REFERENCES Banda(IdBanda),
	CONSTRAINT fk_discoGenero FOREIGN KEY (IdGenero) REFERENCES GenerosMusicales(IdGenero)

ALTER TABLE Cancion
	ADD CONSTRAINT fk_cancionDisco FOREIGN KEY (IdDisco) REFERENCES Disco(IdDisco)