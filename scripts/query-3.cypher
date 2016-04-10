// gets the number of elected males, elected females and calculates the percentage of female candidates that are elected
// in the entire country.

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
	
	