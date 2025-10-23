-- 코드를 작성해주세요
SELECT
    i.ITEM_ID,
    i.ITEM_NAME
FROM 
    ITEM_INFO i
INNER JOIN item_tree t
    ON i.item_id = t.item_id
WHERE 
    t.parent_item_id is null
ORDER BY
    i.item_id
