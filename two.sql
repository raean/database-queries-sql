SELECT DISTINCT c.name AS name, max(result.num) AS number FROM (SELECT DISTINCT P2.club, SUM(P2.qnty) AS num, P2.cid FROM yrb_purchase P2, yrb_customer C WHERE C.cid = P2.cid GROUP BY P2.cid, P2.club) AS result, yrb_customer C WHERE C.cid = result.cid GROUP BY c.name, c.cid ORDER BY number

