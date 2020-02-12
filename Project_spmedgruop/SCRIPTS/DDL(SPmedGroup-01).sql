CREATE DATABASE SPMedicalGruopManha;

USE SPMedicalGruopManha;

CREATE TABLE TipoUsuario(
	IDTipoUsuario      INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario  VARCHAR (50) NOT NULL UNIQUE
);

CREATE TABLE Situacao(
	IDSituacao       INT PRIMARY KEY IDENTITY,
	TituloSituacao   VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Especialidade(
	IDEspecialidade      INT PRIMARY KEY IDENTITY,
	TituloEspecialidade  VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Clinica(
	IDClinica            INT PRIMARY KEY IDENTITY,
	NomeFantasia         VARCHAR (100),
	CNPJ                 CHAR(14) NOT NULL UNIQUE,
	RazaoSocial          VARCHAR (50) NOT NULL,
	EnderecoClinica      VARCHAR (50) NOT NULL UNIQUE,
	HorarioFuncionamento VARCHAR (10)
);

CREATE TABLE Usuario(
	IDUsuario     INT PRIMARY KEY IDENTITY,
	Nome          VARCHAR (50),
	Email         VARCHAR (50),
	Senha         VARCHAR (50),
	IDTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IDTipoUsuario),
	IDClinica     INT FOREIGN KEY REFERENCES Clinica (IDClinica)
);

CREATE TABLE Paciente (
	IDPaciente       INT PRIMARY KEY IDENTITY,
	RG               VARCHAR (50) NOT NULL UNIQUE,
	CPF              VARCHAR (50) NOT NULL UNIQUE,
	DataNascimento   DATETIME2 NOT NULL,
	EnderecoPaciente VARCHAR (255) NOT NULL,
	Telefone         VARCHAR (50), 
	IDUsuario        INT FOREIGN KEY REFERENCES Usuario (IDUsuario)
);

CREATE TABLE Medico (
	IDMedico        INT PRIMARY KEY IDENTITY,
	CRM             VARCHAR(50) NOT NULL,
	IDUsuario       INT FOREIGN KEY REFERENCES Usuario (IDUsuario),
	IDEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IDEspecialidade)
);

CREATE TABLE Consulta (
	IDConsulta   INT PRIMARY KEY IDENTITY,
	DataConsulta VARCHAR (30) NOT NULL,
	Descricao    VARCHAR (255),
	IDMedico     INT FOREIGN KEY REFERENCES Medico (IDMedico),
	IDPaciente   INT FOREIGN KEY REFERENCES Paciente (IDPaciente),
	IDSituacao   INT FOREIGN KEY REFERENCES Situacao (IDSituacao)
);