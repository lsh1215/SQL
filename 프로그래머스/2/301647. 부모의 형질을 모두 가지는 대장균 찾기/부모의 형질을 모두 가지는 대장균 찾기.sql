-- 코드를 작성해주세요
# 부모의 형질을 모두 보유한 
# 대장균의 ID(ID), 대장균의 형질(GENOTYPE), 부모 대장균의 형질(PARENT_GENOTYPE) 
# 결과는 ID에 대해 오름차순 정렬해주세요.

SELECT 
    a.id,
    a.genotype,
    b.genotype AS parent_genotype
FROM 
    ECOLI_DATA a
LEFT JOIN 
    ECOLI_DATA b ON a.parent_id = b.id
WHERE 
    (a.genotype & b.genotype) = b.genotype 
ORDER BY 
    a.id