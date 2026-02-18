-- 컬럼 : ID, COLONY_NAME
-- 테이블 : ECOLI_DATA
-- 정렬 : ID

SELECT
    ID,
    CASE
        WHEN num = 1 THEN 'CRITICAL'
        WHEN num = 2 THEN 'HIGH'
        WHEN num = 3 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM (
   SELECT ID,
          SIZE_OF_COLONY,
          NTILE(4) OVER (ORDER BY SIZE_OF_COLONY DESC) AS num
   FROM ECOLI_DATA
) rk
ORDER BY ID