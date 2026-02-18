-- 문제 : 고양이와 개가 각각 몇 마리인지 조회
-- 컬럼 : ANIMAL_TYPE, count
-- 테이블 : ANIMAL_INS
-- 정렬 : Cat, Dog
SELECT
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE