-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 ;
USE `project` ;

-- -----------------------------------------------------
-- Table `project`.`citizen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`citizen` (
  `cit_name` VARCHAR(20) NOT NULL,
  `cit_laname` VARCHAR(20) NOT NULL,
  `cit_id` INT(11) NOT NULL AUTO_INCREMENT,
  `cit_long` FLOAT NOT NULL,
  `cit_lat` FLOAT NOT NULL,
  `cit_username` VARCHAR(20) NOT NULL,
  `cit_password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cit_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`categories` (
  `cat_id` INT(11) NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`cat_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`product` (
  `pr_name` VARCHAR(50) NOT NULL,
  `pr_id` INT(11) NOT NULL AUTO_INCREMENT,
  `pr_cat_id` INT(11) NOT NULL,
  `detail_name` VARCHAR(50) NULL DEFAULT NULL,
  `detail_value` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pr_id`, `pr_cat_id`),
  INDEX `PRODUCTCATEGORY` (`pr_cat_id` ASC) VISIBLE,
  CONSTRAINT `PRODUCTCATEGORY`
    FOREIGN KEY (`pr_cat_id`)
    REFERENCES `project`.`categories` (`cat_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`demands`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`demands` (
  `dem_id` INT(11) NOT NULL AUTO_INCREMENT,
  `dem_cit_id` INT(11) NOT NULL,
  `dem_pr_id` INT(11) NOT NULL,
  `dem_type` ENUM('request', 'donation') NOT NULL,
  PRIMARY KEY (`dem_id`, `dem_cit_id`, `dem_pr_id`),
  INDEX `DEMPROD` (`dem_pr_id` ASC) VISIBLE,
  INDEX `DEMCIT` (`dem_cit_id` ASC) VISIBLE,
  CONSTRAINT `DEMCIT`
    FOREIGN KEY (`dem_cit_id`)
    REFERENCES `project`.`citizen` (`cit_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `DEMPROD`
    FOREIGN KEY (`dem_pr_id`)
    REFERENCES `project`.`product` (`pr_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`task`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`task` (
  `task_id` INT(11) NOT NULL AUTO_INCREMENT,
  `task_dem_id` INT(11) NOT NULL,
  `task_submission_date` DATETIME NOT NULL,
  `task_acceptance_date` DATETIME NULL DEFAULT NULL,
  `task_completion_date` DATETIME NULL DEFAULT NULL,
  `task_status` ENUM('Complete', 'Not Complete') NOT NULL,
  PRIMARY KEY (`task_id`, `task_dem_id`),
  INDEX `TASKDEM` (`task_dem_id` ASC) VISIBLE,
  CONSTRAINT `TASKDEM`
    FOREIGN KEY (`task_dem_id`)
    REFERENCES `project`.`demands` (`dem_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`volunteer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`volunteer` (
  `vol_name` VARCHAR(20) NOT NULL,
  `vol_lname` VARCHAR(20) NOT NULL,
  `vol_id` INT(11) NOT NULL AUTO_INCREMENT,
  `location` INT(11) NOT NULL,
  `vol_long` FLOAT NOT NULL,
  `vol_lat` FLOAT NOT NULL,
  `vol_username` VARCHAR(20) NOT NULL,
  `vol_password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`vol_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`accepts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`accepts` (
  `acc_vol_id` INT(11) NOT NULL,
  `acc_task_id` INT(11) NOT NULL,
  PRIMARY KEY (`acc_vol_id`, `acc_task_id`),
  UNIQUE INDEX `acc_task_id` (`acc_task_id` ASC) VISIBLE,
  CONSTRAINT `ACCEPTTASK`
    FOREIGN KEY (`acc_task_id`)
    REFERENCES `project`.`task` (`task_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `VOLTASK`
    FOREIGN KEY (`acc_vol_id`)
    REFERENCES `project`.`volunteer` (`vol_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`base`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`base` (
  `id` INT(20) NOT NULL,
  `longtitude` FLOAT NOT NULL,
  `latitude` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`base_load`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`base_load` (
  `asdaa` INT(11) NOT NULL AUTO_INCREMENT,
  `base_id` INT(11) NULL DEFAULT 0,
  `pr_id` INT(11) NULL DEFAULT NULL,
  `pr_quantity` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`asdaa`),
  INDEX `base_id` (`base_id` ASC) VISIBLE,
  INDEX `pr_id` (`pr_id` ASC) VISIBLE,
  CONSTRAINT `base_load_ibfk_1`
    FOREIGN KEY (`base_id`)
    REFERENCES `project`.`base` (`id`),
  CONSTRAINT `base_load_ibfk_2`
    FOREIGN KEY (`pr_id`)
    REFERENCES `project`.`product` (`pr_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`users` (
  `username` VARCHAR(20) NULL DEFAULT NULL,
  `pwd` VARCHAR(20) NULL DEFAULT NULL,
  `user_type` VARCHAR(20) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`vehicle` (
  `veh_id` INT(11) NOT NULL AUTO_INCREMENT,
  `veh_vol_id` INT(11) NOT NULL,
  `longtitude` FLOAT NOT NULL,
  `latitude` FLOAT NOT NULL,
  `veh_task_num` INT(11) NOT NULL,
  PRIMARY KEY (`veh_id`, `veh_vol_id`),
  INDEX `VEHICLEVOL` (`veh_vol_id` ASC) VISIBLE,
  CONSTRAINT `VEHICLEVOL`
    FOREIGN KEY (`veh_vol_id`)
    REFERENCES `project`.`volunteer` (`vol_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `project`.`veh_load`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project`.`veh_load` (
  `veh_load_id` INT(11) NOT NULL,
  `veh_load_prod` INT(11) NOT NULL,
  `pr_quantity` INT(11) NOT NULL,
  PRIMARY KEY (`veh_load_id`, `veh_load_prod`),
  INDEX `LOADPRODUCT` (`veh_load_prod` ASC) VISIBLE,
  CONSTRAINT `LOADPRODUCT`
    FOREIGN KEY (`veh_load_prod`)
    REFERENCES `project`.`product` (`pr_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `VEHICLELOAD`
    FOREIGN KEY (`veh_load_id`)
    REFERENCES `project`.`vehicle` (`veh_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

USE `project` ;

-- -----------------------------------------------------
-- procedure load_from_base
-- -----------------------------------------------------

DELIMITER $$
USE `project`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `load_from_base`(IN `in_quantity` INT, IN `in_veh_id` INT, IN `in_pr_id` INT)
BEGIN
    SELECT 'HERE';
    IF in_quantity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity';
    END IF;

    SELECT pr_quantity INTO @pr_quantity FROM base_load WHERE pr_id = in_pr_id;
    IF @pr_quantity < in_quantity OR @pr_quantity IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough items';
    ELSEIF @pr_quantity = in_quantity THEN
        DELETE FROM base_load WHERE pr_id = in_pr_id;
    ELSE
        UPDATE base_load SET pr_quantity = @pr_quantity - in_quantity WHERE pr_id = in_pr_id;
    END IF;

    IF EXISTS (SELECT * FROM veh_load WHERE veh_load_prod = in_pr_id AND veh_load_id = in_veh_id) THEN
    	SELECT CONCAT('The value of x is ', in_quantity);
        UPDATE veh_load SET pr_quantity = pr_quantity + in_quantity WHERE veh_load_prod = in_pr_id AND veh_load_id = in_veh_id;
    ELSE
        INSERT INTO veh_load (veh_load_id, veh_load_prod, pr_quantity) VALUES (in_veh_id, in_pr_id, in_quantity);
    END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure load_to_base
-- -----------------------------------------------------

DELIMITER $$
USE `project`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `load_to_base`(IN `in_veh_load_id` INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_prod_id INT;
    DECLARE v_quantity INT;
    DECLARE cur CURSOR FOR SELECT veh_load_prod, pr_quantity FROM veh_load WHERE veh_load_id = in_veh_load_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;
    
    read_loop: LOOP
        FETCH cur INTO v_prod_id, v_quantity;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('The value of quantity is ', v_quantity);
        DELETE FROM veh_load WHERE veh_load_id = in_veh_load_id AND veh_load_prod = v_prod_id;
        IF EXISTS (SELECT * FROM base_load WHERE pr_id = v_prod_id) THEN
            UPDATE base_load SET pr_quantity = pr_quantity + v_quantity WHERE pr_id = v_prod_id;
        ELSE
            INSERT INTO base_load (pr_id, pr_quantity) VALUES (v_prod_id, v_quantity);
        END IF;
    END LOOP;
    
    CLOSE cur;
END$$

DELIMITER ;
USE `project`;

DELIMITER $$
USE `project`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `project`.`update_task1`
BEFORE INSERT ON `project`.`accepts`
FOR EACH ROW
UPDATE `task`
    SET `task`.`task_acceptance_date` = CURRENT_TIMESTAMP
    WHERE `task`.`task_id` = NEW.`acc_task_id`$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
