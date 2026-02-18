-- 컬럼 : ID, LENGTH
-- 테이블 : FISH_INFO
-- 조건 : 길이가 10cm가 아닌
-- 정렬 : 길이 기준 내림차순, ID기준 오름차순, 상위 10마리
SELECT
    ID,
    LENGTH
FROM FISH_INFO
WHERE LENGTH IS NOT NULL
ORDER BY LENGTH DESC, ID ASC
LIMIT 10
