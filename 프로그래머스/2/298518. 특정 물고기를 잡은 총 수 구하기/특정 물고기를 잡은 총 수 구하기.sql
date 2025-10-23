-- 코드를 작성해주세요
SELECT
    COUNT(i.ID) AS FISH_COUNT 
FROM
    FISH_INFO AS i
JOIN
    FISH_NAME_INFO AS n ON i.fish_type = n.fish_type
WHERE
    n.fish_name IN ('BASS', 'SNAPPER');