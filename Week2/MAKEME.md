# Homework week 2
The homework contains 3 parts

## Part 1 : More SQL queries through JS program
Write a node-JS program to get answers of following queries
on the **new_world** database: Note that you are expected to get the input from user
and use **prepared** statements to write the queries.
(This can also be submitted as text-file, just remember to use **prepared** statements)

Hint: use [this] (https://github.com/sidorares/node-mysql2) link to read more
about prepared statements.  
Question 5 is a bonus question.

1. What is the capital of country X ? (Accept X from user)
2. List all the languages spoken in the region Y (Accept Y from user)
3. Find the number of cities in which language Z is spoken (Accept Z from user)
4. For the country given as input, is there any countries that
    * have the same official language
    * is in the same continent
   
   If yes, display those countries.  
   If no, display FALSE  

## Part 2 : Database design
I want to develop a ToDo app in which a user can create 
- Multiple ToDo lists with different purposes.   
	* Each list has at least one item.  
	* Each item can be tagged.  
	* Each item can be marked completed.  
	* There could be reminders for some items.

- Create the database schema for this application, and draw an Entity Relationship Diagram for the database of the ToDo App.

Read about Entity-relationship diagrams on the Internet
E.g. [here] (https://www.lucidchart.com/pages/er-diagrams)

## Part 3 : SQL research
I want to get alerts when a country has >= 10 languages.
E.g. If a country X has 9 languages in the CountryLanguage table,
and a user INSERTs one more row in the CountryLanguage table, then I should get an alert.  
*How can I achieve this ?*
- Write the necessary SQL statements for this solution and
- Test your solution with example insert statements.  

This is a bonus question, and can be solved in multiple ways.  
