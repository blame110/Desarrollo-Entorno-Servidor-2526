-- ============================================
-- LIMPIEZA DE TABLAS
-- ============================================

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE calabozo;
TRUNCATE TABLE ciudad;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================
-- INSERTS PARA LA TABLA CIUDAD (30 ciudades)
-- ============================================

INSERT INTO ciudad (id, nombre, num_habitantes, pais, extension, fecha_fundacion) VALUES
(1, 'Madrid', 3200000, 'España', 605.77, '1561-01-01'),
(2, 'Barcelona', 1620000, 'España', 101.9, '1000-01-01'),
(3, 'Valencia', 791000, 'España', 134.6, '1138-01-01'),
(4, 'Sevilla', 688000, 'España', 140.8, '1248-01-01'),
(5, 'Zaragoza', 674000, 'España', 973.8, '1118-01-01'),
(6, 'París', 2165000, 'Francia', 105.4, '1000-01-01'),
(7, 'Lyon', 516000, 'Francia', 47.87, '1043-01-01'),
(8, 'Marsella', 869000, 'Francia', 240.6, '1000-01-01'),
(9, 'Roma', 2873000, 'Italia', 1285.0, '1000-01-01'),
(10, 'Milán', 1352000, 'Italia', 181.8, '1000-01-01'),
(11, 'Nápoles', 967000, 'Italia', 117.3, '1000-01-01'),
(12, 'Berlín', 3645000, 'Alemania', 891.8, '1237-01-01'),
(13, 'Múnich', 1472000, 'Alemania', 310.4, '1158-01-01'),
(14, 'Hamburgo', 1841000, 'Alemania', 755.2, '1189-01-01'),
(15, 'Londres', 8982000, 'Reino Unido', 1572.0, '1066-01-01'),
(16, 'Manchester', 547000, 'Reino Unido', 115.6, '1301-01-01'),
(17, 'Edimburgo', 488000, 'Reino Unido', 264.0, '1124-01-01'),
(18, 'Lisboa', 505000, 'Portugal', 100.1, '1147-01-01'),
(19, 'Oporto', 237000, 'Portugal', 41.42, '1123-01-01'),
(20, 'Ámsterdam', 872000, 'Países Bajos', 219.3, '1275-01-01'),
(21, 'Bruselas', 1209000, 'Bélgica', 161.4, '1040-01-01'),
(22, 'Viena', 1897000, 'Austria', 414.6, '1137-01-01'),
(23, 'Praga', 1309000, 'República Checa', 496.1, '1230-01-01'),
(24, 'Budapest', 1752000, 'Hungría', 525.2, '1241-01-01'),
(25, 'Varsovia', 1765000, 'Polonia', 517.2, '1300-01-01'),
(26, 'Estocolmo', 975000, 'Suecia', 188.0, '1252-01-01'),
(27, 'Copenhague', 799000, 'Dinamarca', 86.4, '1167-01-01'),
(28, 'Oslo', 697000, 'Noruega', 454.0, '1048-01-01'),
(29, 'Dublín', 554000, 'Irlanda', 115.0, '1204-01-01'),
(30, 'Atenas', 664000, 'Grecia', 38.96, '1834-01-01');

-- ===============================================
-- INSERTS PARA LA TABLA CALABOZO (91 calabozos)
-- ===============================================

-- Calabozos de Madrid (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(1, 'Cripta de los Austrias', 3, 1),
(2, 'Mazmorras del Palacio Real', 5, 1),
(3, 'Catacumbas de la Almudena', 4, 1);

-- Calabozos de Barcelona (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(4, 'Sótanos de la Sagrada Familia', 7, 2),
(5, 'Laberinto del Parque Güell', 5, 2),
(6, 'Túneles Góticos', 4, 2),
(7, 'Caverna del Tibidabo', 6, 2);

-- Calabozos de Valencia (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(8, 'Torres de Serranos Subterráneas', 4, 3),
(9, 'Refugio de las Fallas', 3, 3),
(10, 'Acueducto Olvidado', 5, 3);

-- Calabozos de Sevilla (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(11, 'Mazmorras de la Giralda', 6, 4),
(12, 'Cripta del Alcázar', 7, 4);

-- Calabozos de Zaragoza (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(13, 'Basílica Subterránea del Pilar', 5, 5),
(14, 'Fortaleza Romana Perdida', 4, 5),
(15, 'Cuevas del Ebro', 3, 5);

-- Calabozos de París (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(16, 'Catacumbas de París', 8, 6),
(17, 'Criptas de Notre-Dame', 6, 6),
(18, 'Alcantarillado Maldito', 5, 6),
(19, 'Torre Eiffel Invertida', 9, 6);

-- Calabozos de Lyon (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(20, 'Túneles de la Croix-Rousse', 4, 7),
(21, 'Anfiteatro Romano Oculto', 5, 7);

-- Calabozos de Marsella (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(22, 'Fortaleza del If', 7, 8),
(23, 'Puerto Antiguo Sumergido', 6, 8),
(24, 'Cuevas de Calanques', 5, 8);

-- Calabozos de Roma (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(25, 'Coliseo Subterráneo', 9, 9),
(26, 'Catacumbas de San Calixto', 7, 9),
(27, 'Foro Romano Secreto', 8, 9),
(28, 'Termas de Caracalla Malditas', 6, 9);

-- Calabozos de Milán (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(29, 'Cripta del Duomo', 6, 10),
(30, 'Castillo Sforzesco Oculto', 7, 10),
(31, 'Canales Subterráneos', 5, 10);

-- Calabozos de Nápoles (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(32, 'Napoli Sotterranea', 8, 11),
(33, 'Cavernas del Vesubio', 9, 11);

-- Calabozos de Berlín (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(34, 'Bunker de la Guerra Fría', 5, 12),
(35, 'Túneles del Muro', 4, 12),
(36, 'Reichstag Subterráneo', 6, 12),
(37, 'Catacumbas Prusianas', 7, 12);

-- Calabozos de Múnich (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(38, 'Sótanos de Hofbräuhaus', 4, 13),
(39, 'Castillo de Nymphenburg Oscuro', 6, 13),
(40, 'Cripta Bávara', 5, 13);

-- Calabozos de Hamburgo (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(41, 'Almacenes Portuarios Abandonados', 5, 14),
(42, 'Túneles del Elba', 6, 14);

-- Calabozos de Londres (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(43, 'Torre de Londres Maldita', 8, 15),
(44, 'Metro Fantasma', 6, 15),
(45, 'Criptas de Westminster', 7, 15),
(46, 'Alcantarillas Victorianas', 5, 15);

-- Calabozos de Manchester (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(47, 'Fábricas Industriales Olvidadas', 5, 16),
(48, 'Canales Subterráneos', 4, 16),
(49, 'Refugio Antiaéreo', 3, 16);

-- Calabozos de Edimburgo (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(50, 'Bóvedas de South Bridge', 7, 17),
(51, 'Castillo Encantado', 8, 17),
(52, 'Callejones Embrujados', 6, 17);

-- Calabozos de Lisboa (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(53, 'Acueducto de las Aguas Libres', 5, 18),
(54, 'Castillo de San Jorge Subterráneo', 6, 18);

-- Calabozos de Oporto (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(55, 'Bodegas Malditas', 4, 19),
(56, 'Puente Don Luis Invertido', 5, 19),
(57, 'Ribera Antigua', 3, 19);

-- Calabozos de Ámsterdam (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(58, 'Canales Ocultos', 5, 20),
(59, 'Ático de Ana Frank Alternativo', 4, 20),
(60, 'Molinos Subterráneos', 6, 20),
(61, 'Cripta de la Iglesia Vieja', 5, 20);

-- Calabozos de Bruselas (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(62, 'Grand Place Subterránea', 6, 21),
(63, 'Atomium Invertido', 7, 21);

-- Calabozos de Viena (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(64, 'Catacumbas de San Esteban', 7, 22),
(65, 'Palacio de Schönbrunn Secreto', 8, 22),
(66, 'Cripta Imperial', 6, 22);

-- Calabozos de Praga (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(67, 'Golem de Praga', 9, 23),
(68, 'Castillo Subterráneo', 7, 23),
(69, 'Reloj Astronómico Maldito', 8, 23),
(70, 'Puente de Carlos Oculto', 6, 23);

-- Calabozos de Budapest (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(71, 'Laberinto del Castillo de Buda', 7, 24),
(72, 'Baños Termales Oscuros', 6, 24),
(73, 'Bastión de los Pescadores Secreto', 5, 24);

-- Calabozos de Varsovia (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(74, 'Túneles de la Resistencia', 6, 25),
(75, 'Palacio Real Subterráneo', 7, 25);

-- Calabozos de Estocolmo (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(76, 'Metro Artístico Encantado', 5, 26),
(77, 'Palacio Real Vikingo', 7, 26),
(78, 'Museo Vasa Maldito', 6, 26);

-- Calabozos de Copenhague (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(79, 'Jardines de Tivoli Oscuros', 5, 27),
(80, 'Sirenita Sumergida', 4, 27),
(81, 'Castillo de Kronborg', 8, 27),
(82, 'Nyhavn Subterráneo', 6, 27);

-- Calabozos de Oslo (2)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(83, 'Fortaleza de Akershus', 6, 28),
(84, 'Barco Vikingo Maldito', 7, 28);

-- Calabozos de Dublín (3)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(85, 'Almacenes de Guinness Olvidados', 5, 29),
(86, 'Castillo de Dublín Secreto', 6, 29),
(87, 'Criptas de la Catedral', 4, 29);

-- Calabozos de Atenas (4)
INSERT INTO calabozo (id, name, dificulty, id_ciudad) VALUES
(88, 'Laberinto del Minotauro', 10, 30),
(89, 'Partenón Subterráneo', 9, 30),
(90, 'Ágora Antigua Maldita', 8, 30),
(91, 'Templo de Poseidón Sumergido', 9, 30);

-- ============================================
-- VERIFICACIÓN
-- ============================================

SELECT 'Total Ciudades:' as Descripcion, COUNT(*) as Total FROM ciudad;
SELECT 'Total Calabozos:' as Descripcion, COUNT(*) as Total FROM calabozo;

SELECT c.nombre as Ciudad, COUNT(cal.id) as Num_Calabozos
FROM ciudad c
LEFT JOIN calabozo cal ON c.id = cal.id_ciudad
GROUP BY c.id, c.nombre
ORDER BY c.id;