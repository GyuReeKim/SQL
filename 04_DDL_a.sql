CREATE TABLE articles (
    title TEXT NOT NULL,
    content TEXT NOT NULL
);
.tables

INSERT INTO articles
VALUES ("1번글", "1번내용");

SELECT * FROM articles;

-- DROP TABLE articles;

ALTER TABLE articles RENAME TO news;
.tables

-- 새로운 column 추가 (오류 발생)
ALTER TABLE news
ADD COLUMN created_at DATETIME NOT NULL;

-- 새로운 column 추가
ALTER TABLE news
ADD COLUMN created_at DATETIME NOT NULL DEFAULT 1;

DROP TABLE news;