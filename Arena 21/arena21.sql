-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Set-2018 às 02:51
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arena21`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrojogador`
--

CREATE TABLE `cadastrojogador` (
  `idJogador` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `datanascimento` date DEFAULT NULL,
  `jogoFavorito` varchar(50) DEFAULT NULL,
  `diaS` varchar(10) DEFAULT NULL,
  `tardeS` varchar(10) DEFAULT NULL,
  `noiteS` varchar(10) DEFAULT NULL,
  `finalD` varchar(10) DEFAULT NULL,
  `finalT` varchar(10) DEFAULT NULL,
  `finalN` varchar(10) DEFAULT NULL,
  `passconfirm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastrojogador`
--

INSERT INTO `cadastrojogador` (`idJogador`, `nome`, `sobrenome`, `cpf`, `cidade`, `email`, `login`, `pass`, `datanascimento`, `jogoFavorito`, `diaS`, `tardeS`, `noiteS`, `finalD`, `finalT`, `finalN`, `passconfirm`) VALUES
(1, 'sergio', 'guto', '07685047918', 'blumenau', 'gutolk2009@hotmail.com', 'hulken1', '123456', '1994-03-26', 'csgo', 'null', 'null', 'dia', 'dia', 'dia', 'null', '123456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `idSala` int(11) NOT NULL,
  `nomeSala` varchar(40) DEFAULT NULL,
  `nomeJogo` varchar(40) DEFAULT NULL,
  `idJogador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`idSala`, `nomeSala`, `nomeJogo`, `idJogador`) VALUES
(15, 'adolfo', 'CS GO', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastrojogador`
--
ALTER TABLE `cadastrojogador`
  ADD PRIMARY KEY (`idJogador`);

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`idSala`),
  ADD KEY `idJogador` (`idJogador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastrojogador`
--
ALTER TABLE `cadastrojogador`
  MODIFY `idJogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salas`
--
ALTER TABLE `salas`
  MODIFY `idSala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `idJogador` FOREIGN KEY (`idJogador`) REFERENCES `cadastrojogador` (`idJogador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;