// cypher query to create nodes for each candidate

MATCH(p:Party {shortName: "FF"})
CREATE(c:Candidate { name: "Thomas Byrne" ,
Status: "elected"})-[:WORKS_IN]->(p);
