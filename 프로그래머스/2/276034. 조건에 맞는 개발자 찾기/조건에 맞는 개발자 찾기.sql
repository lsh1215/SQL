-- 코드를 작성해주세요
WITH CombinedSkillCode AS (
    SELECT 
        SUM(CODE) AS total_mask 
    FROM 
        SKILLCODES
    WHERE 
        NAME IN ('C#', 'Python')
)
SELECT 
    d.ID,
    d.EMAIL,
    d.FIRST_NAME,    
    d.LAST_NAME
FROM 
    DEVELOPERS d,
    CombinedSkillCode csc 
WHERE 
    (d.SKILL_CODE & csc.total_mask) != 0
ORDER BY
    d.ID;