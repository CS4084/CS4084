CREATE TABLE `students` (

 `student ID` int(11) DEFAULT NULL,

 `student name` varchar(45) DEFAULT NULL,
 
 `students college` varchar(45) DEFAULT NULL,
 
 `course code` varchar(45) DEFAULT NULL,
 
 `student email` varchar(45) DEFAULT NULL,

 `student password` char(64) DEFAULT NULL,
 
 `user id` int(11) NOT NULL AUTO_INCREMENT,
 UNIQUE KEY `user id_UNIQUE` (`user id`),
 
 UNIQUE KEY `student ID_UNIQUE` (`student ID`),
 
 UNIQUE KEY `student email_UNIQUE` (`student email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
