CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

CREATE TABLE `test`.`user` (
`ID` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(25) NOT NULL,
`AGE` INT NOT NULL,
`IS_ADMIN` BIT(1) NOT NULL DEFAULT false,
`CREATED_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Ivanov', '20',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Petrov', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Sidorov', '22',true);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Petrovich', '23',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Smirnov', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Smith', '24',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Holms', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Watson', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Simon', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Hamilton', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Smolov', '21',false);
INSERT INTO `test`.`user` (`NAME`, `AGE`,`IS_ADMIN`) VALUES ('Zadov', '21',false);

