-- 문제 : '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력
-- 컬럼 : CAR_TYPE, CARS
-- 테이블 : CAR_RENTAL_COMPANY_CAR
-- 조건 : OPTIONS LIKE ('통풍시트', '열선시트', '가죽시트')
-- 정렬 : 자동차 종류 기준 오름차순
SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE 
    OPTIONS LIKE ('%통풍시트%')
    OR OPTIONS LIKE ('%열선시트%')
    OR OPTIONS LIKE ('%가죽시트%')
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
