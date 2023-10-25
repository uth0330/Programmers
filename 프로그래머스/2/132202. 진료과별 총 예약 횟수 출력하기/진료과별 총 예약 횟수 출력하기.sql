-- 코드를 입력하세요
SELECT  mcdp_cd AS '진료과 코드'
        , COUNT(apnt_ymd) AS '5월예약건수'
FROM    appointment
WHERE   1 = 1
AND     YEAR(apnt_ymd) = '2022'
AND     MONTH(apnt_ymd) = '05'
GROUP BY    mcdp_cd
ORDER BY    COUNT(apnt_ymd), mcdp_cd