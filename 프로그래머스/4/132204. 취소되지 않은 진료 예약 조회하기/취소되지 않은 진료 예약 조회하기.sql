-- 코드를 입력하세요
SELECT  A.APNT_NO
        , P.PT_NAME
        , P.PT_NO
        , A.MCDP_CD
        , D.DR_NAME
        , A.APNT_YMD
FROM    APPOINTMENT A
JOIN    DOCTOR D
    ON  D.DR_ID = A.MDDR_ID
JOIN    PATIENT P
    ON  P.PT_NO = A.PT_NO
WHERE   1 = 1
    AND DATE_FORMAT(APNT_YMD, "%Y-%m-%d") = "2022-04-13"
    AND APNT_CNCL_YN = "N"
    AND A.MCDP_CD = "CS"
ORDER BY    A.APNT_YMD