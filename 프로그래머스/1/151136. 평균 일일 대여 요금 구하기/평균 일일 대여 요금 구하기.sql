-- 코드를 입력하세요
SELECT  ROUND(SUM(daily_fee) / COUNT(car_id)) AS average_fee
FROM    car_rental_company_car
WHERE   car_type = 'SUV'