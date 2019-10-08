.mode csv
-- users: table명
.import users.csv users

.headers on
-- .tables

-- -- 전체 출력
-- SELECT * FROM users;

-- -- 나이가 30 이상인 사람
-- SELECT * FROM users WHERE age >= 30;

-- -- 나이가 30 이상인 사람의 이름
-- SELECT first_name FROM users WHERE age >= 30;

-- -- '나이 >= 30, 성 == 김'인 사람의 성과 나이
-- SELECT last_name, age FROM users
-- WHERE age >= 30 AND last_name="김";

-- -- 전체 카운트
-- SELECT COUNT(*) FROM users;

-- -- '나이 >= 30, 성 == 김'인 사람 카운트
-- SELECT COUNT(*) FROM users
-- WHERE age >= 30 AND last_name="김";

-- -- 30살 이상인 사람의 나이 평균
-- SELECT AVG(age) FROM users
-- WHERE age >= 30;

-- -- 잔액이 가장 높은 사람
-- SELECT first_name, MAX(balance) FROM users;

-- -- 30살 이상 평균 잔액
-- SELECT AVG(balance) FROM users
-- WHERE age >= 30;

-- .schema users

-- -- 20대인 사람이 몇명?
-- SELECT COUNT(*) FROM users
-- WHERE age LIKE '2_'; -- '%'는 2로 시작하는 모든 수를 찾는다.

-- -- 지역번호가 02
-- SELECT COUNT(*) FROM users
-- WHERE phone LIKE '02-%';

-- -- 준으로 끝나는 사람
-- SELECT COUNT(*) FROM users
-- WHERE first_name LIKE '%준';

-- -- 중간번호가 5114인 사람
-- SELECT COUNT(*) FROM users
-- WHERE phone LIKE '%-5114-%';

-- -- 나이 오름차순 정렬 후 상위 10개
-- SELECT age FROM users
-- ORDER BY age ASC LIMIT 10; -- 'ASC'는 생략 가능

-- -- 나이 내림차순 정렬 후 상위 10개
-- SELECT age FROM users
-- ORDER BY age DESC LIMIT 10;

-- -- 나이순 성순으로 오름차순 10개
-- SELECT age, last_name FROM users
-- ORDER BY age, last_name LIMIT 10;

-- -- 잔액 내림차순 정렬 후 성 이름 출력 10명
-- SELECT last_name, first_name FROM users
-- ORDER BY balance DESC LIMIT 10;

DROP TABLE users;