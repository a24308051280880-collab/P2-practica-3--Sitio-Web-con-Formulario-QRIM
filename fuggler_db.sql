-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2026 at 05:23 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuggler_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `categoria` enum('llavero','peluche') NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `imagen`, `descripcion`, `precio`) VALUES
(1, 'Plankton Keyring', 'llavero', 'https://acdn-us.mitiendanube.com/stores/002/364/332/products/21234330620261-76ca80fa9332e099c817828729025040-1024-1024.webp', 'Llavero de peluche licenciado de Plankton (5 pulgadas) de la serie Bob Esponja con gancho metálico.', 177.00),
(2, 'Gary Keyring', 'llavero', 'https://i5-mx.walmartimages.com/asr/1131831f-b431-4fd0-b87c-e9b07926e41d.526bd583aa2421b1cf399c8988e8b15a.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'Llavero de peluche de Gary el caracol con detalles de dentadura Fuggler y clip para mochila.', 177.00),
(3, 'Bob Esponja Keyring', 'llavero', 'https://i5-mx.walmartimages.com/asr/06b07217-0461-49da-9839-88839b08b782.237b6b51c3ceb0983e10b23ab63bb4b2.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 'Mini peluche llavero de Bob Esponja de 5 pulgadas con ojos perturbadores y felpa suave.', 177.00),
(4, 'Patricio Keyring', 'llavero', 'https://juguetron.vtexassets.com/arquivos/ids/241287/6983a910a3d3531823d9b488.jpg?v=639058329806370000', 'Llavero de Patricio Estrella en versión monstruo feo y divertido con textura suave.', 177.00),
(5, 'Calamardo Keyring', 'llavero', 'https://i5-mx.walmartimages.com/asr/85f889b0-4531-4251-947e-99fc6330d561.6f45ffa1be1908bf772f361402319ce9.jpeg', 'Calamardo Tentáculos en formato llavero con expresión seria y dentadura característica.', 177.00),
(6, 'Key Rings Series 4 - Green', 'llavero', 'https://http2.mlstatic.com/D_Q_NP_2X_829883-CBT94306881007_102025-P.webp', 'Llavero coleccionable de la Serie 4 con pelaje verde neón y dientes realistas.', 267.00),
(7, 'Key Rings Series 4 - Pink', 'llavero', 'https://images.stockx.com/images/Fuggler-Rabid-Rabbit-Pink-Fleece-Keyring-Plush.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1756371409', 'Llavero miniatura Fuggler en color rosa brillante con clip metálico ultra resistente.', 267.00),
(8, 'Key Rings Series 4 - Leopard', 'llavero', 'https://images.stockx.com/images/Fuggler-Annoyed-Alien-Leopard-Print-Keyring-Plush.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1756371317', 'Monstruo feo llavero con estampado estilo leopardo y ojos desparejados.', 267.00),
(9, 'Key Rings Series 4 - Purple', 'llavero', 'https://i5-mx.walmartimages.com/asr/8f5fd82c-5b6c-4931-8c41-9ffb42204b77.bd15291fb47e2c50efc6c71437df6107.jpeg', 'Llavero suave en tono morado listo para colgarse en bolsas y mochilas.', 267.00),
(10, 'Key Rings Series 4 - Grey', 'llavero', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgOHjMcJ1nUfnVlBMXRRJkQFOi9G52rN5LD_RKMbTo4L_KVzaSmqIP-i4&s=10', 'Fuggler llavero de la Serie 4 con cuerpo afelpado en tono gris claro.', 267.00),
(11, 'SpongeBob Yellow Fuzzy 9\"', 'peluche', 'https://i5.walmartimages.com/seo/Fuggler-9-inch-Spongebob-Series-SquarePants-Funny-Ugly-Monster-Soft-Plush-Toy-by-ZURU_82cd9d20-d14e-4fe5-a061-941d83918566.1fddc608a67edc06745eafe6b943fea5.jpeg', 'Peluche coleccionable de Bob Esponja de 9 pulgadas con pelaje esponjoso amarillo y dientes humanos.', 411.00),
(12, 'Lord Long Ears - Love Fugg', 'peluche', 'https://www.fuggler.com.co/wp-content/uploads/2026/03/imgiasdfasd_.jpg', 'Fuggler con orejas largas negras, ojos inquietantes y un corazón rojo parcheado en el pecho.', 357.00),
(13, 'Patrick Tornado 9\"', 'peluche', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBGlNGjqwMMNhU3JMTuqWcgVoqfAk-h-AyjOwaSywDOLPP9gRjCjrRRhE2&s=10', 'Peluche gigante de Patricio Estrella de 9 pulgadas con diseño caótico y pantalones cortos.', 411.00),
(14, 'Jaws Shark Licensed Plush 9\"', 'peluche', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRf8yn-XzudRAHh_mHzMt10W1LJBSDdiI058nbhG-wRLvSYlaKNdl3sU1upcDd6cvxsREkSS2IGUYANvswBdkJDh4zpWO6Y_zki2A0Ivg9JezuE1bXV5z-xG_h3Ep_WszQ7YsIbYX2xP3I&usqp=CAc', 'Fuggler oficial licenciado con traje de tiburón blanco de la película Jaws (Tiburón).', 357.00),
(15, 'Fuggler Wedding Fuggs ', 'peluche', 'https://i5.walmartimages.com/seo/WEDDING-FUGG-2PK-9IN_0d83221a-7ca4-4456-b02d-2d18f74c66d4.2d7022d7003a749e4a9bbda99436d397.jpeg', 'Monstruo Fuggler en traje de novio elegante listo para arruinar bodas y causar estragos.', 411.00),
(16, 'Fugg Stars Rhymer Mcslimer', 'peluche', 'https://m.media-amazon.com/images/I/814yrYnpCeL._AC_UF894,1000_QL80_.jpg', 'Monstruo verde con pelaje negro, tatuajes faciales, dientes metálicos y calzoncillos Tie-Dye. Peculiarmente famoso', 411.00),
(17, 'Mojo Jojo Plush', 'peluche', 'https://http2.mlstatic.com/D_NQ_NP_991481-MLA105671086896_012026-O.webp', 'Peluche licenciado del villano Mojo Jojo de Las Chicas Superpoderosas en versión Fuggler.', 447.00),
(18, 'Red Heart Monster', 'peluche', 'https://i5.walmartimages.com/asr/d4ed44ec-e74d-49e5-95e2-fd7f761c307e.7bf8550ec48aca5f74f72de15cd67007.jpeg?odnHeight=328&odnWidth=328&odnBg=FFFFFF', 'Monstruo afelpado de color rojo brillante cargando un corazón dorado metálico.', 357.00),
(19, 'pink Heart Monster', 'peluche', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmvNDvIbChCE3GS_F_A1FpzfX-LjHcUhj1QtYelaiGYj9ll88ThhAbb2c&s=10', 'Monstruo feo color rosa con ojos fijos cargando un corazón roto.', 357.00),
(20, 'Gollum Special Edition 9\"', 'peluche', 'https://http2.mlstatic.com/D_NQ_NP_625790-MLA91647360958_092025-O.webp', 'Peluche coleccionable de Gollum de El Señor de los Anillos en edición especial Fuggler.', 411.00);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `direccion`, `estado`, `ciudad`, `fecha_registro`) VALUES
(1, 'MIA MARINA ARZAPALA GUERRERO', 'a.24308051280795@cbtis128.edu.mx', 'XXX', 'Chihuahua', 'Juarez', '2026-11-06 03:22:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
