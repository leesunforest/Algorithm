-- 문제 : 잡은 물고기의 평균 길이를 출력
-- 컬럼 : AVERAGE_LENGTH
-- 테이블 : FISH_INFO 
-- 조건 : 10cm 이하의 물고기들은 10cm 로 취급

SELECT
    ROUND(AVG(LENGTH),2) AS AVERAGE_LENGTH
FROM(
    SELECT
        CASE
            WHEN LENGTH IS NULL THEN 10
            ELSE LENGTH
        END AS LENGTH
    FROM FISH_INFO
) b