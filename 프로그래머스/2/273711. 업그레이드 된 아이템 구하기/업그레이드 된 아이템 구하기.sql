-- 코드를 작성해주세요
# 아이템의 희귀도가 'RARE'인 아이템들의 
# 모든 다음 업그레이드 아이템의 
# 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 
# 출력하는 SQL 문을 작성해 주세요.
# 결과는 아이템 ID를 기준으로 내림차순 정렬주세요.
WITH main_table AS (
    SELECT 
        i.RARITY,
        i.PRICE,
        t.ITEM_ID
    FROM
        item_info i
    LEFT JOIN item_tree t
        ON i.item_id = t.parent_item_id
    WHERE 
        RARITY = 'RARE'
)

SELECT 
    i.ITEM_ID,	
    i.ITEM_NAME,
    i.RARITY
FROM ITEM_INFO i
INNER JOIN main_table m
    ON i.item_id = m.item_id
ORDER BY 
    item_id DESC;
    