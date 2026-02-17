-- 컬럼 : USERS
-- 테이블 : USER_INFO
-- 조건 : 2021년에 가입한 회원 AND 나이가 20세 이상 29세 이하
SELECT
    COUNT(*) AS USERS
FROM USER_INFO
WHERE DATE_FORMAT(JOINED, '%Y') = '2021'
    AND AGE >= 20
    AND AGE <= 29