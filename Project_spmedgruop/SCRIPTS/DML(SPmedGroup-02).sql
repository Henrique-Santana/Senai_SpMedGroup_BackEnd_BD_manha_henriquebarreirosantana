
INSERT INTO Especialidade (TituloEspecialidade)
VALUES  ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da M�o'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pedi�trica'),
		('Cirurgia Pl�stica'),
		('Cirurgia Tor�cica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');
GO

INSERT INTO Situacao (TituloSituacao)
VALUES  ('Cancelada'),
		('Realizada'),
		('Agendada');
GO

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES  ('ADM'),
		('Paciente'),
		('Medico');
GO

INSERT INTO Cidade (TituloCidade)
VALUES
		('S�o Paulo'),
		('Bela Vista'),
		('Indian�polis'),
		('Barueri'),
		('Santa Luiza'),
		('Ribeir�o Pires');
GO

INSERT INTO Estado (TituloEstado)
VALUES	
		('S�o Paulo'),
		('Rio');
GO

INSERT INTO Clinica (NomeFantasia,CNPJ,RazaoSocial ,Logradouro, Bairro, CEP, IDCidade, IDEstado , HorarioFuncionamento)
VALUES 
		('Clinica Possarle',	'1231322233',	'SP Medical Group',	'Av. Bar�o Limeira ,532',	'Santa Cecilia','01202-001',	1,	1,	'12h');
GO

INSERT INTO Usuario (Email,Senha,IDTipoUsuario,IDClinica)
VALUES 
		('ligia@gmail.com',							'ligia123',	1,	1),
		('alexandre@gmail.com',						'ale1231',	1,	1),
		('fernando@gmail.com',						'fer1223',	1,	1),
		('henrique@gmail.com',						'hen123',	1,	1),
		('joao@hotmail.com',						'jo123',	1,	1),
		('bruno@gmail.com',							'bru123',	1,	1),
		('mariana@outlook.com',						'mar123',	1,	1),
		('ricardo.lemos@spmedicalgroup.com.br',		'ri1232',	3,	1),
		('roberto.possarle@spmedicalgroup.com.br',	'ro123',	3,	1),
		('helena.souza@spmedicalgroup.com.br',		'hel123',	3,	1);
GO

INSERT INTO Paciente (Nome, RG, CPF, DataNascimento, Logradouro,	Bairro,	IDCidade,	IDEstado,	CEP,Telefone,IDUsuario)
VALUES  ('Ligia',		'43522543-5',	'94839859000',	'13/10/1983',	'Rua Estado de Israel 240',			'Vila Mariana',		1,	1,	'04022-100',	'1193456-7654',	1),
		('Alexandre',	'32654345-7',	'73556944057',	'23/07/2001',	'Av. Paulista, 1578',				'Bela Vista',		1,	1,	'01310-200',	'1198765-6543',	2),
		('Fernando'	,	'54636525-3',	'16839338002',	'10/10/1978',	'Av. Ibirapuera 2927',				'Indian�polis',		1,	1,	'04029-200',	'1197208-4453',	3),
		('Henrique',	'54366362-5',	'14332654765',	'13/10/1985',	'R. Vit�ria, 120',					'Vila Sao Jorge',	4,	1,	'06402-030',	'1193456-6543',	4),
		('Jo�o',		'33254444-1',	'91305348010',	'27/08/1975',	'R. Ver. Geraldo de Camargo, 66',	'Santa Luzia',		6,	1,	'09405-380',	'1197656-6377',	5),
		('Bruno',		'54566266-7',	'79799299004',	'21/03/1972',	'Alameda dos Arapan�s, 945',		'Indian�polis',		1,	1,	'04524-001',	'1195436-8769', 6),
		('Mariana',		'54566266-8',	'13771913039',	'05/03/2018',	'R Sao Antonio, 232',				'Vila Universal,',	4,	1,	'06407-140',	'000000000000',	7);
GO

INSERT INTO Medico(Nome,CRM,IDUsuario,IDEspecialidade)
VALUES  ('Ricardo Lemos',		'54356-SP', 8,	2),
		('Roberto Possarle',	'53452-SP', 9,	17),
		('Helena Strada',		'65463-SP', 10,	16);
GO

INSERT INTO Consulta (DataConsulta,Descricao,IDMedico,IDPaciente,IDSituacao, IDClinica)
VALUES  ('20/01/2020 15:00', 'DES',3, 1, 2, 1),
		('06/01/2020 10:00', 'DES',2, 2, 1, 1),
		('07/02/2020 11:00', 'DES',2, 3, 2, 1),
		('06/02/2018 10:00', 'DES',2, 4, 2, 1),
		('07/02/2019 11:00', 'DES',1, 5, 1, 1),
		('08/03/2020 15:00', 'DES',3, 6, 3, 1),
		('09/03/2020 11:00', 'DES',1, 7, 3, 1);
GO