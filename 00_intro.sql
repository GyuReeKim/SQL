-- 데이터베이스 생성
.database

-- csv파일을 읽어오기
.mode csv
.import hellodb.csv examples

-- 예쁘게 보기
.headers on
.mode column

-- 테이블 조회
SELECT * FROM examples; -- SQL문법이기 때문에 ';'을 붙여야 한다.