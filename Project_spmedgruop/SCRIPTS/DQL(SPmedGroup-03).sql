
USE SPMedicalGruopManha;
--Quantidade de usuários após realizar a importação do banco de dados.
SELECT COUNT(*) AS TotalUsuarios FROM Usuario

--Alterar data de nascimento para mes dia e ano.
SELECT CONVERT (VARCHAR(10),DataNascimento,110) AS [MM-DD-YYYY]
FROM Paciente;

--MOSTRAR OS NOMES DOS MEDICOS NAS CONSULTAS
SELECT Nome AS Médico, Descricao, DataConsulta, TituloSituacao AS Situação, IdPaciente FROM Usuario
INNER JOIN Medico ON Usuario.IdUsuario = Medico.IdUsuario
INNER JOIN Consulta ON Consulta.IdMedico = Medico.IdMedico
INNER JOIN Situacao ON Situacao.IdSituacao = Consulta.IdSituacao
--MOSTRAR OS NOMES DOS PACIENTES NAS CONSULTAS
SELECT Nome AS Paciente, Descricao, DataConsulta, TituloSituacao,IdMedico FROM Usuario
INNER JOIN Paciente ON Usuario.IdUsuario = Paciente.IdUsuario
INNER JOIN Consulta ON Consulta.IdMedico = Paciente.IdPaciente
INNER JOIN Situacao ON Situacao.IdSituacao = Consulta.IdSituacao
