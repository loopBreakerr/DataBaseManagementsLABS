USE LAB5COMBLM258;


SELECT DISTINCT S.sname, S.snum FROM Student AS S
WHERE S.level='Junior' AND S.snum IN
(SELECT DISTINCT E.snum FROM Enrolled AS E WHERE E.cname IN (SELECT C.name FROM Class AS C WHERE C.fid=45));


SELECT S.snum,S.sname,MAX(age)
FROM Student S
JOIN Enrolled E ON S.snum = E.snum
JOIN Class C ON C.name = E.cname
WHERE S.major='History' OR C.fid=45 GROUP BY S.snum;


SELECT C.name,COUNT(E.cname) AS SAYI FROM Class C JOIN Enrolled E ON C.name=E.cname GROUP BY C.name,C.room HAVING C.room='R128' OR (COUNT(E.cname)>=3);


SELECT DISTINCT S.sname
FROM Student S JOIN Enrolled E ON S.snum=E.snum
WHERE S.snum IN
	(SELECT DISTINCT E.snum
	FROM Enrolled E JOIN Class C ON E.cname=C.name
	WHERE C.name IN
		(SELECT C.name
		FROM Class AS C
		WHERE C.meetsat = (SELECT C.meetsat
		FROM Class AS C GROUP BY C.meetsat HAVING COUNT(*)>1))
	GROUP BY E.snum HAVING COUNT(DISTINCT C.name) = 2);
    

SELECT F.fname
FROM Faculty F
WHERE F.fid IN (SELECT DISTINCT C.fid FROM Class C);


SELECT F.fname
FROM Faculty F
JOIN Class C ON F.fid = C.fid
LEFT JOIN Enrolled E ON C.name = E.cname
GROUP BY F.fid, F.fname
HAVING COUNT(E.snum) < 5;


SELECT S.level, ROUND(AVG(S.age),2) AS Avg_Age FROM Student AS S GROUP BY S.level;


SELECT S.level, ROUND(AVG(S.age),2) AS Avg_Age
FROM Student AS S WHERE S.level <> 'Junior' GROUP BY S.level






    
    





