-- 문제 : 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회
-- 컬럼 : 음식 종류, ID, 식당 이름, 즐겨찾기 수
-- 테이블 : REST_INFO
-- 정렬 : 음식 종류 기준 내림차순

SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM(
    SELECT
        *,
        RANK() OVER(PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS rk
    FROM REST_INFO
) a
WHERE rk = 1
ORDER BY FOOD_TYPE DESC