-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema baseballdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `baseballdb` ;

-- -----------------------------------------------------
-- Schema baseballdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `baseballdb` DEFAULT CHARACTER SET utf8 ;
USE `baseballdb` ;

-- -----------------------------------------------------
-- Table `baseball_teams`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baseball_teams` ;

CREATE TABLE IF NOT EXISTS `baseball_teams` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `team_name` VARCHAR(100) NOT NULL,
  `team_league` CHAR(2) NOT NULL,
  `team_city` VARCHAR(100) NOT NULL,
  `team_state` CHAR(2) NOT NULL,
  `team_manager_first_name` VARCHAR(45) NOT NULL,
  `team_manager_last_name` VARCHAR(45) NOT NULL,
  `team_trivia` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO baseball@localhost;
 DROP USER baseball@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'baseball'@'localhost' IDENTIFIED BY 'baseball';

GRANT SELECT, INSERT, TRIGGER ON TABLE * TO 'baseball'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'baseball'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `baseball_teams`
-- -----------------------------------------------------
START TRANSACTION;
USE `baseballdb`;
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (1, 'Texas Rangers', 'AL', 'Arlington', 'TX', 'Jon', 'Daniels', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (2, 'Balitmore Orioles', 'AL', 'Baltimore', 'MD', 'Dan', 'Duquette', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (3, 'Boston Red Sox', 'AL', 'Boston', 'MA', 'Dave', 'Dombrowski', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (4, 'New York Yankees', 'AL', 'New York City', 'NY', 'Brian', 'Cashman', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (5, 'Tampa Bay Rays', 'AL', 'St. Petersburg', 'FL', 'Erik', 'Neander', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (6, 'Toronto Blue Jays', 'AL', 'Toronto', 'ON', 'Ross', 'Atkins', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (7, 'Chicago White Sox', 'AL', 'Chicago', 'IL', 'Rick', 'Hahn', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (8, 'Cleveland Indians', 'AL', 'Cleveland', 'OH', 'Mike', 'Chernoff', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (9, 'Detroit Tigers', 'AL', 'Detroit', 'MI', 'Al', 'Avila', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (10, 'Kansas City Royals', 'AL', 'Kansas City', 'KS', 'Dayton', 'Moore', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (11, 'Minnesota Twins', 'AL', 'Minneapolis', 'MN', 'Thad', 'Levine', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (12, 'Houston Astros', 'AL', 'Houston', 'TX', 'Jeff', 'Luhnow', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (13, 'Los Angeles Angels', 'AL', 'Los Angeles', 'CA', 'Billy', 'Eppler', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (14, 'Oakland Athletics', 'AL', 'Oakland', 'CA', 'David', 'Forst', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (15, 'Seattle Mariners', 'AL', 'Seattle', 'WA', 'Jerry', 'Dipoto', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (16, 'Atlanta Braves', 'NL', 'Atlanta', 'GA', 'Alex', 'Anthopoulos', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (17, 'Miami Marlins', 'NL', 'Miami', 'FL', 'Michael', 'Hill', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (18, 'New York Mets', 'NL', 'New York City', 'NY', 'Sandy', 'Alderson', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (19, 'Philadelphia Phillies', 'NL', 'Philadelphia', 'PA', 'Matt', 'Klentak', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (20, 'Washington Nationals', 'NL', 'Washington', 'DC', 'Mike', 'Rizzo', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (21, 'Chicago Cubs', 'NL', 'Chicago', 'IL', 'Jed', 'Hoyer', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (22, 'Cincinnati Reds', 'NL', 'Cincinnati', 'OH', 'Dick', 'Williams', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (23, 'Milwaukee Brewers', 'NL', 'Milwaukee', 'WI', 'David', 'Stearns', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (24, 'Pittsburgh Pirates', 'NL', 'Pittsburgh', 'PA', 'Mike', 'Huntington', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (25, 'St. Louis Cardinals', 'NL', 'St. Louis', 'MO', 'Mike', 'Girsch', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (26, 'Arizona Diamondbacks', 'NL', 'Phoenix', 'AZ', 'Mike', 'Hazen', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (27, 'Colorado Rockies', 'NL', 'Denver', 'CO', 'Jeff', 'Bridich', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (28, 'Los Angeles Dodgers', 'NL', 'Los Angeles', 'CA', 'Farahan', 'Zaidi', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (29, 'San Diego Padres', 'NL', 'San Diego', 'CA', 'A.J.', 'Preller', NULL);
INSERT INTO `baseball_teams` (`id`, `team_name`, `team_league`, `team_city`, `team_state`, `team_manager_first_name`, `team_manager_last_name`, `team_trivia`) VALUES (30, 'San Francisco Giants', 'NL', 'San Francisco', 'CA', 'Bobby', 'Evans', NULL);

COMMIT;
