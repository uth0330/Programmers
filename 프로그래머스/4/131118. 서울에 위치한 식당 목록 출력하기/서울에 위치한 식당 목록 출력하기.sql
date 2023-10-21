# -- 코드를 입력하세요
SELECT  I.rest_id,
        I.rest_name,
        I.food_type,
        I.favorites,
        I.address,
        avg_score AS score
FROM    rest_info I, (SELECT    rest_id,
                                ROUND(AVG(review_score), 2) AS avg_score
                     FROM       rest_review
                     GROUP BY   rest_id) R
WHERE   I.rest_id = R.rest_id
    AND I.address LIKE '서울%'
ORDER BY    score desc, I.favorites desc

# SELECT    rest_id,
#                                 ROUND(AVG(review_score), 2) AS avg_score
#                      FROM       rest_review
#                      GROUP BY   rest_id