-- 코드를 입력하세요
SELECT BOOK_ID, 
    Date_format(published_date,"%Y-%m-%d") as PUBLISHED_DATE
FROM BOOK

WHERE Year(published_date) = 2021
    and category = '인문'
    
Order by published_date