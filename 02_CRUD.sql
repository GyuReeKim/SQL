CREATE TABLE classmates (
    name TEXT,
    age INT,
    address TEXT
);

-- CREATE
INSERT INTO classmates (name, age, address)
VALUES ('오창희', 11, '광주');

-- 확인
SELECT * FROM classmates;

-- CREATE
INSERT INTO classmates (name, address)
VALUES ('오창희', '광주');

-- 확인
SELECT * FROM classmates;

-- CREATE
INSERT INTO classmates
VALUES ('홍길동', 30, '서울');

-- 확인
SELECT rowid, * FROM classmates;

-- 테이블 삭제(초기화)
DROP TABLE classmates;

----------------------

-- Table 다시 만들기
.tables

-- 기본으로 제공하는 rowid를 사용
CREATE TABLE classmates (
    -- id INTEGER PRIMARY KEY, -- PRIMARY KEY는 INTEGER로 써야한다.
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates (name, age, address)
VALUES ('김규리', 24, '광주');

SELECT rowid, * FROM classmates;

DROP TABLE classmates;

--------------------------

-- Table 다시다시 만들기
CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates (name, age, address)
VALUES
('홍길동', 24, '서울'),
('김철수', 25, '대전'),
('박나래', 26, '광주'),
('이요셉', 27, '구미');

-- 특정 column 가져오기
SELECT rowid, name FROM classmates;
-- LIMIT
SELECT rowid, name FROM classmates LIMIT 1; -- LIMIT만큼 출력
-- OFFSET (앞의 몇개를 skip)
SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2; -- OFFSET만큼 건너뛰고 LIMIT만큼 출력
-- SELECT rowid, name FROM classmates 2, 1; -- OFFSET: 2, Limit: 1
-- WHERE
SELECT rowid, name FROM classmates WHERE address="서울";
-- 중복제거
SELECT DISTINCT age FROM classmates;

-- DELETE
DELETE FROM classmates WHERE rowid=4;
INSERT INTO classmates VALUES ('김이박', 30, '광주');
SELECT rowid, * FROM classmates;

-- UPDATE
UPDATE classmates
SET name="홍길동", address="제주도"
WHERE rowid=4;
SELECT * FROM classmates;

DROP TABLE classmates;