-- 문제 : 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회
-- 컬럼 : 진료과코드(MCDP_CD), 5월예약건수
-- 테이블 : APPOINTMENT
-- 조건 : APNT_YMD이 2022-05
-- 정렬 : 환자수 기준 오름차순, 진료과 코드 기준 오름차순
SELECT
    MCDP_CD AS 진료과코드,
    COUNT(*) AS 5월예약건수
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m')='2022-05'
GROUP BY MCDP_CD
ORDER BY 5월예약건수, 진료과코드