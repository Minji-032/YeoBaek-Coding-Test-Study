-- 부모의 자식 수 계산

SELECT A.ID, COUNT(B.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA AS A
    LEFT JOIN ECOLI_DATA AS B
    ON A.ID = B.PARENT_ID -- 부모를 기준으로 LEFT JOIN
GROUP BY A.ID -- 부모 ID로 그룹화하여 자식 ID를 COUNT
ORDER BY A.ID ASC
