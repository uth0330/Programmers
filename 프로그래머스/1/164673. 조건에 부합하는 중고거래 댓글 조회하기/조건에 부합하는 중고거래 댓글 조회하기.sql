-- 코드를 입력하세요
SELECT  B.TITLE,
        B.BOARD_ID,
        R.REPLY_ID,
        R.WRITER_ID,
        R.CONTENTS,
        DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS created_date
FROM    used_goods_board B, used_goods_reply R
WHERE   B.board_id = R.board_id
    AND YEAR(B.created_date) = 2022
    AND MONTH(B.created_date) = 10
ORDER BY    R.created_date, B.title