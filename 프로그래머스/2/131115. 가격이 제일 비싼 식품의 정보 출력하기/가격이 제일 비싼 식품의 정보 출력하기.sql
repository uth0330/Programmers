-- 코드를 입력하세요
SELECT  PRODUCT_ID
        , PRODUCT_NAME
        , PRODUCT_CD
        , CATEGORY
        , PRICE
FROM    FOOD_PRODUCT
WHERE   1 = 1
    AND PRICE = (SELECT MAX(PRICE)
                 FROM   FOOD_PRODUCT)