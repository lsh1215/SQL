-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME
FROM 
    ANIMAL_INS
WHERE animal_type = "Dog" 
    AND UPPER(NAME) like "%el%"
ORDER BY NAME;