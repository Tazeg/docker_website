DROP TABLE IF EXISTS `mytable`;

CREATE TABLE `mytable` (
  `id` varchar(6) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `mytable` VALUES
  ('NBQ4Au','Jeff'),
  ('pmGjA1','Sandra'),
  ('Gmd2AW','Maya');
