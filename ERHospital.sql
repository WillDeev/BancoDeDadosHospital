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
