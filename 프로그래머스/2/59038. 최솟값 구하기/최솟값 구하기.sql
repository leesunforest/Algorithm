-- 문제 : 동물 보호소에 가장 먼저 들어온 동물의 보호시작일
-- 컬럼 : 시간
-- 테이블 : ANIMAL_INS
SELECT
    MIN(DATETIME) AS 시간
FROM ANIMAL_INS