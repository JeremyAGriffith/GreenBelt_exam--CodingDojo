SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `seattle_exam_green` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `seattle_exam_green` ;

-- -----------------------------------------------------
-- Table `seattle_exam_green`.`students`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `seattle_exam_green`.`students` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(256) NULL ,
  `created_at` DATETIME NULL ,
  `updated_at` DATETIME NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `seattle_exam_green`.`exams`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `seattle_exam_green`.`exams` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `student_id` INT NOT NULL ,
  `subject` VARCHAR(45) NULL ,
  `grade` INT NULL ,
  `status` VARCHAR(45) NULL ,
  `notes` TEXT NULL ,
  `created_at` DATETIME NULL ,
  `updated_at` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_exams_students_idx` (`student_id` ASC) ,
  CONSTRAINT `fk_exams_students`
    FOREIGN KEY (`student_id` )
    REFERENCES `seattle_exam_green`.`students` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `seattle_exam_green` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
