SELECT title, year FROM (SELECT ROW_NUMBER() OVER(ORDER BY B.weight DESC) AS NUM, B.title, B.weight, B.year FROM yrb_book B ORDER BY B.weight DESC) WHERE NUM = 22

