WITH Ranked AS (
    SELECT 
        ID,
        PERCENT_RANK() OVER(ORDER BY SIZE_OF_COLONY DESC) AS PER
    FROM 
        ECOLI_DATA
)

SELECT
    r.ID,
    CASE
        WHEN r.PER <= 0.25 THEN 'CRITICAL'
        WHEN r.PER <= 0.50 THEN 'HIGH'
        WHEN r.PER <= 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM 
    Ranked r
ORDER BY 
    r.ID ASC;