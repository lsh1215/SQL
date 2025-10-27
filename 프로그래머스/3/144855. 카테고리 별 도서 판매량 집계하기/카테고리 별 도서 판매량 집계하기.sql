-- 코드를 입력하세요
SELECT
    b.CATEGORY,
    sum(sales) AS TOTAL_SALES
FROM book b
INNER JOIN     
    book_sales s ON b.book_id = s.book_id
WHERE s.sales_date like "2022-01%"
GROUP BY
    b.category
ORDER BY
    category
    