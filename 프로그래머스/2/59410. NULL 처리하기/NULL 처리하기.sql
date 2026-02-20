-- 문제 : 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회
-- 컬럼 : ANIMAL_TYPE, NAME, SEX_UPON_INTAKE
-- 테이블 : ANIMAL_INS 
-- 조건 : 이름이 없으면 'No name'
SELECT
    ANIMAL_TYPE,
    CASE
        WHEN NAME IS NULL THEN 'No name'
        ELSE NAME
    END AS NAME, 
    SEX_UPON_INTAKE
FROM ANIMAL_INS 