# /*************************************************************************
# ***  Syst�m pro vy��t�n� plynom�ru                                     ***
# ***  (c) Petr Holcman - ja@petrholcman.cz                              ***
# ***  SQL - really simple "db" :-)                                      *** 
# *************************************************************************/

-- Struktura tabulky `plynomer`

CREATE TABLE IF NOT EXISTS `plynomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id z�znamu',
  `time` datetime NOT NULL COMMENT '�as detekce sestupn� hrany',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- Struktura tabulky `plynomer_denni`

CREATE TABLE IF NOT EXISTS `plynomer_denni` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `den` date NOT NULL COMMENT 'Ur�it� den',
  `spotreba_den` decimal(10,2) DEFAULT NULL COMMENT 'Sou�et spot�eby v tomto dni',
  `spotreba_tyden` decimal(10,2) DEFAULT NULL COMMENT 'Sou�et spot�eby v tomto t�dnu',
  `spotreba_mesic` decimal(10,2) DEFAULT NULL COMMENT 'Sou�et spot�eby v tomto m�s�ci',
  `spotreba_rok` decimal(10,2) DEFAULT NULL COMMENT 'Sou�et spot�eby v tomto roce',
  `spotreba_celkem` decimal(10,2) DEFAULT NULL COMMENT 'Sou�et v�ech nam��en�ch hodnot spot�eby',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=19 ;

-- Struktura tabulky `plynomer_hodinova`

CREATE TABLE IF NOT EXISTS `plynomer_hodinova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spotreba` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=454 ;