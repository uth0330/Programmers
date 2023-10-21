-- 코드를 입력하세요
SELECT  I.flavor
FROM    first_half F, icecream_info I
WHERE   F.flavor = I.flavor
    AND F.total_order > 3000
    AND I.ingredient_type = 'fruit_based'
ORDER BY    F.total_order desc