-- 코드를 입력하세요

SELECT  category
        , price AS 'max_price'
        , product_name
FROM    food_product
WHERE   1 = 1
AND     (category, price) in (
                SELECT  category
                        , MAX(price) AS price
                        # , product_name
                FROM    food_product
                WHERE   1 = 1
                AND     category IN ('과자', '국', '김치', '식용유')
                GROUP BY    category
                            )
ORDER BY    max_price DESC