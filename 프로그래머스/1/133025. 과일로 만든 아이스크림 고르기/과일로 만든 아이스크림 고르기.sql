-- 코드를 입력하세요
SELECT 
    i.FLAVOR
FROM
    FIRST_HALF f
INNER JOIN 
    ICECREAM_INFO i ON i.flavor = f.flavor
WHERE f.total_order > 3000
    AND i.INGREDIENT_TYPE = "fruit_based"
ORDER BY f.total_order DESC;
