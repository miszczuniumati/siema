1.
SELECT COUNT(rodzaj)
FROM towar;

2.
SELECT MAX(Cena), MIN(Cena), AVG(cena)
FROM Towar;

3.
SELECT SUM(ilosc * cena), AVG(ilosc * cena)
FROM towar;

4.
SELECT AVG(CENA), SUM(CENA) / COUNT(rodzaj)
FROM towar;

5.
SELECT AVG(CENA)
FROM towar
WHERE CENA BETWEEN 10 AND 1000;

6.
SELECT SUM(ilosc*waga)
FROM Towar
WHERE rodzaj IN('GD','TR');

7.
SELECT COUNT(zamow)
FROM towar
WHERE ZAMOW='PRAWDA';

8.
SELECT MAX(ilosc*cena)
FROM towar
WHERE data_prod LIKE '1997-%';

9.
SELECT COUNT(*)
FROM towar
GROUP BY rodzaj;

10. 
SELECT SUM (ilosc*cena), AVG(ilosc*cena), MIN(ilosc*cena), MAX(ilosc*cena)
FROM towar;