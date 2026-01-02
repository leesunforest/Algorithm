-- 컬럼 : 분류, 가격, 이름
-- 테이블 : FOOD_PRODUCT
-- 조건 : 식품분류(CATEGORY) '과자', '국', '김치', '식용유'
-- 그룹 : 식품분류(CATEGORY)
-- 정렬 : 식품 가격 내림차순
WITH base AS (
    SELECT
        CATEGORY,
        PRICE,
        PRODUCT_NAME,
        RANK() OVER (
            PARTITION BY CATEGORY
            ORDER BY PRICE DESC
        ) AS rk
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
)
SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM base
WHERE rk = 1
ORDER BY MAX_PRICE DESC