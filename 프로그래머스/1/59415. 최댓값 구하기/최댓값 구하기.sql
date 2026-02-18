-- 문제 : 가장 최근에 들어온 동물의 보호 시작일
-- 컬럼 : 시간
-- 테이블 : ANIMAL_INS
SELECT
    MAX(DATETIME) AS 시간
FROM ANIMAL_INS