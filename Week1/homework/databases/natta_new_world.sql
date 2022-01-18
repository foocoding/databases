-- What are the names of countries with population greater than 8 million
 SELECT Name FROM country WHERE population > 8000000;

-- What are the names of countries that have “land” in their names ?
 SELECT Name FROM country WHERE Name Like '%land';

-- What are the names of the cities with population in between 500,000 and 1 million ?
 SELECT Name FROM country WHERE population BETWEEN 500000 AND 1000000;

-- What's the name of all the countries on the continent ‘Europe’ ?
 SELECT Name FROM country WHERE Continent Like '%Europe%';

-- List all the countries in the descending order of their surface areas.
 SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC;

-- What are the names of all the cities in the Netherlands?
 SELECT city.Name, country.Name FROM country INNER JOIN city ON country.Name = "Netherlands";

-- What is the population of Rotterdam ?
 SELECT Population FROM city WHERE Name Like "Rotterdam";

-- What's the top 10 countries by Surface Area ?
 SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 10;

-- What's the top 10 most populated cities?
 SELECT Name,Population FROM city ORDER BY Population DESC LIMIT 10;

-- What is the population of the world ?
 SELECT sum(Population) FROM country;

