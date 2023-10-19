SELECT  PR.MEMBER_NAME
        , RE.REVIEW_TEXT
        , DATE_FORMAT(RE.REVIEW_DATE, "%Y-%m-%d") AS REVIEW_DATE
FROM    MEMBER_PROFILE  PR
JOIN    REST_REVIEW     RE
ON      RE.MEMBER_ID = PR.MEMBER_ID
WHERE   RE.MEMBER_ID IN (SELECT  RE2.MEMBER_ID
                        FROM    (SELECT  RE3.MEMBER_ID
                                        , RANK() OVER (ORDER BY COUNT(RE3.MEMBER_ID) DESC) AS RNK
                                FROM    REST_REVIEW AS RE3
                                GROUP BY    RE3.MEMBER_ID
                                 ) AS RE2
                        WHERE   RE2.RNK = 1)
ORDER BY    REVIEW_DATE, REVIEW_TEXT