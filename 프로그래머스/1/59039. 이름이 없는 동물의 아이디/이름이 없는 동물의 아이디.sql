-- 문제 : 동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회
-- 컬럼 : ANIMAL_ID
-- 테이블 : ANIMAL_INS 
-- 조건 : 이름이 없는
-- 정렬 : ID 오름차순
SELECT
    ANIMAL_ID
FROM ANIMAL_INS 
WHERE NAME IS NULL
ORDER BY ANIMAL_ID