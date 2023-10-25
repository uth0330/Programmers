SELECT  YEAR(s.sales_date) AS year
        , month(s.sales_date) AS month
        , u.gender
        , COUNT(DISTINCT s.user_id) AS users
FROM    online_sale s
JOIN    user_info u
ON      u.user_id = s.user_id
WHERE   1 = 1
AND     u.gender IS NOT NULL
GROUP BY    year
            , month
            , u.gender
ORDER BY    year, month, u.gender