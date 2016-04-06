// Query to create a relationship between a candidate and their constituency

MATCH(a:Candidate), (b:Constituency)
WHERE a.con = b.name
CREATE (a)-[r:LIVES_IN]->(b)
RETURN a, r, b

// Query to create a relationship between a candidate and their party

MATCH (a:Candidate), (b:Party)
WHERE a.party = b.shortName
CREATE (a)-[r:WORKS_IN]->(b)
RETURN a, r, b