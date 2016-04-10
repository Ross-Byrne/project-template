// getting the average number of spoiled votes and turnoutPercent

MATCH(c:Constituency)
RETURN AVG(toFloat(c.spoiledVotes)) AS Average_SpoiledVotes, AVG(toFloat(c.turnoutPercent)) AS Average_TurnoutPercent
ORDER BY Average_SpoiledVotes DESC