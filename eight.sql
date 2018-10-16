SELECT CAST(avg(MINPRICES) AS DECIMAL(5,2)) AS avg_cost FROM (SELECT min(O.price) AS MINPRICES, B.cat FROM yrb_book B, yrb_offer O WHERE O.title = B.title AND O.year = B.year AND O.price <= (SELECT min(O1.price) FROM yrb_offer O1, yrb_book B1 WHERE  O1.title = O.title AND O1.year = O.year) GROUP BY B.cat)

