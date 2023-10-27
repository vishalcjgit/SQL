create database db9999;
show databases;
use db9999;
select * from epldata_final;

#1. count of name coulmn
SELECT COUNT(name)
FROM epldata_final;
#2. count of club column
SELECT COUNT(club)
FROM epldata_final;
#3.  display the name, club and age columns
SELECT name,club,age FROM epldata_final;
#4. display the data with club_name=chelsea
SELECT * FROM epldata_final
WHERE club='Chelsea';
#5. display the data with nationality='Brazil' and club='Liverpool'
SELECT *
FROM epldata_final
WHERE nationality = 'Brazil' AND club = 'Liverpool';
#6. display the highest market value
SELECT MAX(market_value)
FROM epldata_final;
#7. display the minimum age
SELECT MIN(age)
FROM epldata_final;
#8. find the total market value of Liverpool
SELECT SUM(market_value)
FROM epldata_final
WHERE club = 'Liverpool';
#9. find the total count of LW(left wing)
SELECT count(position)
FROM epldata_final
WHERE position = 'LW';
#10. find the AVG market value of Germany
SELECT avg(market_value)
FROM epldata_final
WHERE nationality = 'Germany';
#11. Select all CLUBS that starts with the letter "m":
SELECT * FROM epldata_final
WHERE club LIKE 'm%';
#12. display the players from Brazil, Germany or France
SELECT * FROM epldata_final
WHERE nationality IN ('Brazil', 'Germany', 'France');
#13. display the players with age between 22 and 26
SELECT * FROM epldata_final
WHERE age BETWEEN 22 AND 26;
#14. Display all clubs and their total market value 
SELECT sum(market_value), club
FROM epldata_final
GROUP BY club;
#15. to select all the clubs details whose name contains 'ch'
select * from epldata_final where club like '%ch%';
#16. diplay player names and club who play for brazil
SELECT  name, club
FROM epldata_final
WHERE nationality = 'Brazil';
#17. write an sql query to fetch the different countries available in the EPL dataset
SELECT DISTINCT(nationality)
FROM epldata_final;
#18. write an sql query to fetch the count of players in brazil team
SELECT COUNT(*) 
FROM epldata_final 
WHERE nationality = 'Brazil';
#19. write an sql query to find the 'player names' whose market value lies in the range of 50 and 80
SELECT name
FROM epldata_final
WHERE market_value BETWEEN 50 AND 80;
#20. write an sql query to fetch the 'player names' who belongs to brazil football team and playing for Liverpool
SELECT name
FROM epldata_final
WHERE nationality = 'Brazil' AND club = 'Liverpool';
#21. Write an SQL query to display both the name  and age together.
SELECT CONCAT(name, age) as NewId
FROM epldata_final;
#22. Write a query to fetch only the 'first name(string before space)' from the 'name' column of the epldata_final table.
SELECT MID(name, 1, LOCATE(' ',name)) 
FROM epldata_final;
#23. Write an SQL query to find the maximum, minimum, and average 'market value' of the players.
SELECT Max(market_value), 
Min(market_value), 
AVG(market_value) 
FROM epldata_final;
#24. Write an SQL query to fetch all the players who either play for 'Chelsea' or play for brazil team.
SELECT name, club, nationality
FROM epldata_final
WHERE Club='Chelsea' OR nationality='Brazil';
#25.Write an SQL query to create a new table with data and structure copied from another table.
CREATE TABLE NewTable 
SELECT * FROM epldata_final;
select * from NewTable;
SELECT * FROM epldata_final;
#26. Write an SQL query to find the count of the total occurrences of a particular character – ‘n’ in the name field.
SELECT name, 
LENGTH(name) - LENGTH(REPLACE(name, 'n', ''))
FROM epldata_final;

