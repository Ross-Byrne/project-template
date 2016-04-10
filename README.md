# Irish Constituencies Neo4j Database
###### Ross Byrne, G00310619

## Introduction
This project is about representing data about the Irish General Election 2016, in a graph database using Neo4J.
The database stores information on the constituencies in Ireland, as well as all of the Candidates that ran
this year and their Parties.

The aim of this project, aside from storing the information about the General Election, is also to explore
some interesting queries that can be created using the data in the database.

## Database
Explaining how I created the database, and how information is represented in it.

At first, I searched the internet and started collecting data in spreadsheets. I used websites such as Wikipedia and RTE.ie (See References).
Admittedly yes, this was a very slow approach. Once I had collected enough data on the General Election, I started editing the spreadsheets
to format the data into Cypher queries so I could add the data into the Neo4j Database.

If recreating the database: 
	- Add the Parties and Constituencies First.
	- Then add the massive Constituencies and Candidates script.
	- Lastly, run the Relationships cypher script to set up the relationships.

###Information Layout
The graph database is layed out as follows:

There are 3 Nodes and 2 Relationships.

**Candidate** is the first Node, which has the Label Candidate and the Properties:
	- name: the name of the candidate.
	- gender: the candidate's gender.
	- party: the short hand abbreviation for the party they are in.
	- status: their status in the General Election, either 'elected' or 'excluded'.
	- con: the candidate's constituency.

**Constituency** is the second Node, which the Label Constituency and the Properties:
	- name: the constituency's name.
	- population: the population of the constituency.
	- seats: the number of seats available for TDs from that constituency.
	- areaDescription: a description of the constituency. Incudes details about the area the constituency covers.
	- electorate: the number of people legally allowed to vote in the constituency.
	- seatsFilled: the number of seats filled in the General Election.
	- turnoutPercent: the percentage of eligible votes that voted in the election.
	- spoiledVotes: the number of votes spoiled.
	- validVotes: the number of valid votes cast.
	- quota: the number of votes a TD needs to get a seat in government.
	
**Party** is the third Node, which has the Label Party and the Properties:
	- name: the full name of the party.
	- shortName: the abbreviation of the party's name.


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
