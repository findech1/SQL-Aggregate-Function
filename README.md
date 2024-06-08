# SQL-Aggregate-Function
![alt text](image-6.png)

It is time to transform a dataset into insights using SQL and visualize your findings using charts like a data analyst pro

My main challenge was importing the raw csv dataset into mysql workbench 
The was encoding error due to the cvs file 
I resolved it by doing data clleaning using https://app.datablist.com/d/anonymous/fcdb35bbc93846018a63
I was able to import the dataset into the schema succesflly

DATA FUN

``count number of users``
`SELECT COUNT(UserID) AS TotalUsers`
`FROM socialmedia.socialmediausers; `
`![alt text](image.png)`

`Avarage age if Users`
SELECT AVG(YEAR(CURDATE()) - YEAR(DOB)) AS AverageAge
FROM socialmedia.socialmediausers;

![alt text](image-1.png)

`Most Popular Interest`
SELECT Interests, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Interests
ORDER BY TotalUsers DESC
LIMIT 1;
![alt text](image-2.png)

`Sum of users by gender`
SELECT Gender, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Gender;
![alt text](image-3.png)

`What are the most popular interests in each country?`
SELECT Country, Interests, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
GROUP BY Country, Interests
ORDER BY Country, TotalUsers DESC;
![alt text](image-5.png)

`Which cities have the highest concentration of users with a specific interest, such as "Photography"?`
SELECT City, COUNT(UserID) AS TotalUsers
FROM socialmedia.socialmediausers
WHERE Interests = 'Photography'
GROUP BY City
ORDER BY TotalUsers DESC;
![alt text](image-4.png)