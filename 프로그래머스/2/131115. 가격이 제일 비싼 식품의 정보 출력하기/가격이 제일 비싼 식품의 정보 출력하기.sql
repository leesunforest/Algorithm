-- 문제 : 가격이 제일 비싼 식품
-- 컬럼 : 전체
-- 테이블 : FOOD_PRODUCT
-- 정렬 : 가격 내림차순, 상위1개
SELECT
    *
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1