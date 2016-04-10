// getting the average number of spoiled votes and turnoutPercent for the constituencies in Ireland.

MATCH // find the cunstituencies
	(c:Constituency)
	
RETURN // return the calculated average of spoiled votes and turnoutPercentage
	AVG(toFloat(c.spoiledVotes)) AS Average_SpoiledVotes, 
	AVG(toFloat(c.turnoutPercent)) AS Average_TurnoutPercent
	
ORDER BY // order the results in descending order
	Average_SpoiledVotes DESC;
	
	