-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2026 at 03:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olojinha`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `catid` int NOT NULL,
  `catnome` varchar(150) DEFAULT NULL,
  `catativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`catid`, `catnome`, `catativo`) VALUES
(1, 'Acessórios para Veículos', 1),
(2, 'Agro', 1),
(3, 'Alimentos e Bebidas', 1),
(4, 'Pet Shop', 1),
(5, 'Antiguidades e Coleções', 1),
(6, 'Arte, Papelaria e Armarinho', 1),
(7, 'Bebês', 1),
(8, 'Beleza e Cuidado Pessoal', 1),
(9, 'Brinquedos e Hobbies', 1),
(10, 'Calçados, Roupas e Bolsas', 1),
(11, 'Câmeras e Acessórios', 1),
(12, 'Carros, Motos e Outros', 1),
(13, 'Casa, Móveis e Decoração', 1),
(14, 'Celulares e Telefones', 1),
(15, 'Construção', 1),
(16, 'Eletrodomésticos', 1),
(17, 'Eletrônicos, Áudio e Vídeo', 1),
(18, 'Esportes e Fitness', 1),
(19, 'Ferramentas', 1),
(20, 'Festas e Lembrancinhas', 1),
(21, 'Games', 1),
(22, 'Imóveis', 1),
(23, 'Indústria e Comércio', 1),
(24, 'Informática', 1),
(25, 'Ingressos', 1),
(26, 'Instrumentos Musicais', 1),
(27, 'Joias e Relógios', 1),
(28, 'Livros, Revistas e Comics', 1),
(29, 'Música, Filmes e Seriados', 1),
(30, 'Saúde', 1),
(31, 'Serviços', 1),
(32, 'Mais Categorias', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fotosproduto`
--

CREATE TABLE `fotosproduto` (
  `fotid` int NOT NULL,
  `fotcaminho` varchar(1024) DEFAULT NULL,
  `fotdescricao` varchar(150) DEFAULT NULL,
  `fotproid` int DEFAULT NULL,
  `fotprincipal` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fotosproduto`
--

INSERT INTO `fotosproduto` (`fotid`, `fotcaminho`, `fotdescricao`, `fotproid`, `fotprincipal`) VALUES
(1, 'imgprodutos/1.png', '', 1, 1),
(2, 'imgprodutos/2.png', '', 1, 1),
(3, 'imgprodutos/3.png', '', 1, 1),
(4, 'imgprodutos/4.png', '', 1, 1),
(5, 'imgprodutos/5.png', '', 1, 1),
(6, 'imgprodutos/6.png', '', 1, 1),
(7, 'imgprodutos/7.png', '', 1, 1),
(8, 'imgprodutos/8.png', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `proid` int NOT NULL,
  `pronome` varchar(150) DEFAULT NULL,
  `prodescricao` varchar(1024) DEFAULT NULL,
  `provalorcusto` double DEFAULT NULL,
  `provalorvenda` double DEFAULT NULL,
  `proquantidade` int DEFAULT NULL,
  `prosubid` int DEFAULT NULL,
  `proativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`proid`, `pronome`, `prodescricao`, `provalorcusto`, `provalorvenda`, `proquantidade`, `prosubid`, `proativo`) VALUES
(1, 'Gel modelador de sobrancelhas para sobrancelhas cheias e naturais Ruby Rose Melu', 'O Gel para Sobrancelhas Melu by Ruby Rose é o produto perfeito para modelar as sobrancelhas do jeitinho que você gosta! Com ativos que tratam os fios e finalizam a produção delicadamente, o gel deixa suas sobrancelhas naturais, cheinhas e super modeladas em qualquer make, das mais básicas às mais completas. Além disso, é à prova d água e promete longa duração, deixando os fios no lugar por muito tempo.', 5.9, 11.66, 60, 3, 1),
(2, 'Hidratante Facial em Gel Antioleosidade - Phállebeauty 35g', 'Hidratante Revigorante. Combina uma exclusiva textura ultraleve gel não oleosa, de rápida absorção e refrescante com hidratação intensa. O produto é indicado para uso diário e dermatologicamente testado. Múltiplos Benefícios: - Hidratação Delicada e Efetiva - Ação Tonificante e Revigorante - Ação Antioxidante - Efeito primer, Pré-Maquiagem e pré-filtros - Vegano - 100% Livre de Óleos.', 2.5, 13.99, 18, 3, 1),
(3, 'Kit Sabonete + Hidratante + Esfoliante Rhenuks 200ml Corpo e Rosto 10 Fragrâncias', 'Sabonete Líquido Corporal e Facial: O sabonete líquido complementa perfeitamente sua rotina de cuidados. Sua fórmula suave limpa profundamente sem agredir a pele, removendo impurezas e deixando uma sensação de frescor. Com o aroma doce e revitalizante de frutas, transforma o momento do banho em uma experiência prazerosa e energizante.', 9.98, 25.9, 37, 4, 1),
(4, 'Kit Cuidado Corporal banho Poran Chocolate Com Pimenta oleo hidratante corporal esfoliante body splash', 'Body Splash 160 mL / Óleo Corporal 120 mL /Hidratante Corporal 145g / Esfoliante Corpo E Rosto 240g', 20, 49.99, 86, 4, 1),
(5, 'Presente Bebê Recém Nascido 4 Peças Body Manga Longa Calça Mijão Meia Pantufa e Naninha Enxoval', '✔ Tecido Body com toque suave e antialérgico / ✔ Visual encantador e peças coordenadas / ✔ Tamanho P – ideal de 0 a 3 meses / ✔ Pronto para presentear', 9.9, 25.9, 4, 5, 1),
(6, 'Kit Enxoval Bebê 20 Peças Completo | Higiene, Saúde e Cuidados Essenciais Recém-Nascido', 'O kit perfeito para cuidar do seu bebê com praticidade, segurança e carinho desde os primeiros dias de vida. Ideal para montar o enxoval, presentear ou facilitar a rotina dos pais.', 27, 49.99, 23, 5, 1),
(7, 'Body Bebê Lilo + Touca 100% Algodão Temático Mesversário Kit 2 Peças', ' Malha em suedine 100% algodao, super macio para o conforto do seu bebê. /  Ótimo acabamento, costuras reforçadas / Gola que facilita a troca do bebê por baixo ou por cima, tornando mais prático seu dia dia. /  Estampa Silkscreen á base d`água que não irrita a pele do bebê e promove conforto / Fechamento em botões de pressão entre as pernas.', 10, 25.9, 20, 6, 1),
(8, 'Roupa Conjunto Roupinha Conjuntinho Bebê Menina Body Manga Longa Calça Faixa Calça Inverno Frio Feminino Mesversário', '“Apresentamos nossa linha exclusiva de roupas para bebês inspirada nas cores da seleção brasileira, desenvolvida especialmente para celebrar a Copa do Mundo com elegância e conforto. Produzidas com materiais de alta qualidade e toque suave, as peças garantem bem-estar e segurança para a pele delicada dos pequenos. Com design sofisticado e acabamento cuidadoso, são ideais para ocasiões especiais em família, permitindo que o bebê participe desse momento tão significativo com estilo e charme.', 23.22, 49.99, 30, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategorias`
--

CREATE TABLE `subcategorias` (
  `subid` int NOT NULL,
  `subnome` varchar(150) DEFAULT NULL,
  `subcatid` int DEFAULT NULL,
  `subativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategorias`
--

INSERT INTO `subcategorias` (`subid`, `subnome`, `subcatid`, `subativo`) VALUES
(1, 'Acessórios de Carros  e Camionetes', 1, 1),
(2, 'Acessórios de Motos e Quadriciculos', 1, 1),
(3, 'Estabilizadores e no Breaks', 24, 1),
(4, 'Armazenamento', 24, 1),
(5, 'Beleza facial da mulher', 8, 1),
(6, 'Beleza corporal da mulher', 8, 1),
(7, 'Enxoval', 7, 1),
(8, 'Roupa de bebês', 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  ADD PRIMARY KEY (`fotid`),
  ADD KEY `fkfotproid` (`fotproid`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`proid`),
  ADD KEY `fkprosubid` (`prosubid`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`subid`),
  ADD KEY `fksubcatid` (`subcatid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `catid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  MODIFY `fotid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `proid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `subid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  ADD CONSTRAINT `fkfotproid` FOREIGN KEY (`fotproid`) REFERENCES `produtos` (`proid`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fkprosubid` FOREIGN KEY (`prosubid`) REFERENCES `subcategorias` (`subid`);

--
-- Constraints for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `fksubcatid` FOREIGN KEY (`subcatid`) REFERENCES `categorias` (`catid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
