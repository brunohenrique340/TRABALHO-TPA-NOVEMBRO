-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 31/10/2024 às 10:41
-- Versão do servidor: 8.2.0
-- Versão do PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `primeirocrud`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` char(14) NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(17) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `client`
--

INSERT INTO `client` (`id`, `name`, `email`, `cpf`, `birth`, `address`, `phone`) VALUES
(2, 'Caio Seleme', 'caio.seleme@gmail.com', '100.364.476-76', '2006-11-04', 'Rua Josué Azevedo', '+55 (31) 99825068');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
CREATE TABLE IF NOT EXISTS `equipamento` (
  `idEquipamento` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Quantidade` int UNSIGNED NOT NULL,
  `Tipo` varchar(70) NOT NULL,
  `PrecoTotal` decimal(10,2) UNSIGNED NOT NULL,
  `idusuario` int NOT NULL,
  PRIMARY KEY (`idEquipamento`),
  KEY `idusuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gerente`
--

DROP TABLE IF EXISTS `gerente`;
CREATE TABLE IF NOT EXISTS `gerente` (
  `idgerente` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idgerente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `email`, `senha`) VALUES
(1, 'iago@gmail.com', '123');

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `equipamento`
--
ALTER TABLE `equipamento`
  ADD CONSTRAINT `equipamento_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
