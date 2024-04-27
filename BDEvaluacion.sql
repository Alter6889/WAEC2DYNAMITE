CREATE DATABASE BDEvaluacion


CREATE TABLE usuario (
    idusuario INT IDENTITY(1,1) NOT NULL,
	nomusuario varchar(100) NULL,
	email varchar(200) NULL,
	password varchar(300) NULL,
	nombres varchar(100) NULL,
	apellidos varchar(100) NULL,
	activo BIT NULL,
	CONSTRAINT users_pk PRIMARY KEY (idusuario)
);
CREATE TABLE rol (
	idrol INT IDENTITY (1,1) NOT NULL,
	nomrol varchar(300) NULL,
	CONSTRAINT roles_pk PRIMARY KEY (idrol)
);
CREATE TABLE usuario_rol (
	idusuario INT NOT NULL,
	idrol INT NOT NULL,
	CONSTRAINT user_role_pk PRIMARY KEY (idusuario, idrol),
	CONSTRAINT user_role_FK FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
	CONSTRAINT user_role_FK_1 FOREIGN KEY (idrol) REFERENCES rol(idrol)
);
CREATE TABLE Personaje
(
 IdPersonaje 		INT NOT NULL IDENTITY(1,1),
 NomPersonaje		VARCHAR(50) NOT NULL,
 ApePersonaje 		VARCHAR(50) NOT NULL,
 FechNacPersonaje	DATE NOT NULL,
 PRIMARY KEY (IdPersonaje)
);
CREATE TABLE ProgramaTv
(
 IdProgramaTv 		INT NOT NULL IDENTITY (1,1),
 Titulo 			VARCHAR(250) NOT NULL,
 Resumen 			VARCHAR(250) NOT NULL,
 FechaInicio	DATE NOT NULL,
 IdPersonaje 			INT NOT NULL,
 PRIMARY KEY (IdProgramaTv),
 FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje)
 );

 INSERT INTO  rol(idrol,nomrol)
 VALUES (1,'Administrador'),(2,'Turista'),(3,'Administrador'),(4,'User'),(5,'User')
 INSERT INTO Personaje (NomPersonaje,ApePersonaje,FechNacPersonaje)
 VALUES ('Alberto','Martinez','01-10-2000'),('Juan','Rodriguez','02-11-2003'),('Roberto','Fernandez','03-12-2009'),('Luis','McCarran','04-09-2005'),('Mario','Mario','15-08-1997')
 INSERT INTO ProgramaTv (IdProgramaTv,Titulo,Resumen,FechaInicio,IdPersonaje)
 VALUES (01,'Las aventuras de Alberto','Un joven explorador viaja por el mundo, descubriendo tesoros ocultos y resolviendo misterios emocionantes','10-10-2023',1),(02,'Valle Inquieto','En un pueblo apacible, secretos oscuros emergen cuando extraños eventos desafían la tranquilidad local','10-10-2023',2),
(03,'Entre Arenas Movedizas','En un pueblo costero, dramas familiares y conflictos personales se entrelazan mientras luchan contra los desafíos del destino','10-10-2023',3),(04,'Luis,El Magnifico','Un joven mago novato busca fama y fortuna mientras deslumbra al mundo con sus trucos sorprendentes y su carisma único','10/10/2024',4),
(05,'El Camino de las Estrellas','Un aspirante a astrónomo, lidera una expedición espacial para descubrir nuevos mundos y desentrañar los misterios del cosmos','10-12-2024',5)
