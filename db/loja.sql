-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jul-2024 às 10:15
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,3) NOT NULL,
  `imagem_url` varchar(255) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `nome`, `descricao`, `preco`, `imagem_url`, `data_criacao`) VALUES
(1, 'Tecno Camon', 'Descrição do produto 1. \r\nEste é um ótimo produto que você vai adorar.', '900.000', 'img/Tecno-Camon-17-710.webp', '2024-07-11 10:27:49'),
(2, 'Auriculares ', 'Descrição. Este produto é altamente recomendado.', '49.990', 'img/produto2.jpg', '2024-07-09 10:27:49'),
(3, 'Produto 3', 'Descrição do produto 3. Você vai se apaixonar por este produto.', '19.990', 'img/produto3.jpg', '2024-07-09 10:27:49'),
(4, 'Produto 1', 'Descrição do produto 1. Este é um ótimo produto que você vai adorar.', '29.990', 'img/produto2.jpg', '2024-07-09 11:35:19'),
(5, 'Produto 2', 'Descrição do produto 2. Este produto é altamente recomendado.', '49.990', 'img/produto2.jpg', '2024-07-09 11:35:19'),
(6, 'Produto 3', 'Descrição do produto 3. Você vai se apaixonar por este produto.', '19.990', 'img/produto3.jpg', '2024-07-09 11:35:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem_url` varchar(255) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `imagem_url`, `data_criacao`) VALUES
(1, 'Tecno Camon-17', 'Modelo: \r\nCor: Preto\r\nBateria: Boa', '60500.00', 'img/Tecno-Camon-17-710.webp', '2024-07-14 09:26:49'),
(2, 'Auriculares Sem Fio', 'Descrição do produto 2. \r\nEste produto é altamente recomendado.', '20000.00', 'img/produto2.jpg', '2024-07-09 11:27:49'),
(3, 'Iphone 14Pro Max', 'Descrição do produto 3. \r\nVocê vai se apaixonar por este produto.', '650000.00', 'img/produto3.jpg', '2024-07-09 11:27:49'),
(4, 'Monitor-215-hp', 'Tela: UHD\r\nConexão: HDMI\r\nPolega: 40P\r\nSlim', '250000.00', 'img/monitor-215-hp.jpg', '2024-07-01 12:35:19'),
(5, 'AP Wifi Xiaomi', 'Descrição do produto 2. \r\nEste produto é altamente recomendado.', '30000.00', 'img/ap-wifi-xiaomi.jpg', '2024-07-09 12:35:19'),
(6, 'IPhone 15 Pro 256GB', 'Descrição do produto 3. \r\nVocê vai se apaixonar por este produto.', '1000000.00', 'img/produto3.jpg', '2024-07-09 12:35:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
