CREATE TABLE persona(
idPersona INT(60) NOT NULL UNIQUE AUTO_INCREMENT,
nombres VARCHAR(50) NOT NULL,
apellidos VARCHAR(50),
tipoDocumento INT(1) NOT NULL,
numeroDocumento INT(20) NOT NULL UNIQUE,
fecha_Nacimiento date,
direccion VARCHAR(50),
telefono INT (20) NOT NULL UNIQUE,
#KEYS FORANEAS
idTipoDocumento INT(2) NOT NULL,

#PRIMARY KEY
CONSTRAINT PK_idPersona PRIMARY  KEY (idPersona)
);

CREATE TABLE tipo_documento(
idTipoDocumento INT(2) NOT NULL UNIQUE AUTO_INCREMENT,
tipoDocumento VARCHAR(60) NOT NULL UNIQUE,

#PRIMARY KEY
CONSTRAINT PK_idTipoDocumento PRIMARY KEY (idTipoDocumento)
);

#FOREIGN KEYS
ALTER TABLE persona
ADD CONSTRAINT FK_idTipoDocumeto
FOREIGN KEY (idTipoDocumento) 
REFERENCES tipo_documento (idTipoDocumento)

