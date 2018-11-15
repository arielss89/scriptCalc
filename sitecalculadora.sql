-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2018 às 23:05
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitecalculadora`
--
CREATE DATABASE IF NOT EXISTS `sitecalculadora` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sitecalculadora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nutricionista`
--
-- Criação: 15-Nov-2018 às 20:47
--

CREATE TABLE IF NOT EXISTS `nutricionista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `nutricionista`:
--

--
-- Extraindo dados da tabela `nutricionista`
--

INSERT INTO `nutricionista` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'TesteNutri', 'teste@teste', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--
-- Criação: 15-Nov-2018 às 21:09
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `idade` int(11) NOT NULL,
  `sexo` int(1) NOT NULL,
  `peso` float NOT NULL,
  `altura` float NOT NULL,
  `ati` int(1) NOT NULL,
  `id_nutri` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nutri` (`id_nutri`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `paciente`:
--   `id_nutri`
--       `nutricionista` -> `id`
--

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `idade`, `sexo`, `peso`, `altura`, `ati`, `id_nutri`) VALUES
(1, 'Ariel', 29, 0, 65, 1.8, 3, 1);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_nutri`) REFERENCES `nutricionista` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
