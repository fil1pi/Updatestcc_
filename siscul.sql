-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jul-2020 às 00:33
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
-- Database: `siscul`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_alpha`
--

CREATE TABLE `produtos_alpha` (
  `id` int(11) NOT NULL,
  `nome` varchar(222) NOT NULL,
  `Preco_producao` double NOT NULL,
  `quantidade` int(11) NOT NULL,
  `Total_gasto` double NOT NULL,
  `produtor` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_alpha`
--

INSERT INTO `produtos_alpha` (`id`, `nome`, `Preco_producao`, `quantidade`, `Total_gasto`, `produtor`) VALUES
(20, 'queijo', 20, 15, 300, 'Felipin'),
(21, 'leite', 10, 50, 500, 'Felipin'),
(22, 'Rapadura', 15, 30, 450, 'Felipin'),
(23, 'Doce de leite', 10, 20, 200, 'Felipin'),
(24, 'Carne seca', 55, 5, 275, 'Felipin'),
(25, 'AlfaÃ§e', 5, 25, 125, 'Felipin'),
(26, 'Mandioca', 2, 40, 80, 'Felipin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_omega`
--

CREATE TABLE `produtos_omega` (
  `idproduto` int(11) NOT NULL,
  `nome` varchar(222) NOT NULL,
  `Preco_producao` double NOT NULL,
  `quantidade` int(11) NOT NULL,
  `Total_gasto` double NOT NULL,
  `Preco_venda` double NOT NULL,
  `quantida_Venda` int(11) NOT NULL,
  `total_venda` double NOT NULL,
  `Total_Final` double NOT NULL,
  `produtor` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_omega`
--

INSERT INTO `produtos_omega` (`idproduto`, `nome`, `Preco_producao`, `quantidade`, `Total_gasto`, `Preco_venda`, `quantida_Venda`, `total_venda`, `Total_Final`, `produtor`) VALUES
(3439, 'queijo', 20, 15, 300, 25, 10, 250, -50, 'Felipin'),
(3440, 'leite', 10, 50, 500, 10, 50, 500, 0, 'Felipin'),
(3441, 'Rapadura', 15, 30, 450, 20, 30, 600, 150, 'Felipin'),
(3442, 'Doce de leite', 10, 20, 200, 15, 15, 225, 25, 'Felipin'),
(3443, 'AlfaÃ§e', 5, 25, 125, 2, 20, 40, -85, 'Felipin'),
(3444, 'Mandioca', 2, 40, 80, 10, 40, 400, 320, 'Felipin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `adm`) VALUES
(1, 'Felipe Schmitz', 'FelipeSchmitz@gmail.com', '12345678', 1),
(16, 'Felipin', 'Felipinabl@gmail.com', '12345678', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos_alpha`
--
ALTER TABLE `produtos_alpha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos_omega`
--
ALTER TABLE `produtos_omega`
  ADD PRIMARY KEY (`idproduto`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos_alpha`
--
ALTER TABLE `produtos_alpha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `produtos_omega`
--
ALTER TABLE `produtos_omega`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3445;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
