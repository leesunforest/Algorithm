-- 문제 : 동물의 이름은 몇 개 인지 (중복제거 후 집계, NULL 제외)
-- 컬럼 : count
-- 테이블 : ANIMAL_INS
SELECT
    COUNT(DISTINCT name) AS count
FROM ANIMAL_INS
WHERE NAME IS NOT NULL