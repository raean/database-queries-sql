SELECT B.title, min(B.year) AS year, B.cat FROM yrb_book B WHERE B.year <= (SELECT min(B2.year) FROM yrb_book B2 WHERE B.cat = B2.cat) GROUP BY B.cat, B.title

