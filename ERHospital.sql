CREATE TABLE `tbl_medicos` (
  `id_medicos` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) UNIQUE NOT NULL,
  `crm` varchar(10) NOT NULL,
  `especialidade` varchar(100) NOT NULL
);

CREATE TABLE `tbl_enfermeiros` (
  `id_enfermeiros` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) UNIQUE NOT NULL,
  `coren` varchar(5) NOT NULL,
  `especialidade` varchar(100) NOT NULL
);

CREATE TABLE `tbl_consulta` (
  `id_consulta` integer PRIMARY KEY,
  `data_e_hora` datetime NOT NULL,
  `medico_responsavel` varchar(255) NOT NULL,
  `valor_consulta` decimal(10,2) NOT NULL,
  `paciente` varchar(255) NOT NULL,
  `receita` text NOT NULL
);

CREATE TABLE `tbl_paciente` (
  `id_paciente` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(14) UNIQUE NOT NULL,
  `rg` varchar(12) NOT NULL
);

CREATE TABLE `tbl_convenio` (
  `id_convenio` integer PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `cnpj` varchar(18) UNIQUE NOT NULL,
  `tempo_carencia` datetime NOT NULL
);

CREATE TABLE `tbl_receita` (
  `id_receita` integer PRIMARY KEY,
  `medicamentos_receitados` varchar(300) NOT NULL,
  `quantidade` varchar(100) NOT NULL,
  `instrucao_de_uso` text NOT NULL
);

CREATE TABLE `tbl_quarto` (
  `id_quarto` integer PRIMARY KEY,
  `numero_quarto` integer NOT NULL,
  `tipo` integer NOT NULL,
);

CREATE TABLE `tbl_internacao` (
  `id_internacao` integer PRIMARY KEY,
  `data_entrada` datetime NOT NULL,
  `previsao_alta` datetime,
  `data_efetiva_alta` datetime NOT NULL,
  `procedimento` text NOT NULL
);

CREATE TABLE `tbl_endereco` (
  `id_endereco` integer PRIMARY KEY,
  `rua` varchar(255) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
);

-- Inserindo dados no tbl_medicos
use hospital; 

INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(1, 'Rudney Maciel Ferreira', '328.894.956-39', '3959011540', 'Infectologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(2, 'Gustavo Brenno Lopes', '594.555.907-51', '1332057923', 'Endocrinologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(3, 'Alisson Correia Maciel', '332.895.741-30', '5267466933', 'Ortopedia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(4, 'Yasmin Pires Pereira', '928.894.360-98', '3124076244', 'Cardiologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(5, 'Maikon Lima Pires', '906.008.336-90', '9688718210', 'Cirurgia Geral');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(6, 'Andrey Muniz Maciel', '831.978.483-22', '5543634329', 'Oncologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(7, 'Livia Assis Alves', '477.414.348-02', '6267109638', 'Infectologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(8, 'Laysla Rayssa Vieira Sartori', '269.618.422-40', '1820590114', 'Otorrinolaringologia');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(9, 'Esther Junior Alves', '065.497.049-10', '9868982992', 'Pediatria');
INSERT INTO tbl_medicos(id_medicos, nome, cpf, crm, especialidade) VALUES(10, 'Livia Ferreira Ramos', '438.739.904-07', '0196355769', 'Neurologia');

-- Inserindo dados no tbl_consulta
use hospital;

INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(1, '2018-01-04 04:00:19', 'Rudney Maciel Ferreira', '200.00', 'Noah Choque Alves', 'Paracetamol 500mg, tomar de 8 em 8 horas + Loratadina 10mg à noite');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(2, '2021-06-13 17:08:43', 'Gustavo Brenno Lopes', '230.00', 'Marcio Eduardo Choque Lopes', 'Amoxicilina 500mg de 12 em 12 horas + Dipirona sódica 1g se febre');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(3, '2016-01-05 12:17:14', 'Esther Junior Alves', '200.00', 'Gabriel Pinheiro Ferreira', 'Consulta apenas para acompanhamento, sem necessidade de medicação.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(4, '2016-04-09 07:12:23', 'Rudney Maciel Ferreira', '230.00', 'Joel Cristina Jesus', 'Vitamina D 7000UI por semana + Cálcio 500mg 2x ao dia');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(5, '2018-09-28 09:55:48', 'Yasmin Pires Pereira', '150.00', 'Noah Correia Lima', 'Exame clínico normal, orientações gerais fornecidas.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(6, '2015-08-24 05:22:11', 'Alisson Correia Maciel', '200.00', 'Isabelly Padula Rocha', 'Ibuprofeno 600mg após refeições + Omeprazol 20mg antes do café');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(7, '2021-02-24 19:56:35', 'Gustavo Brenno Lopes', '230.00', 'Gustavo Nascimento Jesus', 'Sem sintomas relevantes no momento, retorno em 30 dias.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(8, '2016-08-08 14:11:48', 'Rudney Maciel Ferreira', '230.00', 'Marcio Eduardo Ribeiro Choque', 'Avaliação de rotina. Sem prescrição.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(9, '2017-11-27 18:20:58', 'Livia Ferreira Ramos', '200.00', 'Juliana Souza Ferreira', 'Azitromicina 500mg por 3 dias + Nimesulida 100mg se dor');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(10, '2015-05-22 08:11:41', 'Livia Ferreira Ramos', '230.00', 'Renan Cristina Maciel', 'Cetoprofeno 100mg + Bromoprida 10mg em caso de náusea');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(11, '2020-06-23 09:05:20', 'Livia Ferreira Ramos', '200.00', 'Jullia Aisha Borges', 'Paciente apenas buscou orientação. Nenhuma medicação indicada.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(12, '2017-04-20 16:57:24', 'Gustavo Brenno Lopes', '200.00', 'Jullia Aisha Sartori', 'Cetirizina 10mg 1x ao dia + Nebulização com Berotec + Atrovent se necessário');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(13, '2015-09-30 03:13:34', 'Laysla Rayssa Vieira Sartori', '200.00', 'Gabriel Pinheiro Brenno', 'Fluoxetina 20mg ao acordar + Clonazepam 0.5mg à noite');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(14, '2018-08-12 20:43:16', 'Livia Assis Alves', '150.00', 'Mateus Araujo Quispe', 'Revisão de exames laboratoriais. Medicação suspensa por ora.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(15, '2021-04-22 21:23:12', 'Andrey Muniz Maciel', '200.00', 'Jullia Araujo Sartori', 'Prednisona 20mg em jejum + Loratadina 10mg à noite');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(16, '2021-05-07 09:10:42', 'Andrey Muniz Maciel', '200.00', 'Isaac Cristina Sebastian', 'Metformina 850mg 2x ao dia + Glibenclamida 5mg ao almoço');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(17, '2017-06-28 06:03:24', 'Alisson Correia Maciel', '150.00', 'Victor Ramon Silva Souza', 'Consulta pré-operatória. Nenhuma medicação prescrita.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(18, '2015-03-28 01:57:11', 'Maikon Lima Pires', '200.00', 'Esther Alvarenga Alves', 'Atorvastatina 10mg à noite + AAS infantil 100mg pela manhã');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(19, '2015-11-23 01:50:04', 'Yasmin Pires Pereira', '200.00', 'Samuel Sebastian Brenno', 'Acompanhamento psicológico. Receita não aplicável.');
INSERT INTO tbl_consulta(id_consulta, data_e_hora, medico_responsavel, valor_consulta, paciente, receita) VALUES(20, '2021-01-16 17:53:08', 'Alisson Correia Maciel', '200.00', 'Mayan Cardozo Sartori', 'Losartana 50mg pela manhã + Hidroclorotiazida 25mg após almoço');

ALTER TABLE `tbl_endereco` ADD FOREIGN KEY (`id_endereco`) REFERENCES `tbl_paciente` (`endereco`);

ALTER TABLE `tbl_quarto` ADD FOREIGN KEY (`id_quarto`) REFERENCES `tbl_medicos` (`id_medicos`);

ALTER TABLE `tbl_receita` ADD FOREIGN KEY (`id_receita`) REFERENCES `tbl_medicos` (`id_medicos`);

ALTER TABLE `tbl_receita` ADD FOREIGN KEY (`id_receita`) REFERENCES `tbl_paciente` (`id_paciente`);

ALTER TABLE `tbl_convenio` ADD FOREIGN KEY (`id_convenio`) REFERENCES `tbl_paciente` (`id_paciente`);

ALTER TABLE `tbl_consulta` ADD FOREIGN KEY (`id_consulta`) REFERENCES `tbl_medicos` (`id_medicos`);

ALTER TABLE `tbl_consulta` ADD FOREIGN KEY (`id_consulta`) REFERENCES `tbl_paciente` (`id_paciente`);

ALTER TABLE `tbl_internacao` ADD FOREIGN KEY (`id_internacao`) REFERENCES `tbl_enfermeiros` (`id_enfermeiros`);

ALTER TABLE `tbl_internacao` ADD FOREIGN KEY (`id_internacao`) REFERENCES `tbl_paciente` (`id_paciente`);

ALTER TABLE `tbl_internacao` ADD FOREIGN KEY (`id_internacao`) REFERENCES `tbl_medicos` (`id_medicos`);
