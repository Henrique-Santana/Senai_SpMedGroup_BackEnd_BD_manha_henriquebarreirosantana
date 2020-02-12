
INSERT INTO Especialidade (TituloEspecialidade)
VALUES  ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO Situacao (TituloSituacao)
VALUES  ('Cancelada'),
		('Realizada'),
		('Agendada');

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES  ('ADM'),
		('Paciente'),
		('Medico');
		SELECT * FROM TipoUsuario;
INSERT INTO Usuario (Nome,Email,Senha,IDTipoUsuario,IDClinica)
VALUES 
		('Adiministrador', 'Adm@adm.com','adm123',2,1),
		('Ligia',	'ligia@gmail.com' ,	'ligia123',1,1),
		('Alexandre',	'alexandre@gmail.com',  'ale1231',1,1),
		('Fernando'	,'fernando@gmail.com' ,  'fer1223',1,1),
		('Henrique',	'henrique@gmail.com ','hen123',1,1),
		('João'	,'joao@hotmail.com ', 'jo123',1,1	),
		('Bruno'	,'bruno@gmail.com' , 'bru123',1,1	),
		('Mariana'	,'mariana@outlook.com',  'mar123',1,1	),
		('Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br ' ,'ri1232',3,1	),
		('Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br', ' ro123',3,1),
		('Helena Strada','helena.souza@spmedicalgroup.com.br', ' hel123',3,1);

INSERT INTO Clinica (NomeFantasia,CNPJ,RazaoSocial ,EnderecoClinica ,HorarioFuncionamento)
VALUES 
		('Clinica Possarle' ,'1231322233',	'SP Medical Group',	'Av. Barão Limeira ,532, São Paulo,','	12h');

INSERT INTO Paciente (RG ,CPF ,DataNascimento ,EnderecoPaciente ,Telefone,IDUsuario)
VALUES  ('43522543-5','94839859000','13/10/1983','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000', '113456-7654',1),
		('32654345-7','73556944057','23/07/2001','Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200','1198765-6543',2),
		('54636525-3','16839338002','10/10/1978' ,'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200','1197208-4453',3),
		('54366362-5'	,'14332654765','13/10/1985' ,'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030','113456-6543',4),
		('332544444-1', '91305348010','27/08/1975' ,'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380','117656-6377',5),
		('54566266-7'	,'79799299004','21/03/1972','Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001','1195436-8769',6),
		('54566266-8', '13771913039', '05/03/2018' ,'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140', '0',7);

INSERT INTO Medico(CRM,IDUsuario,IDEspecialidade)
VALUES  ('54356-SP', 8, 2),
		('53452-SP', 9, 17),
		('65463-SP', 10, 16);


INSERT INTO Consulta (DataConsulta,Descricao,IDMedico,IDPaciente,IDSituacao)
VALUES  ('20/01/2020 15:00', 'DES',3, 1, 2),
		('06/01/2020 10:00', 'DES',2, 2, 1),
		('07/02/2020 11:00', 'DES',2, 3, 2),
		('06/02/2018 10:00', 'DES',2, 4, 2),
		('07/02/2019 11:00', 'DES',1, 5, 1),
		('08/03/2020 15:00', 'DES',3, 6, 3),
		('09/03/2020 11:00', 'DES',1, 7, 3);