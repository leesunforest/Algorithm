-- 문제 : 나이 정보가 없는 회원이 몇 명인지 출력
-- 컬럼 : USERS
-- 테이블 : USER_INFO
-- 조건 : 나이 정보없음  
SELECT
    COUNT(*) USERS
FROM USER_INFO 
WHERE AGE IS NULL