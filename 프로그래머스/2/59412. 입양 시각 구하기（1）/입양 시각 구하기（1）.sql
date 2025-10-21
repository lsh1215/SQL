-- 코드를 입력하세요
SELECT
    DATE_FORMAT(DATETIME,'%H') as HOUR,
    count(*) as COUNT
FROM
    animal_outs
WHERE
    DATE_FORMAT(DATETIME,'%H') >= 09 
    and DATE_FORMAT(DATETIME,'%H') <= 19
GROUP BY 
    DATE_FORMAT(DATETIME,'%H')
ORDER BY
    HOUR;
