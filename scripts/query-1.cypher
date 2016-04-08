// To get the politial party with the highest number of Women
// This is because I noticed there is a Men in each Party

MATCH(a:Candidate {gender: "Female", status: "elected"})-[r:WORKS_IN]->(b:Party) 
RETURN COUNT(a) AS Females_In_Party, b.name AS Party 
ORDER BY COUNT(a) DESC LIMIT 1;
