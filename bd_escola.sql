-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/03/2024 às 05:35
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_escola`
--
CREATE DATABASE IF NOT EXISTS `bd_escola` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_escola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_aluno`
--

CREATE TABLE `tb_aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `email` varchar(80) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_aluno`
--

INSERT INTO `tb_aluno` (`id`, `nome`, `idade`, `telefone`, `email`, `foto`) VALUES
(5, 'Supimpa', 25, '65981391515', 'sujoso@gmail.com', ''),
(9, 'Junior', 25, '65981391515', 'rafael@gmail.com', ''),
(10, 'Nelio', 25, '65981391515', 'rafael@gmail.com', ''),
(11, 'Debinha', 25, '65981391515', 'rafael@gmail.com', ''),
(12, 'Nitro', 25, '65981391515', 'leosivi@gmail.com', ''),
(13, 'Delguingao', 25, '65981391414', 'leosivi@gmail.com', ''),
(14, 'ZelÃ£o', 52, '65981391515', 'zelao@gmail.com', 'fotolinkindein.jpeg'),
(15, 'ZelÃ£o', 52, '65981391515', 'zelao@gmail.com', 'Captura de tela 2023-05-29 073845.png'),
(16, 'ZelÃ£o', 52, '65981391515', 'zelao@gmail.com', 'a lenda do viaduto.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(80) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `dataCad` datetime NOT NULL,
  `dataAlt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `usuario`, `senha`, `dataCad`, `dataAlt`) VALUES
(1, 'adm@email.com', '123456', '2024-02-26 13:50:25', '2024-02-26 13:50:25'),
(2, 'jucaco@email.com', '123456', '2024-02-26 13:50:25', '2024-02-26 13:50:25');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_aluno`
--
ALTER TABLE `tb_aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_aluno`
--
ALTER TABLE `tb_aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
