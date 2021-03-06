CREATE TABLE IF NOT EXISTS `tag_map` (
  `book_id`    INT UNSIGNED NOT NULL,
  `tag_id`     INT UNSIGNED NOT NULL,
  `mtime`      DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime`      DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_id`,`tag_id`),
  KEY (`tag_id`),
  CONSTRAINT `fk_tag_map_books_book_id` FOREIGN KEY (`book_id`) REFERENCES books (`book_id`),
  CONSTRAINT `fk_tag_map_tags_tag_id`   FOREIGN KEY  (`tag_id`) REFERENCES tags (`tag_id`)
) ENGINE=INNODB;
