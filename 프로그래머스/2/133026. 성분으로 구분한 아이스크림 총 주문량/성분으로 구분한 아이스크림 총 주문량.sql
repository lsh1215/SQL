-- 코드를 입력하세요
SELECT
    i.ingredient_type,
    sum(f.total_order) as TOTAL_ORDER
FROM
    icecream_info i
INNER JOIN first_half f
    ON f.flavor = i.flavor
GROUP BY
    i.ingredient_type
ORDER BY
    f.total_order;
