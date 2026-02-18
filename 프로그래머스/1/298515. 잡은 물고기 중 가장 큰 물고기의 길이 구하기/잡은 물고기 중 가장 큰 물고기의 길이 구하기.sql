-- 문제 : 가장 큰 물고기의 길이를 'cm'를 붙여 출력
-- 컬럼 : MAX_LENGTH
-- 테이블 : FISH_INFO
SELECT
    CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
FROM FISH_INFO