--criando banco de dados
	CREATE DATABASE nyos;
	go
--end
--
	USE  NYOS;
--
--
	CREATE TABLE Acesso(
		IDAcesso INT PRIMARY KEY IDENTITY NOT NULL,
		Tipo VARCHAR (50) NOT NULL
	);
--
--
	CREATE TABLE Categoria(
		IDCategoria INT PRIMARY KEY IDENTITY NOT NULL,
		Titulo VARCHAR (50) NOT NULL
	);
--
--
	CREATE TABLE Localizacao(
		IDLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
		logradouro VARCHAR (50) NOT NULL,
		numero VARCHAR (50),
		complemento VARCHAR (50),
		bairro VARCHAR (50) NOT NULL,
		cidade VARCHAR (50) NOT NULL,
		UF CHAR (2) NOT NULL,
		CEP VARCHAR (50) NOT NULL,
	);
--

--
	CREATE TABLE Usuario(
		IDUsuario INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR (50) NOT NULL,
		email VARCHAR (100) NOT NULL,
		senha VARCHAR (100) NOT NULL,
		dataNascimento DATETIME,

		--FKEY
		IDAcesso INT FOREIGN KEY REFERENCES Acesso (IDAcesso)
	);
--
--
	CREATE TABLE Evento(
		IDEvento INT PRIMARY KEY IDENTITY NOT NULL,
		dataEvento DATETIME,
		AcessoRestrito BINARY DEFAULT 0,
		Capacidade INT NOT NULL,
		Descricao VARCHAR (255),

		--FKEY
		IDLocalizacao INT FOREIGN KEY REFERENCES Localizacao (IDLocalizacao),
		IDCategoria INT FOREIGN KEY REFERENCES Categoria (IDCategoria),

	);
--
--
	CREATE TABLE Convite(
		IDConvite INT PRIMARY KEY IDENTITY NOT NULL,
		confirmado BIT DEFAULT NULL,
		
		--FKEY
		IDEvento INT FOREIGN KEY REFERENCES Evento (IDEvento),
		IDUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario (IDUsuario),
		IDUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario (IDUsuario),


	);
--
--
	CREATE TABLE Presenca(
		IDPresenca INT PRIMARY KEY IDENTITY NOT NULL,
		confirmado BIT DEFAULT NULL,
		
		--FKEY
		IDEvento INT FOREIGN KEY REFERENCES Evento (IDEvento),
		IDUsuario INT FOREIGN KEY REFERENCES Usuario (IDUsuario),

	);
--