-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Jul-2020 às 23:05
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
(39, 'FeijÃ£o', 25, 10, 3750, 'Felipin'),
(41, 'soja', 150, 100, 75000, 'Felipin'),
(42, 'cafÃ©', 58, 194, 11600, 'Felipin');

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
  `produtor` varchar(222) NOT NULL,
  `idprodutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_omega`
--

INSERT INTO `produtos_omega` (`idproduto`, `nome`, `Preco_producao`, `quantidade`, `Total_gasto`, `Preco_venda`, `quantida_Venda`, `total_venda`, `Total_Final`, `produtor`, `idprodutor`) VALUES
(3463, 'FeijÃ£o', 25, 150, 3750, 30, 140, 4200, 450, 'Felipin', 23),
(3464, 'soja', 150, 500, 75000, 200, 400, 80000, 5000, 'Felipin', 23);

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
(21, 'Felipe Schmitz', 'FelipeSchmitz@gmail.com', '25d55ad283aa400af464c76d713c07ad', 1),
(23, 'Felipin', 'Felipinabl@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `produtos_omega`
--
ALTER TABLE `produtos_omega`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3465;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
