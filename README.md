# Irish Constituencies Neo4j Database
###### Ross Byrne, G00310619

## Introduction
Give a summary here of what your project is about.

## Database
Explain how you created your database, and how information is represented in it.

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one, Finding the Party with the most elected female TDs.
This query returns the name of the party with the most elected female TDs and the number of females in the party.
I found this query interesting because I noticed it is quite obvious that there is a majority of Male TDs in each party.
```cypher
MATCH
	(a:Candidate {gender: "Female", status: "elected"})-[r:WORKS_IN]->(b:Party) 
RETURN 
	COUNT(a) AS Females_In_Party, b.name AS Party 
ORDER BY 
	COUNT(a) DESC LIMIT 1;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Wikipedia](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Saved Constituency information to "Constituency_Pop_Seats_Description" spreadsheet.
3. [RTE.ie](http://www.rte.ie/news/election-2016/candidates/), Got the names of all candidates and their parties.
