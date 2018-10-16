SELECT title FROM (SELECT COUNT(O1.title) as num, O1.title FROM (SELECT O2.club, O2.title FROM yrb_offer O2 GROUP BY O2.club, O2.title) AS O1 GROUP BY O1.title) A2, (SELECT COUNT(club) AS NUM FROM yrb_club) A1 WHERE A1.num = A2.num

