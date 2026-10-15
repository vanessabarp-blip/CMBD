-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.3 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para producao
CREATE DATABASE IF NOT EXISTS `producao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `producao`;

-- Copiando estrutura para tabela producao.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.clientes: ~101 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `cpf_cnpj`, `rua`, `telefone`, `numero`, `bairro`, `cep`, `referencia`) VALUES
	(1, 'Ana Beatriz Souza', '12345678901', 'Rua das Flores', '47991234567', '120', 'Centro', '89200001', 'Próximo à praça central'),
	(2, 'Bruno Henrique Lima', '23456789012', 'Rua São Paulo', '47992345678', '245', 'Vila Nova', '89200002', 'Ao lado da escola'),
	(3, 'Camila Oliveira Santos', '34567890123', 'Rua das Palmeiras', '47993456789', '87', 'São Pedro', '89200003', 'Perto do mercado'),
	(4, 'Daniel Ferreira Costa', '45678901234', 'Rua XV de Novembro', '47994567890', '310', 'Centro', '89200004', 'Em frente à igreja'),
	(5, 'Eduarda Martins Silva', '56789012345', 'Rua Amazonas', '47995678901', '56', 'América', '89200005', 'Próximo ao posto'),
	(6, 'Felipe Almeida Rocha', '67890123456', 'Rua Brasil', '47996789012', '178', 'Bucarein', '89200006', 'Perto do terminal'),
	(7, 'Gabriela Pereira Souza', '78901234567', 'Rua Paraná', '47997890123', '92', 'Iririú', '89200007', 'Ao lado da farmácia'),
	(8, 'Henrique Gomes Alves', '89012345678', 'Rua Santa Catarina', '47998901234', '415', 'Boa Vista', '89200008', 'Próximo ao campo'),
	(9, 'Isabela Rodrigues Lima', '90123456789', 'Rua João Pessoa', '47999012345', '63', 'Saguaçu', '89200009', 'Em frente ao parque'),
	(10, 'João Pedro Martins', '11223344556', 'Rua Blumenau', '47990123456', '201', 'América', '89200010', 'Perto do supermercado'),
	(11, 'Karina Fernandes Souza', '22334455667', 'Rua Rio de Janeiro', '47991234568', '145', 'Centro', '89200011', 'Próximo ao banco'),
	(12, 'Lucas Gabriel Oliveira', '33445566778', 'Rua Bahia', '47992345679', '78', 'Anita Garibaldi', '89200012', 'Ao lado da padaria'),
	(13, 'Mariana Costa Pereira', '44556677889', 'Rua São José', '47993456780', '329', 'Floresta', '89200013', 'Perto da praça'),
	(14, 'Nathan Ribeiro Santos', '55667788990', 'Rua Minas Gerais', '47994567891', '112', 'Boehmerwald', '89200014', 'Próximo à escola'),
	(15, 'Olivia Mendes Rocha', '66778899001', 'Rua das Acácias', '47995678902', '267', 'Jardim Iririú', '89200015', 'Em frente ao condomínio'),
	(16, 'Paulo Henrique Silva', '77889900112', 'Rua das Orquídeas', '47996789013', '94', 'Costa e Silva', '89200016', 'Perto da academia'),
	(17, 'Queila Cristina Alves', '88990011223', 'Rua São Bento', '47997890124', '350', 'Centro', '89200017', 'Ao lado da lotérica'),
	(18, 'Rafael Augusto Lima', '99001122334', 'Rua Paraná', '47998901235', '166', 'Glória', '89200018', 'Próximo ao hospital'),
	(19, 'Sabrina Fernanda Costa', '10112233445', 'Rua Itajaí', '47999012346', '73', 'Boa Vista', '89200019', 'Perto da escola municipal'),
	(20, 'Thiago Martins Souza', '21223344556', 'Rua Joinville', '47990123457', '284', 'Saguaçu', '89200020', 'Em frente à praça'),
	(21, 'Amanda Caroline Rocha', '32334455667', 'Rua Florianópolis', '47991234569', '135', 'Centro', '89200021', 'Próximo à prefeitura'),
	(22, 'Bernardo Alves Pereira', '43445566778', 'Rua Curitiba', '47992345670', '47', 'América', '89200022', 'Ao lado do restaurante'),
	(23, 'Clara Vitória Mendes', '54556677889', 'Rua Porto Alegre', '47993456781', '198', 'Glória', '89200023', 'Perto do shopping'),
	(24, 'Diego Fernandes Lima', '65667788990', 'Rua Recife', '47994567892', '321', 'Iririú', '89200024', 'Próximo à igreja'),
	(25, 'Elisa Martins Costa', '76778899001', 'Rua Fortaleza', '47995678903', '82', 'Floresta', '89200025', 'Em frente ao mercado'),
	(26, 'Fernando Oliveira Santos', '87889900112', 'Rua Salvador', '47996789014', '259', 'Bucarein', '89200026', 'Perto do ponto de ônibus'),
	(27, 'Giovana Pereira Alves', '98990011223', 'Rua Natal', '47997890125', '104', 'Centro', '89200027', 'Ao lado da loja'),
	(28, 'Hugo Gabriel Souza', '19001122334', 'Rua Manaus', '47998901236', '376', 'Boa Vista', '89200028', 'Próximo ao posto de saúde'),
	(29, 'Júlia Fernandes Rocha', '20112233445', 'Rua Belém', '47999012347', '69', 'Costa e Silva', '89200029', 'Perto da padaria'),
	(30, 'Kevin Henrique Lima', '31223344556', 'Rua Goiânia', '47990123458', '153', 'Saguaçu', '89200030', 'Em frente ao condomínio'),
	(31, 'Larissa Beatriz Santos', '42334455667', 'Rua Brasília', '47991234560', '217', 'América', '89200031', 'Próximo ao parque'),
	(32, 'Marcelo Augusto Pereira', '53445566778', 'Rua Vitória', '47992345671', '88', 'Glória', '89200032', 'Ao lado da farmácia'),
	(33, 'Nicole Martins Silva', '64556677889', 'Rua Campo Grande', '47993456782', '342', 'Iririú', '89200033', 'Perto da escola'),
	(34, 'Otávio Rodrigues Costa', '75667788990', 'Rua Cuiabá', '47994567893', '126', 'Centro', '89200034', 'Próximo ao banco'),
	(35, 'Patrícia Gomes Alves', '86778899001', 'Rua Londrina', '47995678904', '231', 'Floresta', '89200035', 'Em frente à praça'),
	(36, 'Renan Ferreira Souza', '97889900112', 'Rua Maringá', '47996789015', '57', 'Boehmerwald', '89200036', 'Perto do mercado'),
	(37, 'Sofia Caroline Lima', '18990011223', 'Rua Cascavel', '47997890126', '164', 'Boa Vista', '89200037', 'Ao lado da escola'),
	(38, 'Victor Hugo Pereira', '29001122334', 'Rua Foz do Iguaçu', '47998901237', '305', 'Centro', '89200038', 'Próximo à praça'),
	(39, 'Yasmin Oliveira Costa', '30112233445', 'Rua Chapecó', '47999012348', '71', 'América', '89200039', 'Perto da academia'),
	(40, 'Alexandre Mendes Silva', '41223344556', 'Rua Lages', '47990123459', '189', 'Saguaçu', '89200040', 'Em frente ao parque'),
	(41, 'Bianca Fernandes Rocha', '52334455667', 'Rua Joaçaba', '47991234561', '267', 'Iririú', '89200041', 'Próximo à igreja'),
	(42, 'Caio Henrique Alves', '63445566778', 'Rua Concórdia', '47992345672', '95', 'Centro', '89200042', 'Ao lado do mercado'),
	(43, 'Débora Martins Pereira', '74556677889', 'Rua Jaraguá', '47993456783', '214', 'Vila Nova', '89200043', 'Perto da escola'),
	(44, 'Eduardo Gabriel Santos', '85667788990', 'Rua São Bento do Sul', '47994567894', '138', 'Boa Vista', '89200044', 'Próximo ao campo'),
	(45, 'Flávia Cristina Lima', '96778899001', 'Rua Mafra', '47995678905', '326', 'América', '89200045', 'Em frente à padaria'),
	(46, 'Gustavo Rocha Souza', '17889900112', 'Rua Canoinhas', '47996789016', '76', 'Floresta', '89200046', 'Ao lado do restaurante'),
	(47, 'Helena Pereira Costa', '28990011223', 'Rua Rio Negrinho', '47997890127', '155', 'Centro', '89200047', 'Perto da prefeitura'),
	(48, 'Igor Martins Alves', '39001122334', 'Rua São Francisco', '47998901238', '278', 'Saguaçu', '89200048', 'Próximo ao shopping'),
	(49, 'Jéssica Fernanda Silva', '40112233445', 'Rua Guaramirim', '47999012349', '61', 'Vila Nova', '89200049', 'Em frente ao mercado'),
	(50, 'Leonardo Gomes Pereira', '51223344556', 'Rua Araquari', '47990123460', '193', 'Bucarein', '89200050', 'Perto do terminal'),
	(51, 'Mateus Gabriel Souza', '62334455667', 'Rua dos Ipês', '47991234670', '118', 'Centro', '89200101', 'Próximo à biblioteca'),
	(52, 'Natália Rodrigues Lima', '73445566778', 'Rua das Rosas', '47992345781', '236', 'Vila Nova', '89200102', 'Ao lado do mercado'),
	(53, 'Pedro Henrique Costa', '84556677889', 'Rua dos Lírios', '47993456892', '74', 'América', '89200103', 'Perto da escola'),
	(54, 'Raquel Fernanda Alves', '95667788990', 'Rua das Margaridas', '47994567903', '312', 'Boa Vista', '89200104', 'Em frente à praça'),
	(55, 'Samuel Pereira Rocha', '16778899001', 'Rua das Violetas', '47995678014', '159', 'Glória', '89200105', 'Próximo à farmácia'),
	(56, 'Tainá Cristina Santos', '27889900112', 'Rua dos Girassóis', '47996789125', '43', 'Floresta', '89200106', 'Ao lado da padaria'),
	(57, 'Uriel Martins Silva', '38990011223', 'Rua das Hortênsias', '47997890236', '287', 'Saguaçu', '89200107', 'Perto do parque'),
	(58, 'Valentina Gomes Pereira', '49001122334', 'Rua dos Jasmins', '47998901347', '96', 'Iririú', '89200108', 'Próximo ao posto'),
	(59, 'William Fernandes Costa', '50112233445', 'Rua das Begônias', '47999012458', '351', 'Bucarein', '89200109', 'Em frente ao banco'),
	(60, 'Zoe Martins Rocha', '61223344556', 'Rua dos Cravos', '47990123569', '127', 'Centro', '89200110', 'Perto da igreja'),
	(61, 'Arthur Gabriel Lima', '72334455667', 'Rua das Tulipas', '47991234671', '205', 'América', '89200111', 'Ao lado da academia'),
	(62, 'Beatriz Caroline Souza', '83445566778', 'Rua das Acácias', '47992345782', '68', 'Boa Vista', '89200112', 'Próximo ao supermercado'),
	(63, 'Carlos Eduardo Alves', '94556677889', 'Rua dos Cedros', '47993456893', '174', 'Vila Nova', '89200113', 'Em frente ao condomínio'),
	(64, 'Diana Fernandes Pereira', '15667788990', 'Rua dos Pinheiros', '47994567904', '292', 'Centro', '89200114', 'Perto do terminal'),
	(65, 'Enzo Miguel Costa', '26778899001', 'Rua das Araucárias', '47995678015', '115', 'Saguaçu', '89200115', 'Próximo à escola'),
	(66, 'Fernanda Oliveira Silva', '37889900112', 'Rua das Palmeiras', '47996789126', '326', 'Glória', '89200116', 'Ao lado da loja'),
	(67, 'Guilherme Henrique Rocha', '48990011223', 'Rua dos Eucaliptos', '47997890237', '82', 'Floresta', '89200117', 'Perto da praça'),
	(68, 'Heloísa Martins Costa', '59001122334', 'Rua das Figueiras', '47998901348', '241', 'Iririú', '89200118', 'Em frente à farmácia'),
	(69, 'Igor Gabriel Santos', '60112233445', 'Rua dos Ipês', '47999012459', '53', 'Boehmerwald', '89200119', 'Próximo ao mercado'),
	(70, 'Joana Beatriz Lima', '71223344556', 'Rua das Acácias', '47990123570', '369', 'Centro', '89200120', 'Ao lado da igreja'),
	(71, 'Kaique Rodrigues Souza', '82334455667', 'Rua dos Manacás', '47991234672', '141', 'América', '89200121', 'Perto do banco'),
	(72, 'Laura Vitória Pereira', '93445566778', 'Rua dos Jacarandás', '47992345783', '229', 'Boa Vista', '89200122', 'Próximo ao parque'),
	(73, 'Miguel Augusto Alves', '14556677889', 'Rua das Cerejeiras', '47993456894', '77', 'Vila Nova', '89200123', 'Em frente à escola'),
	(74, 'Nicolas Fernandes Rocha', '25667788990', 'Rua dos Coqueiros', '47994567905', '315', 'Saguaçu', '89200124', 'Perto da padaria'),
	(75, 'Olívia Gabriela Costa', '36778899001', 'Rua das Mangueiras', '47995678016', '103', 'Centro', '89200125', 'Ao lado do restaurante'),
	(76, 'Pietro Henrique Silva', '47889900112', 'Rua dos Limões', '47996789127', '186', 'Glória', '89200126', 'Próximo ao posto'),
	(77, 'Rebeca Martins Alves', '58990011223', 'Rua das Laranjeiras', '47997890238', '264', 'Floresta', '89200127', 'Em frente ao mercado'),
	(78, 'Sérgio Augusto Pereira', '69001122334', 'Rua das Goiabeiras', '47998901349', '91', 'Iririú', '89200128', 'Perto da academia'),
	(79, 'Tereza Cristina Santos', '70112233445', 'Rua das Amoreiras', '47999012460', '348', 'Bucarein', '89200129', 'Próximo ao terminal'),
	(80, 'Vitor Gabriel Lima', '81223344556', 'Rua dos Abacateiros', '47990123571', '137', 'Centro', '89200130', 'Ao lado da farmácia'),
	(81, 'Alice Fernanda Souza', '92334455667', 'Rua das Goiabeiras', '47991234673', '216', 'América', '89200131', 'Perto da praça'),
	(82, 'Breno Henrique Costa', '13445566778', 'Rua dos Pessegueiros', '47992345784', '59', 'Boa Vista', '89200132', 'Em frente à igreja'),
	(83, 'Cecília Martins Pereira', '24556677889', 'Rua das Ameixeiras', '47993456895', '278', 'Vila Nova', '89200133', 'Próximo à escola'),
	(84, 'Davi Lucas Alves', '35667788990', 'Rua dos Morangos', '47994567906', '124', 'Saguaçu', '89200134', 'Ao lado do mercado'),
	(85, 'Esther Gabriela Rocha', '46778899001', 'Rua das Framboesas', '47995678017', '307', 'Centro', '89200135', 'Perto do shopping'),
	(86, 'Fábio Martins Santos', '57889900112', 'Rua das Amoras', '47996789128', '85', 'Floresta', '89200136', 'Próximo ao parque'),
	(87, 'Giovanna Vitória Lima', '68990011223', 'Rua dos Mirtilos', '47997890239', '197', 'Glória', '89200137', 'Em frente à padaria'),
	(88, 'Heitor Fernandes Souza', '79001122334', 'Rua das Pitangas', '47998901350', '333', 'Iririú', '89200138', 'Ao lado da escola'),
	(89, 'Irene Caroline Alves', '80112233445', 'Rua dos Cajueiros', '47999012461', '66', 'Boehmerwald', '89200139', 'Perto do posto'),
	(90, 'José Miguel Pereira', '91223344556', 'Rua das Jabuticabeiras', '47990123572', '152', 'Centro', '89200140', 'Próximo à prefeitura'),
	(91, 'Lívia Gabriela Costa', '12334455667', 'Rua dos Maracujás', '47991234674', '273', 'América', '89200141', 'Em frente ao banco'),
	(92, 'Murilo Henrique Silva', '23445566778', 'Rua das Bananeiras', '47992345785', '109', 'Boa Vista', '89200142', 'Ao lado da academia'),
	(93, 'Nathalia Martins Rocha', '34556677889', 'Rua dos Mamoeiros', '47993456896', '321', 'Vila Nova', '89200143', 'Perto do mercado'),
	(94, 'Otto Gabriel Santos', '45667788990', 'Rua das Macieiras', '47994567907', '48', 'Saguaçu', '89200144', 'Próximo à praça'),
	(95, 'Priscila Fernandes Lima', '56778899001', 'Rua das Peras', '47995678018', '237', 'Centro', '89200145', 'Em frente à escola'),
	(96, 'Ruan Augusto Alves', '67889900112', 'Rua das Uvas', '47996789129', '143', 'Floresta', '89200146', 'Perto da farmácia'),
	(97, 'Sara Cristina Pereira', '78990011223', 'Rua dos Kiwi', '47997890240', '286', 'Glória', '89200147', 'Ao lado da padaria'),
	(98, 'Tomás Henrique Souza', '89001122334', 'Rua das Tangerinas', '47998901351', '97', 'Iririú', '89200148', 'Próximo ao parque'),
	(99, 'Valter Gabriel Costa', '90112233445', 'Rua dos Limões', '47999012462', '358', 'Bucarein', '89200149', 'Em frente ao condomínio'),
	(100, 'Felipe Martins Silva', '11223344557', 'Rua das Acerolas', '47990123573', '181', 'Centro', '89200150', 'Perto do terminal'),
	(101, 'Marcos Vinícius Rodrigues', '62334455678', 'Rua dos Pássaros', '47991234574', '208', 'Centro', '89200151', 'Próximo ao supermercado');

-- Copiando estrutura para tabela producao.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` float NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data_compra` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.compras: ~105 rows (aproximadamente)
INSERT INTO `compras` (`id`, `id_fornecedor`, `id_produto`, `quantidade`, `codigo`, `data_compra`) VALUES
	(1, 1, 10, 5, '5001', '2026-01-05 00:00:00'),
	(2, 2, 3, 12, '5002', '2026-01-06 00:00:00'),
	(3, 3, 15, 8, '5003', '2026-01-07 00:00:00'),
	(4, 4, 7, 20, '5004', '2026-01-08 00:00:00'),
	(5, 5, 1, 2, '5005', '2026-01-09 00:00:00'),
	(6, 1, 14, 15, '5006', '2026-01-10 00:00:00'),
	(7, 6, 9, 6, '5007', '2026-01-11 00:00:00'),
	(8, 7, 2, 30, '5008', '2026-01-12 00:00:00'),
	(9, 8, 18, 4, '5009', '2026-01-13 00:00:00'),
	(10, 9, 5, 10, '5010', '2026-01-14 00:00:00'),
	(11, 10, 11, 25, '5011', '2026-01-15 00:00:00'),
	(12, 2, 6, 7, '5012', '2026-01-16 00:00:00'),
	(13, 11, 20, 3, '5013', '2026-01-17 00:00:00'),
	(14, 12, 13, 18, '5014', '2026-01-18 00:00:00'),
	(15, 13, 8, 5, '5015', '2026-01-19 00:00:00'),
	(16, 3, 16, 14, '5016', '2026-01-20 00:00:00'),
	(17, 14, 4, 8, '5017', '2026-01-21 00:00:00'),
	(18, 15, 17, 11, '5018', '2026-01-22 00:00:00'),
	(19, 5, 12, 4, '5019', '2026-01-23 00:00:00'),
	(20, 16, 19, 22, '5020', '2026-01-24 00:00:00'),
	(21, 17, 10, 9, '5021', '2026-01-25 00:00:00'),
	(22, 18, 3, 16, '5022', '2026-01-26 00:00:00'),
	(23, 4, 1, 2, '5023', '2026-01-27 00:00:00'),
	(24, 19, 15, 35, '5024', '2026-01-28 00:00:00'),
	(25, 20, 7, 12, '5025', '2026-01-29 00:00:00'),
	(26, 6, 14, 6, '5026', '2026-01-30 00:00:00'),
	(27, 21, 2, 19, '5027', '2026-01-31 00:00:00'),
	(28, 22, 9, 8, '5028', '2026-02-01 00:00:00'),
	(29, 8, 18, 13, '5029', '2026-02-02 00:00:00'),
	(30, 23, 5, 27, '5030', '2026-02-03 00:00:00'),
	(31, 24, 11, 3, '5031', '2026-02-04 00:00:00'),
	(32, 10, 6, 15, '5032', '2026-02-05 00:00:00'),
	(33, 25, 20, 40, '5033', '2026-02-06 00:00:00'),
	(34, 12, 13, 7, '5034', '2026-02-07 00:00:00'),
	(35, 26, 8, 2, '5035', '2026-02-08 00:00:00'),
	(36, 27, 16, 21, '5036', '2026-02-09 00:00:00'),
	(37, 15, 4, 10, '5037', '2026-02-10 00:00:00'),
	(38, 28, 17, 5, '5038', '2026-02-11 00:00:00'),
	(39, 29, 12, 17, '5039', '2026-02-12 00:00:00'),
	(40, 18, 19, 9, '5040', '2026-02-13 00:00:00'),
	(41, 30, 10, 14, '5041', '2026-02-14 00:00:00'),
	(42, 20, 3, 6, '5042', '2026-02-15 00:00:00'),
	(43, 31, 1, 25, '5043', '2026-02-16 00:00:00'),
	(44, 22, 15, 11, '5044', '2026-02-17 00:00:00'),
	(45, 32, 7, 4, '5045', '2026-02-18 00:00:00'),
	(46, 25, 14, 18, '5046', '2026-02-19 00:00:00'),
	(47, 33, 2, 30, '5047', '2026-02-20 00:00:00'),
	(48, 27, 9, 8, '5048', '2026-02-21 00:00:00'),
	(49, 34, 18, 12, '5049', '2026-02-22 00:00:00'),
	(50, 30, 5, 1, '5050', '2026-02-23 00:00:00'),
	(51, 35, 11, 15, '5051', '2026-02-24 00:00:00'),
	(52, 11, 6, 8, '5052', '2026-02-25 00:00:00'),
	(53, 8, 20, 22, '5053', '2026-02-26 00:00:00'),
	(54, 19, 13, 5, '5054', '2026-02-27 00:00:00'),
	(55, 2, 8, 17, '5055', '2026-02-28 00:00:00'),
	(56, 14, 16, 12, '5056', '2026-03-01 00:00:00'),
	(57, 23, 4, 3, '5057', '2026-03-02 00:00:00'),
	(58, 5, 17, 28, '5058', '2026-03-03 00:00:00'),
	(59, 31, 12, 9, '5059', '2026-03-04 00:00:00'),
	(60, 12, 19, 14, '5060', '2026-03-05 00:00:00'),
	(61, 40, 10, 6, '5061', '2026-03-06 00:00:00'),
	(62, 7, 3, 33, '5062', '2026-03-07 00:00:00'),
	(63, 22, 1, 11, '5063', '2026-03-08 00:00:00'),
	(64, 16, 15, 4, '5064', '2026-03-09 00:00:00'),
	(65, 29, 7, 20, '5065', '2026-03-10 00:00:00'),
	(66, 3, 14, 18, '5066', '2026-03-11 00:00:00'),
	(67, 18, 2, 7, '5067', '2026-03-12 00:00:00'),
	(68, 27, 9, 25, '5068', '2026-03-13 00:00:00'),
	(69, 10, 18, 2, '5069', '2026-03-14 00:00:00'),
	(70, 33, 5, 30, '5070', '2026-03-15 00:00:00'),
	(71, 1, 11, 13, '5071', '2026-03-16 00:00:00'),
	(72, 25, 6, 8, '5072', '2026-03-17 00:00:00'),
	(73, 38, 20, 16, '5073', '2026-03-18 00:00:00'),
	(74, 15, 13, 1, '5074', '2026-03-19 00:00:00'),
	(75, 6, 8, 21, '5075', '2026-03-20 00:00:00'),
	(76, 21, 16, 10, '5076', '2026-03-21 00:00:00'),
	(77, 30, 4, 35, '5077', '2026-03-22 00:00:00'),
	(78, 9, 17, 6, '5078', '2026-03-23 00:00:00'),
	(79, 36, 12, 27, '5079', '2026-03-24 00:00:00'),
	(80, 17, 19, 4, '5080', '2026-03-25 00:00:00'),
	(81, 24, 10, 19, '5081', '2026-03-26 00:00:00'),
	(82, 13, 3, 12, '5082', '2026-03-27 00:00:00'),
	(83, 39, 1, 5, '5083', '2026-03-28 00:00:00'),
	(84, 4, 15, 24, '5084', '2026-03-29 00:00:00'),
	(85, 28, 7, 11, '5085', '2026-03-30 00:00:00'),
	(86, 37, 14, 8, '5086', '2026-03-31 00:00:00'),
	(87, 20, 2, 30, '5087', '2026-04-01 00:00:00'),
	(88, 2, 9, 15, '5088', '2026-04-02 00:00:00'),
	(89, 32, 18, 3, '5089', '2026-04-03 00:00:00'),
	(90, 11, 5, 22, '5090', '2026-04-04 00:00:00'),
	(91, 26, 11, 17, '5091', '2026-04-05 00:00:00'),
	(92, 8, 6, 9, '5092', '2026-04-06 00:00:00'),
	(93, 34, 20, 14, '5093', '2026-04-07 00:00:00'),
	(94, 19, 13, 2, '5094', '2026-04-08 00:00:00'),
	(95, 5, 8, 26, '5095', '2026-04-09 00:00:00'),
	(96, 22, 16, 7, '5096', '2026-04-10 00:00:00'),
	(97, 14, 4, 18, '5097', '2026-04-11 00:00:00'),
	(98, 3, 17, 12, '5098', '2026-04-12 00:00:00'),
	(99, 35, 12, 40, '5099', '2026-04-13 00:00:00'),
	(100, 16, 19, 6, '5100', '2026-04-14 00:00:00'),
	(101, 41, 10, 23, '5101', '2026-04-15 00:00:00'),
	(102, 10, 1, 4, '5008', '2026-09-10 00:00:00'),
	(103, 10, 1, 5, '5008', '2026-09-10 00:00:00'),
	(104, 10, 1, 5, '5008', '2026-09-10 00:00:00'),
	(105, 10, 1, 4, '5008', '2026-09-10 00:00:00');

-- Copiando estrutura para tabela producao.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.fornecedores: ~101 rows (aproximadamente)
INSERT INTO `fornecedores` (`id`, `nome`, `cpf_cnpj`, `rua`, `numero`, `bairro`, `cep`, `telefone`) VALUES
	(1, 'Distribuidora Vale Sul', '12345678000101', 'Rua das Indústrias', '120', 'Centro', '89201001', '47991234001'),
	(2, 'Comercial Santa Catarina', '23456789000112', 'Rua Joinville', '245', 'América', '89201002', '47992345002'),
	(3, 'Atacadista Bom Preço', '34567890000123', 'Rua Blumenau', '87', 'Vila Nova', '89201003', '47993456003'),
	(4, 'Alimentos Brasil Ltda', '45678901000134', 'Rua Paraná', '310', 'Boa Vista', '89201004', '47994567004'),
	(5, 'Distribuidora São José', '56789012000145', 'Rua São Paulo', '156', 'Floresta', '89201005', '47995678005'),
	(6, 'Comercial Oliveira', '67890123000156', 'Rua Amazonas', '78', 'Saguaçu', '89201006', '47996789006'),
	(7, 'Mercantil Primavera', '78901234000167', 'Rua das Palmeiras', '192', 'Iririú', '89201007', '47997890007'),
	(8, 'Atacado União', '89012345000178', 'Rua Rio Grande do Sul', '425', 'Centro', '89201008', '47998901008'),
	(9, 'Distribuidora Estrela', '90123456000189', 'Rua Bahia', '63', 'América', '89201009', '47999012009'),
	(10, 'Comercial Horizonte', '11234567000190', 'Rua Santa Catarina', '217', 'Glória', '89201010', '47990123010'),
	(11, 'Alimentos Primavera Ltda', '22345678000101', 'Rua das Acácias', '145', 'Floresta', '89201011', '47991234011'),
	(12, 'Distribuidora Nacional', '33456789000112', 'Rua São Bento', '329', 'Centro', '89201012', '47992345012'),
	(13, 'Comercial Boa Compra', '44567890000123', 'Rua Itajaí', '94', 'Bucarein', '89201013', '47993456013'),
	(14, 'Atacadão Catarinense', '55678901000134', 'Rua Curitiba', '278', 'Boa Vista', '89201014', '47994567014'),
	(15, 'Distribuidora Central', '66789012000145', 'Rua Porto Alegre', '116', 'Vila Nova', '89201015', '47995678015'),
	(16, 'Comercial São Pedro', '77890123000156', 'Rua Recife', '351', 'Saguaçu', '89201016', '47996789016'),
	(17, 'Mercado Atacadista Sul', '88901234000167', 'Rua Fortaleza', '82', 'Iririú', '89201017', '47997890017'),
	(18, 'Distribuidora Real', '99012345000178', 'Rua Salvador', '205', 'Centro', '89201018', '47998901018'),
	(19, 'Comercial Brasil Sul', '10123456000189', 'Rua Vitória', '174', 'América', '89201019', '47999012019'),
	(20, 'Atacado Econômico', '21234567000190', 'Rua Goiânia', '57', 'Glória', '89201020', '47990123020'),
	(21, 'Distribuidora Tropical', '32345678000101', 'Rua Brasília', '238', 'Floresta', '89201021', '47991234021'),
	(22, 'Comercial Avenida', '43456789000112', 'Rua Campo Grande', '103', 'Centro', '89201022', '47992345022'),
	(23, 'Alimentos do Sul', '54567890000123', 'Rua Cuiabá', '316', 'Boa Vista', '89201023', '47993456023'),
	(24, 'Distribuidora Imperial', '65678901000134', 'Rua Londrina', '76', 'Vila Nova', '89201024', '47994567024'),
	(25, 'Comercial Nova Era', '76789012000145', 'Rua Maringá', '189', 'América', '89201025', '47995678025'),
	(26, 'Atacadista União Sul', '87890123000156', 'Rua Chapecó', '264', 'Saguaçu', '89201026', '47996789026'),
	(27, 'Distribuidora Popular', '98901234000167', 'Rua Lages', '91', 'Iririú', '89201027', '47997890027'),
	(28, 'Comercial Bom Negócio', '19012345000178', 'Rua Joaçaba', '342', 'Centro', '89201028', '47998901028'),
	(29, 'Alimentos Catarinenses', '20123456000189', 'Rua Concórdia', '128', 'Glória', '89201029', '47999012029'),
	(30, 'Distribuidora Sul Brasil', '31234567000190', 'Rua Mafra', '219', 'Floresta', '89201030', '47990123030'),
	(31, 'Comercial Primavera Sul', '42345678000101', 'Rua Canoinhas', '65', 'Centro', '89201031', '47991234031'),
	(32, 'Atacado dos Amigos', '53456789000112', 'Rua Jaraguá', '287', 'Boa Vista', '89201032', '47992345032'),
	(33, 'Distribuidora Master', '64567890000123', 'Rua São Francisco', '153', 'América', '89201033', '47993456033'),
	(34, 'Comercial Nova Catarina', '75678901000134', 'Rua Guaramirim', '375', 'Vila Nova', '89201034', '47994567034'),
	(35, 'Alimentos Vitória', '86789012000145', 'Rua Araquari', '109', 'Saguaçu', '89201035', '47995678035'),
	(36, 'Distribuidora Mega Sul', '97890123000156', 'Rua São Bento do Sul', '231', 'Centro', '89201036', '47996789036'),
	(37, 'Comercial Econômico Sul', '18901234000167', 'Rua Rio Negrinho', '48', 'Iririú', '89201037', '47997890037'),
	(38, 'Atacadista Regional', '29012345000178', 'Rua São Francisco do Sul', '196', 'Glória', '89201038', '47998901038'),
	(39, 'Distribuidora Família', '30123456000189', 'Rua Guaramirim', '314', 'Floresta', '89201039', '47999012039'),
	(40, 'Comercial Estação', '41234567000190', 'Rua Schroeder', '72', 'Centro', '89201040', '47990123040'),
	(41, 'Distribuidora Bom Lar', '52345678000101', 'Rua Massaranduba', '155', 'Boa Vista', '89201041', '47991234041'),
	(42, 'Comercial Vale Verde', '63456789000112', 'Rua Corupá', '278', 'América', '89201042', '47992345042'),
	(43, 'Atacado Santa Luzia', '74567890000123', 'Rua Garuva', '89', 'Vila Nova', '89201043', '47993456043'),
	(44, 'Distribuidora Esperança', '85678901000134', 'Rua Itapoá', '207', 'Saguaçu', '89201044', '47994567044'),
	(45, 'Comercial Vale do Norte', '96789012000145', 'Rua São João', '341', 'Centro', '89201045', '47995678045'),
	(46, 'Alimentos Nova Geração', '17890123000156', 'Rua das Palmeiras', '126', 'Glória', '89201046', '47996789046'),
	(47, 'Distribuidora São Miguel', '28901234000167', 'Rua das Flores', '58', 'Floresta', '89201047', '47997890047'),
	(48, 'Comercial Grande Sul', '39012345000178', 'Rua das Orquídeas', '234', 'Iririú', '89201048', '47998901048'),
	(49, 'Atacadista Nova Opção', '40123456000189', 'Rua dos Ipês', '317', 'Centro', '89201049', '47999012049'),
	(50, 'Distribuidora Qualidade', '51234567000190', 'Rua das Acácias', '143', 'América', '89201050', '47990123050'),
	(51, 'Distribuidora Bom Sabor', '62345678000101', 'Rua das Palmeiras', '134', 'Centro', '89201101', '47991234051'),
	(52, 'Comercial Vale Azul', '73456789000112', 'Rua das Acácias', '276', 'América', '89201102', '47992345052'),
	(53, 'Atacadista São Lucas', '84567890000123', 'Rua dos Cedros', '91', 'Boa Vista', '89201103', '47993456053'),
	(54, 'Distribuidora Nova Vida', '95678901000134', 'Rua dos Pinheiros', '318', 'Floresta', '89201104', '47994567054'),
	(55, 'Comercial Bela Vista', '16789012000145', 'Rua das Hortênsias', '157', 'Saguaçu', '89201105', '47995678055'),
	(56, 'Atacado Central Norte', '27890123000156', 'Rua dos Ipês', '243', 'Vila Nova', '89201106', '47996789056'),
	(57, 'Distribuidora Mundo Novo', '38901234000167', 'Rua das Flores', '68', 'Glória', '89201107', '47997890057'),
	(58, 'Comercial São Gabriel', '49012345000178', 'Rua das Rosas', '185', 'Iririú', '89201108', '47998901058'),
	(59, 'Atacadista Bom Lar', '50123456000189', 'Rua dos Lírios', '329', 'Centro', '89201109', '47999012059'),
	(60, 'Distribuidora Sol Nascente', '61234567000190', 'Rua das Violetas', '104', 'América', '89201110', '47990123060'),
	(61, 'Comercial Estrela do Sul', '72345678000101', 'Rua dos Girassóis', '218', 'Boa Vista', '89201111', '47991234061'),
	(62, 'Atacado Nova Esperança', '83456789000112', 'Rua das Margaridas', '73', 'Floresta', '89201112', '47992345062'),
	(63, 'Distribuidora Santa Clara', '94567890000123', 'Rua das Begônias', '291', 'Vila Nova', '89201113', '47993456063'),
	(64, 'Comercial Jardim Sul', '15678901000134', 'Rua das Orquídeas', '146', 'Saguaçu', '89201114', '47994567064'),
	(65, 'Atacadista Imperial Sul', '26789012000145', 'Rua dos Jasmins', '357', 'Centro', '89201115', '47995678065'),
	(66, 'Distribuidora Boa Compra', '37890123000156', 'Rua dos Cravos', '82', 'Glória', '89201116', '47996789066'),
	(67, 'Comercial Vale Dourado', '48901234000167', 'Rua das Tulipas', '205', 'Iririú', '89201117', '47997890067'),
	(68, 'Atacado São Marcos', '59012345000178', 'Rua dos Manacás', '119', 'América', '89201118', '47998901068'),
	(69, 'Distribuidora Catarina Norte', '60123456000189', 'Rua dos Jacarandás', '334', 'Boa Vista', '89201119', '47999012069'),
	(70, 'Comercial Primeira Escolha', '71234567000190', 'Rua das Cerejeiras', '97', 'Centro', '89201120', '47990123070'),
	(71, 'Atacadista Vale Verde', '82345678000101', 'Rua dos Coqueiros', '261', 'Floresta', '89201121', '47991234071'),
	(72, 'Distribuidora Sol Nascente', '93456789000112', 'Rua das Mangueiras', '153', 'Saguaçu', '89201122', '47992345072'),
	(73, 'Comercial Boa Família', '14567890000123', 'Rua das Laranjeiras', '312', 'Vila Nova', '89201123', '47993456073'),
	(74, 'Atacado Catarinense Norte', '25678901000134', 'Rua dos Limões', '76', 'Centro', '89201124', '47994567074'),
	(75, 'Distribuidora QualiMais', '36789012000145', 'Rua das Goiabeiras', '228', 'América', '89201125', '47995678075'),
	(76, 'Comercial Nova Safra', '47890123000156', 'Rua das Amoreiras', '143', 'Glória', '89201126', '47996789076'),
	(77, 'Atacadista União Catarinense', '58901234000167', 'Rua dos Abacateiros', '387', 'Iririú', '89201127', '47997890077'),
	(78, 'Distribuidora Bom Negócio', '69012345000178', 'Rua dos Pessegueiros', '65', 'Boa Vista', '89201128', '47998901078'),
	(79, 'Comercial Norte Sul', '70123456000189', 'Rua das Ameixeiras', '194', 'Floresta', '89201129', '47999012079'),
	(80, 'Atacado São Bento', '81234567000190', 'Rua dos Morangos', '283', 'Centro', '89201130', '47990123080'),
	(81, 'Distribuidora Nova Opção', '92345678000101', 'Rua das Framboesas', '111', 'Saguaçu', '89201131', '47991234081'),
	(82, 'Comercial Santa Rita', '13456789000112', 'Rua das Amoras', '347', 'América', '89201132', '47992345082'),
	(83, 'Atacadista Boa Safra', '24567890000123', 'Rua dos Mirtilos', '88', 'Vila Nova', '89201133', '47993456083'),
	(84, 'Distribuidora Campo Verde', '35678901000134', 'Rua das Pitangas', '219', 'Glória', '89201134', '47994567084'),
	(85, 'Comercial Novo Horizonte', '46789012000145', 'Rua dos Cajueiros', '156', 'Centro', '89201135', '47995678085'),
	(86, 'Atacado Família Sul', '57890123000156', 'Rua das Jabuticabeiras', '305', 'Boa Vista', '89201136', '47996789086'),
	(87, 'Distribuidora Master Norte', '68901234000167', 'Rua dos Maracujás', '72', 'Floresta', '89201137', '47997890087'),
	(88, 'Comercial Santa Helena', '79012345000178', 'Rua das Bananeiras', '264', 'Iririú', '89201138', '47998901088'),
	(89, 'Atacadista Vale do Sol', '80123456000189', 'Rua dos Mamoeiros', '138', 'América', '89201139', '47999012089'),
	(90, 'Distribuidora Excelente', '91234567000190', 'Rua das Macieiras', '331', 'Centro', '89201140', '47990123090'),
	(91, 'Comercial Nova Catarina', '12356789000101', 'Rua das Peras', '86', 'Saguaçu', '89201141', '47991234091'),
	(92, 'Atacado Bom Futuro', '23467890000112', 'Rua das Uvas', '247', 'Vila Nova', '89201142', '47992345092'),
	(93, 'Distribuidora Real Norte', '34578901000123', 'Rua das Acerolas', '119', 'Glória', '89201143', '47993456093'),
	(94, 'Comercial Vale Feliz', '45689012000134', 'Rua dos Kiwi', '356', 'Floresta', '89201144', '47994567094'),
	(95, 'Atacadista Grande Família', '56790123000145', 'Rua das Tangerinas', '174', 'Centro', '89201145', '47995678095'),
	(96, 'Distribuidora Santa Rosa', '67801234000156', 'Rua das Limas', '63', 'América', '89201146', '47996789096'),
	(97, 'Comercial Bom Futuro', '78912345000167', 'Rua dos Caquis', '208', 'Boa Vista', '89201147', '47997890097'),
	(98, 'Atacado Regional Sul', '89023456000178', 'Rua das Goiabas', '297', 'Iririú', '89201148', '47998901098'),
	(99, 'Distribuidora Ponto Certo', '90134567000189', 'Rua dos Figos', '145', 'Saguaçu', '89201149', '47999012099'),
	(100, 'Comercial Qualidade Sul', '11245678000190', 'Rua das Frutas', '321', 'Centro', '89201150', '47990123100'),
	(101, 'Comercial Nova Estação', '33467890000112', 'Rua dos Sabiás', '276', 'América', '89201152', '47992345202');

-- Copiando estrutura para tabela producao.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_clientes` int DEFAULT NULL,
  `id_produtos` int DEFAULT NULL,
  `num_ped` varchar(255) DEFAULT NULL,
  `quantidade` float NOT NULL,
  `data_ped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_clientes` (`id_clientes`),
  KEY `id_produtos` (`id_produtos`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.pedidos: ~102 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `id_clientes`, `id_produtos`, `num_ped`, `quantidade`, `data_ped`) VALUES
	(1, 1, 10, '1001', 2, '2026-01-05 00:00:00'),
	(2, 2, 5, '1002', 1, '2026-01-06 00:00:00'),
	(3, 3, 12, '1003', 5, '2026-01-07 00:00:00'),
	(4, 4, 8, '1004', 3, '2026-01-08 00:00:00'),
	(5, 5, 1, '1005', 10, '2026-01-09 00:00:00'),
	(6, 1, 3, '1006', 1, '2026-01-10 00:00:00'),
	(7, 6, 7, '1007', 4, '2026-01-11 00:00:00'),
	(8, 7, 15, '1008', 2, '2026-01-12 00:00:00'),
	(9, 8, 2, '1009', 1, '2026-01-13 00:00:00'),
	(10, 9, 11, '1010', 6, '2026-01-14 00:00:00'),
	(11, 10, 4, '1011', 2, '2026-01-15 00:00:00'),
	(12, 2, 9, '1012', 8, '2026-01-16 00:00:00'),
	(13, 11, 14, '1013', 1, '2026-01-17 00:00:00'),
	(14, 12, 6, '1014', 3, '2026-01-18 00:00:00'),
	(15, 13, 13, '1015', 5, '2026-01-19 00:00:00'),
	(16, 3, 1, '1016', 2, '2026-01-20 00:00:00'),
	(17, 14, 10, '1017', 7, '2026-01-21 00:00:00'),
	(18, 15, 5, '1018', 1, '2026-01-22 00:00:00'),
	(19, 5, 8, '1019', 4, '2026-01-23 00:00:00'),
	(20, 16, 3, '1020', 2, '2026-01-24 00:00:00'),
	(21, 17, 12, '1021', 9, '2026-01-25 00:00:00'),
	(22, 18, 7, '1022', 3, '2026-01-26 00:00:00'),
	(23, 4, 15, '1023', 1, '2026-01-27 00:00:00'),
	(24, 19, 2, '1024', 6, '2026-01-28 00:00:00'),
	(25, 20, 11, '1025', 2, '2026-01-29 00:00:00'),
	(26, 6, 4, '1026', 5, '2026-01-30 00:00:00'),
	(27, 21, 9, '1027', 1, '2026-01-31 00:00:00'),
	(28, 22, 14, '1028', 4, '2026-02-01 00:00:00'),
	(29, 8, 6, '1029', 2, '2026-02-02 00:00:00'),
	(30, 23, 13, '1030', 8, '2026-02-03 00:00:00'),
	(31, 24, 10, '1031', 3, '2026-02-04 00:00:00'),
	(32, 10, 5, '1032', 1, '2026-02-05 00:00:00'),
	(33, 25, 1, '1033', 12, '2026-02-06 00:00:00'),
	(34, 12, 8, '1034', 2, '2026-02-07 00:00:00'),
	(35, 26, 3, '1035', 4, '2026-02-08 00:00:00'),
	(36, 27, 12, '1036', 1, '2026-02-09 00:00:00'),
	(37, 15, 7, '1037', 5, '2026-02-10 00:00:00'),
	(38, 28, 15, '1038', 3, '2026-02-11 00:00:00'),
	(39, 29, 2, '1039', 2, '2026-02-12 00:00:00'),
	(40, 18, 11, '1040', 7, '2026-02-13 00:00:00'),
	(41, 30, 4, '1041', 1, '2026-02-14 00:00:00'),
	(42, 20, 9, '1042', 4, '2026-02-15 00:00:00'),
	(43, 31, 14, '1043', 2, '2026-02-16 00:00:00'),
	(44, 22, 6, '1044', 6, '2026-02-17 00:00:00'),
	(45, 32, 13, '1045', 1, '2026-02-18 00:00:00'),
	(46, 25, 10, '1046', 3, '2026-02-19 00:00:00'),
	(47, 33, 5, '1047', 8, '2026-02-20 00:00:00'),
	(48, 27, 1, '1048', 2, '2026-02-21 00:00:00'),
	(49, 34, 8, '1049', 5, '2026-02-22 00:00:00'),
	(50, 30, 3, '1050', 1, '2026-02-23 00:00:00'),
	(51, 35, 12, '1051', 3, '2026-02-24 00:00:00'),
	(52, 11, 4, '1052', 1, '2026-02-25 00:00:00'),
	(53, 8, 18, '1053', 5, '2026-02-26 00:00:00'),
	(54, 19, 7, '1054', 2, '2026-02-27 00:00:00'),
	(55, 2, 20, '1055', 10, '2026-02-28 00:00:00'),
	(56, 14, 1, '1056', 4, '2026-03-01 00:00:00'),
	(57, 23, 9, '1057', 2, '2026-03-02 00:00:00'),
	(58, 5, 15, '1058', 6, '2026-03-03 00:00:00'),
	(59, 31, 3, '1059', 1, '2026-03-04 00:00:00'),
	(60, 12, 11, '1060', 8, '2026-03-05 00:00:00'),
	(61, 40, 6, '1061', 3, '2026-03-06 00:00:00'),
	(62, 7, 13, '1062', 2, '2026-03-07 00:00:00'),
	(63, 22, 2, '1063', 5, '2026-03-08 00:00:00'),
	(64, 16, 10, '1064', 1, '2026-03-09 00:00:00'),
	(65, 29, 17, '1065', 4, '2026-03-10 00:00:00'),
	(66, 3, 8, '1066', 7, '2026-03-11 00:00:00'),
	(67, 18, 5, '1067', 2, '2026-03-12 00:00:00'),
	(68, 27, 14, '1068', 3, '2026-03-13 00:00:00'),
	(69, 10, 19, '1069', 1, '2026-03-14 00:00:00'),
	(70, 33, 16, '1070', 9, '2026-03-15 00:00:00'),
	(71, 1, 4, '1071', 2, '2026-03-16 00:00:00'),
	(72, 25, 12, '1072', 6, '2026-03-17 00:00:00'),
	(73, 38, 7, '1073', 1, '2026-03-18 00:00:00'),
	(74, 15, 1, '1074', 5, '2026-03-19 00:00:00'),
	(75, 6, 20, '1075', 3, '2026-03-20 00:00:00'),
	(76, 21, 9, '1076', 2, '2026-03-21 00:00:00'),
	(77, 30, 11, '1077', 4, '2026-03-22 00:00:00'),
	(78, 9, 3, '1078', 1, '2026-03-23 00:00:00'),
	(79, 36, 15, '1079', 8, '2026-03-24 00:00:00'),
	(80, 17, 18, '1080', 2, '2026-03-25 00:00:00'),
	(81, 24, 5, '1081', 3, '2026-03-26 00:00:00'),
	(82, 13, 10, '1082', 1, '2026-03-27 00:00:00'),
	(83, 39, 2, '1083', 7, '2026-03-28 00:00:00'),
	(84, 4, 13, '1084', 5, '2026-03-29 00:00:00'),
	(85, 28, 6, '1085', 2, '2026-03-30 00:00:00'),
	(86, 37, 17, '1086', 4, '2026-03-31 00:00:00'),
	(87, 20, 8, '1087', 1, '2026-04-01 00:00:00'),
	(88, 2, 14, '1088', 6, '2026-04-02 00:00:00'),
	(89, 32, 19, '1089', 3, '2026-04-03 00:00:00'),
	(90, 11, 16, '1090', 2, '2026-04-04 00:00:00'),
	(91, 26, 1, '1091', 10, '2026-04-05 00:00:00'),
	(92, 8, 12, '1092', 4, '2026-04-06 00:00:00'),
	(93, 34, 7, '1093', 1, '2026-04-07 00:00:00'),
	(94, 19, 20, '1094', 3, '2026-04-08 00:00:00'),
	(95, 5, 9, '1095', 5, '2026-04-09 00:00:00'),
	(96, 22, 4, '1096', 2, '2026-04-10 00:00:00'),
	(97, 14, 11, '1097', 8, '2026-04-11 00:00:00'),
	(98, 3, 18, '1098', 1, '2026-04-12 00:00:00'),
	(99, 35, 15, '1099', 6, '2026-04-13 00:00:00'),
	(100, 16, 3, '1100', 2, '2026-04-14 00:00:00'),
	(101, 41, 8, '1101', 3, '2026-04-15 00:00:00'),
	(103, 10, 1, '1001', 4, '2026-09-10 00:00:00');

-- Copiando estrutura para tabela producao.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cod_barras` varchar(100) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` longtext,
  `estoque` float NOT NULL,
  `valor` float NOT NULL,
  `data_fabricacao` datetime DEFAULT NULL,
  `data_validade` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.produtos: ~100 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `cod_barras`, `nome`, `descricao`, `estoque`, `valor`, `data_fabricacao`, `data_validade`) VALUES
	(1, '7891000000011', 'Arroz barborizado 5kg', 'Arroz branco tipo 1 pacote 5kg', 76, 28.9, '2026-01-10 00:00:00', '2027-01-10 00:00:00'),
	(2, '7891000000028', 'Feijão Carioca 1kg', 'Feijão carioca tipo 1 pacote 1kg', 65, 8.9, '2026-02-15 00:00:00', '2027-02-15 00:00:00'),
	(3, '7891000000035', 'Açúcar Cristal 2kg', 'Açúcar cristal refinado pacote 2kg', 90, 7.5, '2026-03-05 00:00:00', '2027-03-05 00:00:00'),
	(4, '7891000000042', 'Café Torrado 500g', 'Café torrado e moído pacote 500g', 55, 16.9, '2026-01-20 00:00:00', '2027-01-20 00:00:00'),
	(5, '7891000000059', 'Farinha de Trigo 1kg', 'Farinha de trigo tradicional pacote 1kg', 70, 5.99, '2026-02-10 00:00:00', '2027-02-10 00:00:00'),
	(6, '7891000000066', 'Macarrão Espaguete 500g', 'Macarrão tipo espaguete pacote 500g', 100, 4.79, '2026-03-12 00:00:00', '2027-03-12 00:00:00'),
	(7, '7891000000073', 'Óleo de Soja 900ml', 'Óleo vegetal de soja garrafa 900ml', 75, 7.99, '2026-04-01 00:00:00', '2027-04-01 00:00:00'),
	(8, '7891000000080', 'Leite Integral 1L', 'Leite integral longa vida 1 litro', 120, 5.49, '2026-05-08 00:00:00', '2026-11-08 00:00:00'),
	(9, '7891000000097', 'Biscoito Cream Cracker', 'Biscoito salgado cream cracker 350g', 85, 5.9, '2026-02-25 00:00:00', '2027-02-25 00:00:00'),
	(10, '7891000000103', 'Biscoito Chocolate', 'Biscoito recheado sabor chocolate 130g', 95, 3.99, '2026-03-18 00:00:00', '2027-03-18 00:00:00'),
	(11, '7891000000110', 'Achocolatado 400g', 'Achocolatado em pó sabor chocolate 400g', 60, 9.9, '2026-01-15 00:00:00', '2027-01-15 00:00:00'),
	(12, '7891000000127', 'Leite em Pó 400g', 'Leite em pó integral instantâneo 400g', 45, 15.9, '2026-02-20 00:00:00', '2027-02-20 00:00:00'),
	(13, '7891000000134', 'Margarina 500g', 'Margarina cremosa com sal 500g', 50, 8.49, '2026-04-15 00:00:00', '2026-10-15 00:00:00'),
	(14, '7891000000141', 'Manteiga 200g', 'Manteiga com sal 200g', 35, 12.9, '2026-05-01 00:00:00', '2026-09-01 00:00:00'),
	(15, '7891000000158', 'Queijo Mussarela 500g', 'Queijo mussarela fatiado 500g', 30, 24.9, '2026-06-10 00:00:00', '2026-07-10 00:00:00'),
	(16, '7891000000165', 'Presunto 500g', 'Presunto cozido fatiado 500g', 28, 18.9, '2026-06-12 00:00:00', '2026-07-12 00:00:00'),
	(17, '7891000000172', 'Iogurte Natural 170g', 'Iogurte natural integral 170g', 65, 3.49, '2026-07-01 00:00:00', '2026-08-01 00:00:00'),
	(18, '7891000000189', 'Refrigerante Cola 2L', 'Refrigerante sabor cola garrafa 2 litros', 90, 9.99, '2026-01-25 00:00:00', '2027-01-25 00:00:00'),
	(19, '7891000000196', 'Suco de Uva 1L', 'Suco de uva integral 1 litro', 55, 12.9, '2026-02-05 00:00:00', '2027-02-05 00:00:00'),
	(20, '7891000000202', 'Água Mineral 1,5L', 'Água mineral sem gás garrafa 1,5 litro', 150, 3.49, '2026-03-01 00:00:00', '2028-03-01 00:00:00'),
	(21, '7891000000219', 'Sabonete 90g', 'Sabonete em barra perfumado 90g', 110, 2.99, '2026-01-10 00:00:00', '2029-01-10 00:00:00'),
	(22, '7891000000226', 'Shampoo 350ml', 'Shampoo para cabelos normais 350ml', 70, 14.9, '2026-02-14 00:00:00', '2029-02-14 00:00:00'),
	(23, '7891000000233', 'Condicionador 350ml', 'Condicionador hidratante 350ml', 65, 15.9, '2026-02-14 00:00:00', '2029-02-14 00:00:00'),
	(24, '7891000000240', 'Creme Dental 90g', 'Creme dental com flúor 90g', 100, 6.49, '2026-03-10 00:00:00', '2029-03-10 00:00:00'),
	(25, '7891000000257', 'Desodorante Aerosol', 'Desodorante aerosol masculino 150ml', 80, 11.9, '2026-04-05 00:00:00', '2029-04-05 00:00:00'),
	(26, '7891000000264', 'Papel Higiênico 12un', 'Papel higiênico folha dupla pacote 12 unidades', 75, 18.9, '2026-01-30 00:00:00', '2029-01-30 00:00:00'),
	(27, '7891000000271', 'Detergente 500ml', 'Detergente líquido para louças 500ml', 120, 2.79, '2026-03-15 00:00:00', '2029-03-15 00:00:00'),
	(28, '7891000000288', 'Sabão em Pó 1kg', 'Sabão em pó para roupas pacote 1kg', 70, 9.9, '2026-02-18 00:00:00', '2029-02-18 00:00:00'),
	(29, '7891000000295', 'Amaciante 2L', 'Amaciante concentrado para roupas 2 litros', 55, 13.9, '2026-04-20 00:00:00', '2029-04-20 00:00:00'),
	(30, '7891000000301', 'Água Sanitária 1L', 'Água sanitária para limpeza doméstica 1 litro', 85, 4.49, '2026-03-22 00:00:00', '2028-03-22 00:00:00'),
	(31, '7891000000318', 'Esponja de Limpeza', 'Esponja multiuso para limpeza doméstica', 130, 2.49, '2026-01-12 00:00:00', '2030-01-12 00:00:00'),
	(32, '7891000000325', 'Desinfetante 2L', 'Desinfetante perfumado para ambientes 2 litros', 65, 8.9, '2026-05-10 00:00:00', '2029-05-10 00:00:00'),
	(33, '7891000000332', 'Limpador Multiuso 500ml', 'Limpador multiuso para superfícies 500ml', 75, 6.99, '2026-04-12 00:00:00', '2029-04-12 00:00:00'),
	(34, '7891000000349', 'Papel Toalha', 'Papel toalha folha dupla pacote 2 rolos', 90, 7.49, '2026-02-08 00:00:00', '2029-02-08 00:00:00'),
	(35, '7891000000356', 'Guardanapo 50un', 'Guardanapo de papel pacote com 50 unidades', 100, 4.99, '2026-03-20 00:00:00', '2029-03-20 00:00:00'),
	(36, '7891000000363', 'Achocolatado Infantil', 'Achocolatado em pó instantâneo 200g', 45, 6.9, '2026-05-15 00:00:00', '2027-05-15 00:00:00'),
	(37, '7891000000370', 'Milho Verde Lata', 'Milho verde em conserva lata 170g', 80, 4.49, '2026-01-28 00:00:00', '2028-01-28 00:00:00'),
	(38, '7891000000387', 'Ervilha Lata', 'Ervilha em conserva lata 170g', 75, 4.29, '2026-02-22 00:00:00', '2028-02-22 00:00:00'),
	(39, '7891000000394', 'Molho de Tomate', 'Molho de tomate tradicional sachê 300g', 95, 2.99, '2026-03-08 00:00:00', '2027-09-08 00:00:00'),
	(40, '7891000000400', 'Maionese 500g', 'Maionese tradicional pote 500g', 50, 8.99, '2026-04-18 00:00:00', '2027-04-18 00:00:00'),
	(41, '7891000000417', 'Ketchup 400g', 'Ketchup tradicional frasco 400g', 55, 7.49, '2026-02-12 00:00:00', '2027-08-12 00:00:00'),
	(42, '7891000000424', 'Mostarda 200g', 'Mostarda tradicional frasco 200g', 40, 5.99, '2026-03-17 00:00:00', '2027-09-17 00:00:00'),
	(43, '7891000000431', 'Batata Palha 140g', 'Batata palha tradicional pacote 140g', 70, 8.49, '2026-05-05 00:00:00', '2027-05-05 00:00:00'),
	(44, '7891000000448', 'Pipoca Milho 500g', 'Milho para pipoca pacote 500g', 85, 5.49, '2026-01-18 00:00:00', '2027-01-18 00:00:00'),
	(45, '7891000000455', 'Aveia em Flocos 200g', 'Aveia em flocos finos pacote 200g', 60, 6.99, '2026-02-28 00:00:00', '2027-02-28 00:00:00'),
	(46, '7891000000462', 'Granola 250g', 'Granola tradicional com cereais 250g', 45, 11.9, '2026-04-08 00:00:00', '2027-04-08 00:00:00'),
	(47, '7891000000479', 'Mel 500g', 'Mel de abelha natural pote 500g', 35, 19.9, '2026-01-05 00:00:00', '2028-01-05 00:00:00'),
	(48, '7891000000486', 'Geleia de Morango 320g', 'Geleia de morango tradicional 320g', 40, 10.9, '2026-03-25 00:00:00', '2027-03-25 00:00:00'),
	(49, '7891000000493', 'Chocolate ao Leite 90g', 'Chocolate ao leite barra 90g', 90, 6.49, '2026-05-20 00:00:00', '2027-05-20 00:00:00'),
	(50, '7891000000509', 'Chocolate Branco 90g', 'Chocolate branco barra 90g', 85, 6.99, '2026-05-22 00:00:00', '2027-05-22 00:00:00'),
	(51, '7891000000516', 'Arroz Integral 1kg', 'Arroz integral tipo 1 pacote 1kg', 60, 7.99, '2026-06-01 00:00:00', '2027-06-01 00:00:00'),
	(52, '7891000000523', 'Feijão Preto 1kg', 'Feijão preto tipo 1 pacote 1kg', 70, 9.49, '2026-05-12 00:00:00', '2027-05-12 00:00:00'),
	(53, '7891000000530', 'Lentilha 500g', 'Lentilha seca pacote 500g', 45, 8.99, '2026-04-10 00:00:00', '2027-04-10 00:00:00'),
	(54, '7891000000547', 'Grão-de-Bico 500g', 'Grão-de-bico seco pacote 500g', 40, 9.9, '2026-03-15 00:00:00', '2027-03-15 00:00:00'),
	(55, '7891000000554', 'Fubá 1kg', 'Fubá de milho fino pacote 1kg', 55, 4.99, '2026-05-20 00:00:00', '2027-05-20 00:00:00'),
	(56, '7891000000561', 'Farofa Pronta 250g', 'Farofa temperada pronta 250g', 65, 6.49, '2026-06-05 00:00:00', '2027-06-05 00:00:00'),
	(57, '7891000000578', 'Canjica Branca 500g', 'Canjica de milho branca pacote 500g', 50, 5.99, '2026-04-22 00:00:00', '2027-04-22 00:00:00'),
	(58, '7891000000585', 'Milho para Pipoca 1kg', 'Milho especial para pipoca pacote 1kg', 75, 8.49, '2026-02-16 00:00:00', '2027-02-16 00:00:00'),
	(59, '7891000000592', 'Azeite de Oliva 500ml', 'Azeite de oliva extra virgem 500ml', 35, 29.9, '2026-01-22 00:00:00', '2028-01-22 00:00:00'),
	(60, '7891000000608', 'Vinagre de Álcool 750ml', 'Vinagre de álcool tradicional 750ml', 80, 3.99, '2026-03-10 00:00:00', '2028-03-10 00:00:00'),
	(61, '7891000000615', 'Vinagre de Maçã 500ml', 'Vinagre de maçã natural 500ml', 45, 8.9, '2026-04-05 00:00:00', '2028-04-05 00:00:00'),
	(62, '7891000000622', 'Sal Refinado 1kg', 'Sal refinado iodado pacote 1kg', 100, 2.49, '2026-01-15 00:00:00', '2029-01-15 00:00:00'),
	(63, '7891000000639', 'Orégano 10g', 'Orégano desidratado pacote 10g', 60, 3.49, '2026-02-12 00:00:00', '2028-02-12 00:00:00'),
	(64, '7891000000646', 'Pimenta-do-Reino 50g', 'Pimenta-do-reino moída 50g', 50, 5.49, '2026-03-18 00:00:00', '2028-03-18 00:00:00'),
	(65, '7891000000653', 'Canela em Pó 30g', 'Canela em pó pacote 30g', 55, 4.29, '2026-04-20 00:00:00', '2028-04-20 00:00:00'),
	(66, '7891000000660', 'Cominho em Pó 30g', 'Cominho em pó para temperos 30g', 40, 3.99, '2026-05-11 00:00:00', '2028-05-11 00:00:00'),
	(67, '7891000000677', 'Caldo de Galinha 57g', 'Caldo de galinha em tabletes 57g', 90, 4.99, '2026-02-25 00:00:00', '2027-08-25 00:00:00'),
	(68, '7891000000684', 'Caldo de Carne 57g', 'Caldo de carne em tabletes 57g', 85, 4.99, '2026-03-22 00:00:00', '2027-09-22 00:00:00'),
	(69, '7891000000691', 'Atum em Lata 170g', 'Atum sólido em conserva lata 170g', 45, 10.9, '2026-01-30 00:00:00', '2028-01-30 00:00:00'),
	(70, '7891000000707', 'Sardinha em Lata 125g', 'Sardinha em óleo lata 125g', 55, 6.99, '2026-02-18 00:00:00', '2028-02-18 00:00:00'),
	(71, '7891000000714', 'Leite Condensado 395g', 'Leite condensado tradicional lata 395g', 70, 7.49, '2026-04-14 00:00:00', '2027-04-14 00:00:00'),
	(72, '7891000000721', 'Creme de Leite 200g', 'Creme de leite tradicional 200g', 80, 3.99, '2026-05-06 00:00:00', '2027-05-06 00:00:00'),
	(73, '7891000000738', 'Coco Ralado 100g', 'Coco ralado desidratado 100g', 50, 5.49, '2026-03-12 00:00:00', '2027-03-12 00:00:00'),
	(74, '7891000000745', 'Leite de Coco 200ml', 'Leite de coco tradicional 200ml', 65, 4.99, '2026-04-09 00:00:00', '2027-10-09 00:00:00'),
	(75, '7891000000752', 'Fermento em Pó 100g', 'Fermento químico em pó 100g', 55, 5.9, '2026-01-19 00:00:00', '2027-07-19 00:00:00'),
	(76, '7891000000769', 'Amido de Milho 500g', 'Amido de milho tradicional 500g', 60, 6.49, '2026-02-24 00:00:00', '2027-08-24 00:00:00'),
	(77, '7891000000776', 'Leite em Pó Desnatado', 'Leite em pó desnatado pacote 300g', 40, 13.9, '2026-05-14 00:00:00', '2027-05-14 00:00:00'),
	(78, '7891000000783', 'Cereal Matinal 300g', 'Cereal matinal com milho e açúcar 300g', 45, 12.49, '2026-06-08 00:00:00', '2027-06-08 00:00:00'),
	(79, '7891000000790', 'Flocos de Milho 500g', 'Flocos de milho para café da manhã 500g', 50, 6.9, '2026-03-28 00:00:00', '2027-03-28 00:00:00'),
	(80, '7891000000806', 'Bolacha Maisena 350g', 'Bolacha tipo maisena pacote 350g', 90, 5.49, '2026-04-16 00:00:00', '2027-04-16 00:00:00'),
	(81, '7891000000813', 'Wafer Chocolate 110g', 'Biscoito wafer sabor chocolate 110g', 75, 4.49, '2026-05-18 00:00:00', '2027-05-18 00:00:00'),
	(82, '7891000000820', 'Biscoito Água e Sal', 'Biscoito água e sal pacote 350g', 85, 5.29, '2026-02-09 00:00:00', '2027-02-09 00:00:00'),
	(83, '7891000000837', 'Rosquinha de Coco 350g', 'Biscoito rosquinha sabor coco 350g', 65, 6.49, '2026-03-14 00:00:00', '2027-03-14 00:00:00'),
	(84, '7891000000844', 'Pão de Forma 500g', 'Pão de forma tradicional pacote 500g', 40, 8.99, '2026-08-01 00:00:00', '2026-08-10 00:00:00'),
	(85, '7891000000851', 'Pão Integral 500g', 'Pão de forma integral pacote 500g', 35, 10.49, '2026-08-02 00:00:00', '2026-08-11 00:00:00'),
	(86, '7891000000868', 'Torrada Tradicional 160g', 'Torradas crocantes tradicionais 160g', 50, 5.99, '2026-06-15 00:00:00', '2027-06-15 00:00:00'),
	(87, '7891000000875', 'Cereal de Aveia 200g', 'Cereal integral de aveia 200g', 45, 9.9, '2026-05-25 00:00:00', '2027-05-25 00:00:00'),
	(88, '7891000000882', 'Suco de Laranja 1L', 'Suco de laranja pronto para consumo 1 litro', 60, 8.99, '2026-06-03 00:00:00', '2027-01-03 00:00:00'),
	(89, '7891000000899', 'Suco de Maracujá 1L', 'Suco de maracujá pronto para consumo 1 litro', 55, 8.99, '2026-06-04 00:00:00', '2027-01-04 00:00:00'),
	(90, '7891000000905', 'Néctar de Pêssego 1L', 'Néctar de pêssego pronto para consumo 1 litro', 50, 7.49, '2026-05-29 00:00:00', '2027-01-29 00:00:00'),
	(91, '7891000000912', 'Refrigerante Guaraná 2L', 'Refrigerante sabor guaraná garrafa 2 litros', 85, 8.99, '2026-06-11 00:00:00', '2027-06-11 00:00:00'),
	(92, '7891000000929', 'Refrigerante Limão 2L', 'Refrigerante sabor limão garrafa 2 litros', 70, 8.49, '2026-06-12 00:00:00', '2027-06-12 00:00:00'),
	(93, '7891000000936', 'Água com Gás 500ml', 'Água mineral com gás garrafa 500ml', 120, 2.99, '2026-07-01 00:00:00', '2028-07-01 00:00:00'),
	(94, '7891000000943', 'Chá Mate 1L', 'Bebida de chá mate pronta 1 litro', 60, 6.99, '2026-06-20 00:00:00', '2027-06-20 00:00:00'),
	(95, '7891000000950', 'Achocolatado Pronto 200ml', 'Bebida láctea sabor chocolate 200ml', 80, 3.49, '2026-07-05 00:00:00', '2026-12-05 00:00:00'),
	(96, '7891000000967', 'Energético 473ml', 'Bebida energética lata 473ml', 65, 9.9, '2026-07-10 00:00:00', '2027-01-10 00:00:00'),
	(97, '7891000000974', 'Água de Coco 1L', 'Água de coco natural 1 litro', 45, 9.49, '2026-06-25 00:00:00', '2027-01-25 00:00:00'),
	(98, '7891000000981', 'Suco de Maçã 1L', 'Suco de maçã integral 1 litro', 50, 10.9, '2026-05-30 00:00:00', '2027-02-28 00:00:00'),
	(99, '7891000000998', 'Chá de Camomila 20 Sachês', 'Chá de camomila em sachês', 40, 7.9, '2026-03-05 00:00:00', '2028-03-05 00:00:00'),
	(100, '7891000001001', 'Chá de Erva-Doce 20 Sachês', 'Chá de erva-doce em sachês', 45, 7.9, '2026-03-06 00:00:00', '2028-03-06 00:00:00');

-- Copiando estrutura para procedure producao.sp_atualizar_produto
DELIMITER //
CREATE PROCEDURE `sp_atualizar_produto`(
	IN `p_id_produto` INT,
	IN `p_novo_nome` VARCHAR(100)
)
BEGIN
    UPDATE produtos
    SET nome = p_novo_nome
    WHERE id = p_id_produto;
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_compras_por_fornecedor
DELIMITER //
CREATE PROCEDURE `sp_compras_por_fornecedor`(
	IN `p_id_fornecedor` INT,
	IN `p_data_inicio` DATE,
	IN `p_data_fim` DATE
)
BEGIN
    SELECT
        c.codigo,
        p.nome AS produto,
        c.quantidade,
        c.data_compra,
        f.nome AS fornecedor
    FROM compras c
    INNER JOIN fornecedores f ON f.id = c.id_fornecedor
    INNER JOIN produtos p ON p.id = c.id_produto
    WHERE c.id_fornecedor = p_id_fornecedor
    AND c.data_compra BETWEEN p_data_inicio AND p_data_fim;
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_registrar_compra
DELIMITER //
CREATE PROCEDURE `sp_registrar_compra`(
	IN `p_id_fornecedor` INT,
	IN `p_id_produto` INT,
	IN `p_quantidade` INT,
	IN `p_codigo` VARCHAR(50)
)
BEGIN
	INSERT INTO compras (id_fornecedor,
						id_produto,
						quantidade,
						codigo,
						data_compra)
	VALUES (
	 	p_id_fonecedor,
	 	p_i_produto,
	 	p_quantidade,
	 	p_codigo,
	 	NOW()
	);
END//
DELIMITER ;

-- Copiando estrutura para tabela producao.tmp_historico_clientes
CREATE TABLE IF NOT EXISTS `tmp_historico_clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `nome_antigo` varchar(255) DEFAULT NULL,
  `cpf_cnpj_antigo` varchar(255) DEFAULT NULL,
  `rua_antiga` varchar(255) DEFAULT NULL,
  `telefone_antigo` varchar(255) DEFAULT NULL,
  `numero_antigo` varchar(255) DEFAULT NULL,
  `bairro_antigo` varchar(255) DEFAULT NULL,
  `cep_antigo` varchar(255) DEFAULT NULL,
  `referencia_antiga` varchar(255) DEFAULT NULL,
  `data_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_clientes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.tmp_historico_fornecedores
CREATE TABLE IF NOT EXISTS `tmp_historico_fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `nome_antigo` varchar(255) DEFAULT NULL,
  `cpf_cnpj_antigo` varchar(255) DEFAULT NULL,
  `rua_antiga` varchar(255) DEFAULT NULL,
  `numero_antigo` varchar(255) DEFAULT NULL,
  `bairro_antigo` varchar(255) DEFAULT NULL,
  `cep_antigo` varchar(255) DEFAULT NULL,
  `telefone_antigo` varchar(255) DEFAULT NULL,
  `data_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_fornecedores: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.tmp_historico_produtos
CREATE TABLE IF NOT EXISTS `tmp_historico_produtos` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT '0',
  `nome_antigo` varchar(255) DEFAULT NULL,
  `preco_antigo` decimal(10,2) DEFAULT NULL,
  `estoque_antigo` float DEFAULT NULL,
  `data_alteracao` datetime DEFAULT (now()),
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  KEY `Index 1` (`id_historico`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_produtos: ~3 rows (aproximadamente)
INSERT INTO `tmp_historico_produtos` (`id_historico`, `produto_id`, `nome_antigo`, `preco_antigo`, `estoque_antigo`, `data_alteracao`, `usuario_alteracao`) VALUES
	(1, 1, 'Arroz Branco 5kg', 28.90, 76, '2026-10-01 14:44:37', 'root@localhost'),
	(2, 1, 'Arroz barborizado 5kg', 28.90, 76, '2026-10-01 16:16:20', 'root@localhost'),
	(3, 1, 'Notebook', 28.90, 76, '2026-10-01 16:16:34', 'root@localhost');

-- Copiando estrutura para view producao.view_clientes_com_mais_compras
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_clientes_com_mais_compras` (
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_compras` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_compra_detalhada
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_compra_detalhada` (
	`id_compra` INT NOT NULL,
	`codigo` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`data_compra` DATETIME NULL,
	`produto` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`fornecedor` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`documento_fornecedor` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`quantidade_compra` FLOAT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_consolidação_de_compras_por_fornecedor
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_consolidação_de_compras_por_fornecedor` (
	`fornecedor` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_compras` BIGINT NOT NULL,
	`quantidade_total_fornecida` DOUBLE NULL,
	`ultima_compra` DATETIME NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_de_demanda_de_produtos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_de_demanda_de_produtos` (
	`produto` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_de_entregas` BIGINT NOT NULL,
	`total_itens_comprados` DOUBLE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_fornecedores_com_mais_vendas
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_fornecedores_com_mais_vendas` (
	`fornecedor` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_vendas` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_pedidos_com_valor_maior_que_media
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_pedidos_com_valor_maior_que_media` (
	`pedido` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor_total` DOUBLE NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_produtos_mais_vendidos_no_ultimo_mes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_produtos_mais_vendidos_no_ultimo_mes` (
	`produto` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_vendas` BIGINT NOT NULL,
	`data_ped` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para trigger producao.trg_atualiza_estoque_compras
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_atualiza_estoque_compras` AFTER INSERT ON `compras` FOR EACH ROW BEGIN
	UPDATE produtos 
	SET estoque = estoque + NEW.quantidade 
	WHERE id = NEW.id_produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_atualiza_estoque_pedidos
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_atualiza_estoque_pedidos` AFTER INSERT ON `pedidos` FOR EACH ROW BEGIN
	UPDATE produtos
	SET estoque = estoque - NEW.quantidade
	WHERE id = NEW.id_produtos;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_produtos_atualiza
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_produtos_atualiza` BEFORE UPDATE ON `produtos` FOR EACH ROW BEGIN
	INSERT INTO tmp_historico_produtos(
		produto_id,
		nome_antigo,
		preco_antigo,
		estoque_antigo,
		usuario_alteracao
	) VALUES (
	OLD.id,
	OLD.nome,
	OLD.valor,
	OLD.estoque,
	USER()
	);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_clientes_com_mais_compras`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_clientes_com_mais_compras` AS select `c`.`nome` AS `nome`,count(`p`.`id`) AS `total_compras` from (`pedidos` `p` join `clientes` `c` on((`c`.`id` = `p`.`id_clientes`))) group by `c`.`id` order by `total_compras` desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_compra_detalhada`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_compra_detalhada` AS select `c`.`id` AS `id_compra`,`c`.`codigo` AS `codigo`,`c`.`data_compra` AS `data_compra`,`p`.`nome` AS `produto`,`f`.`nome` AS `fornecedor`,`f`.`cpf_cnpj` AS `documento_fornecedor`,`c`.`quantidade` AS `quantidade_compra` from ((`compras` `c` join `produtos` `p` on((`c`.`id_produto` = `p`.`id`))) join `fornecedores` `f` on((`c`.`id_fornecedor` = `f`.`id`)));

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_consolidação_de_compras_por_fornecedor`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_consolidação_de_compras_por_fornecedor` AS select `f`.`nome` AS `fornecedor`,count(`c`.`id`) AS `total_compras`,sum(`c`.`quantidade`) AS `quantidade_total_fornecida`,max(`c`.`data_compra`) AS `ultima_compra` from (`compras` `c` join `fornecedores` `f` on((`c`.`id_fornecedor` = `f`.`id`))) group by `f`.`id` order by count(`c`.`id`) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_de_demanda_de_produtos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_de_demanda_de_produtos` AS select `pro`.`nome` AS `produto`,count(`c`.`id`) AS `total_de_entregas`,sum(`c`.`quantidade`) AS `total_itens_comprados` from (`compras` `c` join `produtos` `pro` on((`c`.`id_produto` = `pro`.`id`))) group by `pro`.`id` order by sum(`c`.`quantidade`) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_fornecedores_com_mais_vendas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_fornecedores_com_mais_vendas` AS select `f`.`nome` AS `fornecedor`,count(`c`.`id`) AS `total_vendas` from (`compras` `c` join `fornecedores` `f` on((`c`.`id_fornecedor` = `f`.`id`))) group by `f`.`id` order by count(`c`.`id`) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_pedidos_com_valor_maior_que_media`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_pedidos_com_valor_maior_que_media` AS select `p`.`num_ped` AS `pedido`,round((`p`.`quantidade` * `pro`.`valor`),2) AS `valor_total` from (`pedidos` `p` join `produtos` `pro` on((`p`.`id_produtos` = `pro`.`id`))) where ((`p`.`quantidade` * `pro`.`valor`) > (select avg((`p2`.`quantidade` * `pro2`.`valor`)) AS `media` from (`pedidos` `p2` join `produtos` `pro2` on((`p2`.`id_produtos` = `pro2`.`id`))))) order by round((`p`.`quantidade` * `pro`.`valor`),2) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_produtos_mais_vendidos_no_ultimo_mes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_produtos_mais_vendidos_no_ultimo_mes` AS select `pro`.`nome` AS `produto`,count(`p`.`id`) AS `total_vendas`,date_format(`p`.`data_ped`,'%m/%Y') AS `data_ped` from (`pedidos` `p` join `produtos` `pro` on((`p`.`id_produtos` = `pro`.`id`))) where ((year(`p`.`data_ped`) = year(now())) and (month(`p`.`data_ped`) = (month(now()) - 1))) group by `pro`.`id`,`pro`.`nome`,date_format(`p`.`data_ped`,'%m/%Y') order by count(`p`.`id`) desc;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
