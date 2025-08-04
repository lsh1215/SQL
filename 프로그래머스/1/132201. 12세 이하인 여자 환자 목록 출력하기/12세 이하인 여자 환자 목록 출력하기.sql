-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE, 
    CASE 
        WHEN TLNO is Null then "NONE"
        ELSE TLNO
    END AS TLNO
FROM patient
WHERE age <= 12
    AND gend_cd = "W"
ORDER BY AGE DESC, pt_name ASC;