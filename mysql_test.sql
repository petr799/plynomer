# /*************************************************************************
# ***  Systém pro vyčítání plynoměru                                     ***
# ***  (c) Petr Holcman - ja@petrholcman.cz                              ***
# ***  SQL - really simple "db" :-)                                      *** 
# *************************************************************************/

-- Struktura tabulky `plynomer`

CREATE TABLE IF NOT EXISTS `plynomer_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id záznamu',
  `time` datetime NOT NULL COMMENT 'čas detekce sestupní hrany',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- Struktura tabulky `plynomer_denni`

CREATE TABLE IF NOT EXISTS `plynomer_denni_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `den` date NOT NULL COMMENT 'Určitý den',
  `spotreba_den` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto dni',
  `spotreba_tyden` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto týdnu',
  `spotreba_mesic` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto měsíci',
  `spotreba_rok` decimal(10,2) DEFAULT NULL COMMENT 'Součet spotřeby v tomto roce',
  `spotreba_celkem` decimal(10,2) DEFAULT NULL COMMENT 'Součet všech naměřených hodnot spotřeby',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=19 ;

-- Struktura tabulky `plynomer_hodinova`

CREATE TABLE IF NOT EXISTS `plynomer_hodinova_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spotreba` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=454 ;
