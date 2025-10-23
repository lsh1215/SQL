-- 코드를 작성해주세요
WITH GROUP_HR_GRADE AS(
    SELECT
        EMP_NO,
        SUM(score) AS Score,
        year
    FROM
        HR_GRADE
    GROUP BY 
        emp_no, year
) 
SELECT 
    g.SCORE,	
    e.EMP_NO,
    e.EMP_NAME,
    e.POSITION,
    e.EMAIL
FROM 
    HR_EMPLOYEES e
INNER JOIN GROUP_HR_GRADE g
    ON e.emp_no = g.emp_no
ORDER BY
    score DESC
LIMIT 1;
