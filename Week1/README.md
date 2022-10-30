# Lesson 1: MySQL and Node setup! Create, Insert and Select !

Objective: This class aims to introduce the students to the MySQL database, and the structure of a relational database. We'll also discuss the object and object classes.
The class will look at some of the things to consider when designing a database. <br>
MySQL client can be used control the database instance and working with data, doing inserts, updates and deletes. <br>
Normalisation and selects using joins will be discussed.
Concepts of database transaction, ACID properties, normal forms should be introduced with
examples / live coding (creating a transaction, committing and rollback-ing).

## Pre-Class Preparation
- Install MySQL using the following [official docs](https://dev.mysql.com/downloads/mysql/)
-- **5.7**, there's currently some issues with 8.0
- Install MySQL Workbench (graphical client, optional) <br>
*Make a note of the root password either given to you or set by you during the installation*

## Setup

### MySQL setup

This setup assumes MySQL version 5.7.
- Windows users should use **Microsoft MySQL Command Line** client.
- Linux and MAC users should use a terminal, i.e. X-Term, Terminal or similar

### Node setup
This setup assumes that you have Node.js 0.6 or higher.
We use **mysqljs** driver which can be installed using <br>
`npm install mysql`

In this class, students will be introduced to

* Basics of relational databases: Concepts of tables, rows, columns, primary key, foreign key.
* Creation of a database table and insertion of values.
* Retrieving data from a MySQL database using SELECT queries.

Objective: Students should be able to create tables,
insert values in tables and
retrieve data from tables using SELECT statements that include FROM, WHERE clauses.

## Topics to be covered

* What is a Database ?
* MySQL components
* MySQL basics
* Working with data in MySQL

Further reading can be found in **week1.md** 

