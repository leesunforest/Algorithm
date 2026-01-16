-- 컬럼 : 환자이름, 환자번호, 성별코드, 나이, 전화번호
    -- 조건 : 전화번호가 없는 경우 'NONE'
-- 테이블 : PATIENT
-- 조건 : 나이(12세 이하) 성별(여자) 환자
-- 정렬 : 나이를 기준으로 내림차순, 환자이름을 기준으로 오름차순

SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    CASE WHEN TLNO IS NULL THEN 'NONE'
    ELSE TLNO
    END AS TLNO
FROM PATIENT
WHERE AGE <= 12
    AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC