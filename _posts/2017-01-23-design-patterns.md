---
layout: post
title:  "Understanding SOLID"
---


## What is ORM ? 

ORM is acronym to object relation mapping, and it's define as a layer between the application and database.

ORM let you manage your database with an object oriented way instead of writing sql statment in some cases. 

## What is the most important ORMs right now ? 

- Active records ( Like Eloquent in Laravel )
- Data Mapper ( Like Doctrine )

## What is the difference between Active Records and Data mapper ? 

Data mapper is map every field in the table to specific attribute in the entity, usually a private entity and this class doesn't directly access the the database but there is a layer before that to get specific data, Data mapper seperate the model itself from the persistance layer so that the model itself not knowing anything about the domain. 

Active record is taking different approach to access the database directory from the class itself, without any layer in between and that would be easier than Data Mapper. 