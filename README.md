# Irish Constituencies Neo4j Database
###### Ross Byrne, G00310619

## Introduction
Give a summary here of what your project is about.

## Database
Explain how you created your database, and how information is represented in it.

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query One
#####Finding the Party with the most elected female TDs.
This query returns the name of the party with the most elected female TDs and the number of females in the party.
I found this query interesting because I noticed it is quite obvious that there is a majority of Male TDs in each party.
```cypher
MATCH // find the elected female candidates that have a relationship with a party
	(electedFemale:Candidate {gender: "Female", status: "elected"})-->(party:Party) 
	
RETURN  // return the number of females in each party & party name
	COUNT(electedFemale) AS Females_In_Party, 
	party.name AS Party 
	
// order by the number of females in descending order 
// and limit the results to 1, so you get the party name and female count
// of party with the most elected female TDs.
ORDER BY	
	COUNT(electedFemale) DESC LIMIT 1;
```

#### Query Two
#####Getting the Average number of spoiled votes and the average turnout Percentage for the constituencies in Ireland.
This query gets the average number of spoiled votes and the average turnout percentage for each constituency in the country.
```cypher
MATCH // find the cunstituencies
	(c:Constituency)
	
RETURN // return the calculated average of spoiled votes and turnoutPercentage
	AVG(toFloat(c.spoiledVotes)) AS Average_SpoiledVotes, 
	AVG(toFloat(c.turnoutPercent)) AS Average_TurnoutPercent
	
ORDER BY // order the results in descending order
	Average_SpoiledVotes DESC;
```

#### Query Three
#####Getting the number of elected Males, Females & Percentage of elected Female TDs in the country.
This query gets the number of elected males, elected females and calculates the percentage of female candidates that are elected
in the entire country.

```cypher
MATCH // find the nodes
	(females:Candidate { gender: "Female", status: "elected"}), 
	(males:Candidate {gender: "Male", status: "elected"})
	
WITH // set alias
	toFloat(COUNT(DISTINCT females)) AS Females,
	toFloat(COUNT(DISTINCT males)) AS Males
	
RETURN // return the information and calulate percentage
	Females AS ElectedFemales,
	Males AS ElectedMales,
	(Females / (Females + Males) * 100) AS PercentOfElectedAreFemales; 
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Wikipedia](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Saved Constituency information to "Constituency_Pop_Seats_Description" spreadsheet.
3. [RTE.ie](http://www.rte.ie/news/election-2016/candidates/), Got the names of all candidates and their parties.
