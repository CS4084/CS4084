CREATE TABLE `tasks` (

`Title` varchar(20) NOT NULL,

`Type` varchar(45) NOT NULL,

`Description` varchar(100) NOT NULL,
 
`Tags` varchar(100) DEFAULT NULL,

`Number of Pages` int(11) NOT NULL,
 
`Number of Words` int(11) NOT NULL,

`Source File Format` varchar(45) DEFAULT NULL,

`Deadline Date - claiming` int(11) NOT NULL,
 
`Deadline Date - completion` int(11) DEFAULT NULL,

`Claimed Tasks` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Boolean',
 
`Flagged Tasks` tinyint(4) DEFAULT NULL COMMENT 'Boolean',
  `Completed Taks` tinyint(4) DEFAULT NULL COMMENT 'Boolean',

 PRIMARY KEY (`Claimed Tasks`,`Title`,`Number of Pages`,`Number of Words`)
)
 ENGINE=InnoDB DEFAULT CHARSET=utf8
