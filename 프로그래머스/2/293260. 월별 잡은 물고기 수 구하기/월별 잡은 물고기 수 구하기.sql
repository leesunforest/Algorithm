-- 문제 : 월별 잡은 물고기의 수와 월을 출력
-- 컬럼 : FISH_COUNT, MONTH
-- 테이블 : FISH_INFO 
-- 정렬 : 월을 기준으로 오름차순
SELECT
    COUNT(*) FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH
ORDER BY MONTH