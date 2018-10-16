SELECT DISTINCT CHOSEN.club, C.desc FROM (SELECT O.title, O.price, O.club FROM yrb_offer O WHERE O.price >= (SELECT max(O1.price) FROM yrb_offer O1 WHERE O1.title = O.title) GROUP BY O.title, O.price, O.club) AS CHOSEN, yrb_club C WHERE CHOSEN.club = C.club

