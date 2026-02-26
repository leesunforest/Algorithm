-- 문제 : 자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차에 대해서 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력
-- 조건
-- 1.자동차 종류가 '세단' 또는 'SUV'
-- 2.2022년 11월 1일부터 2022년 11월 30일까지 대여 가능
-- 3.대여 금액이 50만원 이상 200만원 미만
-- 정렬 : 대여금액 기준 내림차순, 자동차 종류 기준 오름차순, 자동차 ID 기준 내림차순

SELECT
    c.CAR_ID,
    c.CAR_TYPE,
    FLOOR(c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100) AS FEE
FROM CAR_RENTAL_COMPANY_CAR c
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
  ON c.CAR_TYPE = p.CAR_TYPE
 AND p.DURATION_TYPE = '30일 이상'
WHERE c.CAR_TYPE IN ('세단', 'SUV')

-- 🔴 11월에 이미 빌려진 차 제외
AND NOT EXISTS (
    SELECT 1
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    WHERE h.CAR_ID = c.CAR_ID
      AND h.START_DATE <= '2022-11-30'
      AND h.END_DATE   >= '2022-11-01'
)

-- 🔴 금액 조건
AND c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100
    BETWEEN 500000 AND 1999999

ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC;