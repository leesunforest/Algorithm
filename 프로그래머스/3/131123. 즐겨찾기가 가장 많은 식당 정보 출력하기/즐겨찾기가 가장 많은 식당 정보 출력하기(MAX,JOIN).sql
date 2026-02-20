-- 문제 : 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회
-- 컬럼 : 음식 종류, ID, 식당 이름, 즐겨찾기 수
-- 테이블 : REST_INFO
-- 정렬 : 음식 종류 기준 내림차순

SELECT
    r.FOOD_TYPE,
    r.REST_ID,
    r.REST_NAME,
    r.FAVORITES
FROM REST_INFO r
JOIN (
    SELECT
        FOOD_TYPE,
        MAX(FAVORITES) AS MAX_FAV
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) m
ON r.FOOD_TYPE = m.FOOD_TYPE
AND r.FAVORITES = m.MAX_FAV
ORDER BY r.FOOD_TYPE DESC
