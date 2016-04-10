// To get the politial party with the highest number of Women
// This is because I noticed there is a majority of Men in each Party

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
