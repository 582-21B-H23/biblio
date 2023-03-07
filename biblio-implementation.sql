-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE biblio;
USE biblio;

-- ---
-- Table 'livre'
-- 
-- ---

DROP TABLE IF EXISTS `livre`;
		
CREATE TABLE `livre` (
  `liv_id` INT NOT NULL AUTO_INCREMENT,
  `liv_titre` VARCHAR(500) NOT NULL,
  `liv_isbn13` CHAR(13) NOT NULL,
  `liv_annee` YEAR NULL DEFAULT NULL,
  PRIMARY KEY (`liv_id`),
  UNIQUE KEY (`liv_isbn13`)
);

-- ---
-- Table 'auteur'
-- 
-- ---

DROP TABLE IF EXISTS `auteur`;
		
CREATE TABLE `auteur` (
  `aut_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `aut_prenom` VARCHAR(50) NULL DEFAULT NULL,
  `aut_nom` VARCHAR(50) NULL DEFAULT NULL,
  `aut_ddn` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`aut_id`)
);

-- ---
-- Table 'rel_livre_auteur'
-- 
-- ---

DROP TABLE IF EXISTS `rel_livre_auteur`;
		
CREATE TABLE `rel_livre_auteur` (
  `rla_id` INT NOT NULL AUTO_INCREMENT,
  `rla_liv_id_ce` INT NOT NULL,
  `rla_aut_id_ce` SMALLINT NOT NULL,
  PRIMARY KEY (`rla_id`),
KEY (`rla_liv_id_ce`),
KEY (`rla_aut_id_ce`)
);

-- ---
-- Table Properties
-- ---

ALTER TABLE `livre` ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE `auteur` ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE `rel_livre_auteur` ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `rel_livre_auteur` ADD FOREIGN KEY (rla_liv_id_ce) REFERENCES `livre` (`liv_id`);
ALTER TABLE `rel_livre_auteur` ADD FOREIGN KEY (rla_aut_id_ce) REFERENCES `auteur` (`aut_id`);
