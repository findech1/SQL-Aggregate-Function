--1.DATA FUN
-- Count the Number of Users

SELECT COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers;

-- Avarage age of Users
SELECT AVG(YEAR(CURDATE()) - YEAR(DOB)) AS AverageAge
FROM socialmedia.socialmediausers;

-- Most Popular interest
SELECT Interests, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Interests
ORDER BY TotalUsers DESC
LIMIT 1;

--Sum of users by gender
SELECT Gender, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Gender;

--2.ASK WHY
Question 1: What are the most popular interests in each country?
SELECT Country, Interests, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Country, Interests
ORDER BY Country, TotalUsers DESC;


Question 2: Which cities have the highest concentration of users with a specific interest, such as "Photography"?
SELECT City, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
WHERE Interests = 'Photography'
GROUP BY City
ORDER BY TotalUsers DESC;
