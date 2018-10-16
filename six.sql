(SELECT * FROM yrb_customer C WHERE C.cid IN ((SELECT C1.cid FROM yrb_customer C1) MINUS (SELECT C2.cid FROM yrb_purchase C2)))

