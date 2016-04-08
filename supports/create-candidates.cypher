// cypher query to create nodes for each candidate


// create candidates for constituency Carlow-Kilkenny (sheet 1)

MATCH(c:Constituency{ name: "Carlow-Kilkenny"})

SET
c.seatsFilled = "5",
c.turnoutPercent = "65.9",
c.electorate = "107023",
c.votesSpoiled = "505",
c.validVotes = "70009",
c.quota = "11669"

CREATE(:Candidate { name: "John Paul Phelan", gender: "Male", party: "FG", status: "elected", con: "Carlow-Kilkenny"}),
(:Candidate { name: "John McGuinness", gender: "Male", party: "FF", status: "elected",con: "Carlow-Kilkenny"}),
(:Candidate { name: "Kathleen Funchion", gender: "Female", party: "SF", status: "elected", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Bobby Aylward", gender: "Male", party: "FF", status: "elected", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Pat Deering", gender: "Male", party: "FG", status: "elected", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Jennifer Murnane O'Connor", gender: "Female", party: "FF", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "David Fitzgerald", gender: "Male", party: "FG", status: "excluded",con: "Carlow-Kilkenny"}),
(:Candidate { name: "Ann Phelan", gender: "Female", party: "LAB", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Malcolm Noonan", gender: "Male", party: "GP", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Patrick McKee", gender: "Male", party: "RN", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Adrienne Wallace", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Conor MacLiam", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Paddy Manning", gender: "Male", party: "IND", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Keith Gilligan", gender: "Male", party: "IND", status: "excluded", con: "Carlow-Kilkenny"}),
(:Candidate { name: "Noel G Walsh", gender: "Male", party: "IND", status: "excluded", con: "Carlow-Kilkenny"})

RETURN c.name

// to link another query
UNION

// create candidates for constituency Cavan-Monaghan (sheet 2)

MATCH(c:Constituency{ name: "Cavan-Monaghan" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "66.5",
c.electorate = "90618",
c.spoiledVotes = "598",
c.validVotes = "59650",
c.quota = "11931"

CREATE(:Candidate { name: "Caoimhghín Ó Caoláin", gender: "Female", party: "SF", status: "elected", con: "Cavan-Monaghan"}),
(:Candidate { name: "Heather Humphreys", gender: "Female", party: "FG", status: "elected", con: "Cavan-Monaghan"}),
(:Candidate { name: "Brendan Smith", gender: "Male", party: "FF", status: "elected", con: "Cavan-Monaghan"}),
(:Candidate { name: "Niamh Smyth", gender: "Female", party: "FF", status: "elected", con: "Cavan-Monaghan"}),
(:Candidate { name: "Joe O'Reilly", gender: "Male", party: "FG", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Kathryn Reilly", gender: "Female", party: "SF", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Mike Durkan", gender: "Male", party: "FF", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Mary Smyth", gender: "Female", party: "IND", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Sean Conlan", gender: "Male", party: "IND", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Micheál Callaghan", gender: "Male", party: "GP", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "John Wilson", gender: "Male", party: "IND", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Michael McDermott", gender: "Male", party: "DDI", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Aoife O'Connell", gender: "Female", party: "DDI", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "Emmett Smith", gender: "Male", party: "IND", status: "excluded", con: "Cavan-Monaghan"}),
(:Candidate { name: "James Mee", gender: "Male", party: "IND", status: "excluded" , con: "Cavan-Monaghan"})

RETURN c.name

// to link another query
UNION

// create candidates for constituency Clare (sheet 3)

MATCH(c:Constituency{ name: "Clare" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "68.6",
c.electorate = "83660",
c.spoiledVotes = "407",
c.validVotes = "57000",
c.quota = "11401"

CREATE(:Candidate { name: "Timmy Dooley", gender: "Male", party: "FF", status: "elected", con: "Clare"}),
(:Candidate { name: "Dr Michael Harty", gender: "Male", party: "IND", status: "elected", con: "Clare"}),
(:Candidate { name: "Pat Breen", gender: "Male", party: "FG", status: "elected", con: "Clare"}),
(:Candidate { name: "Joe Carey", gender: "Male", party: "FG", status: "elected", con: "Clare"}),
(:Candidate { name: "Michael McDonagh", gender: "Male", party: "FF", status: "excluded", con: "Clare"}),
(:Candidate { name: "Michael McNamara", gender: "Male", party: "LAB", status: "excluded", con: "Clare"}),
(:Candidate { name: "Noeleen Moran", gender: "Female", party: "SF", status: "excluded", con: "Clare"}),
(:Candidate { name: "Ann Norton", gender: "Female", party: "IND", status: "excluded", con: "Clare"}),
(:Candidate { name: "Clare Colleran-Molloy", gender: "Female", party: "FF", status: "excluded", con: "Clare"}),
(:Candidate { name: "Fergal Smith", gender: "Male", party: "GP", status: "excluded", con: "Clare"}),
(:Candidate { name: "Mary Howard", gender: "Female", party: "FG", status: "excluded", con: "Clare"}),
(:Candidate { name: "Ian Lynch", gender: "Male", party: "IND", status: "excluded", con: "Clare"}),
(:Candidate { name: "Niamh O'Brien", gender: "Female", party: "FN", status: "excluded", con: "Clare"}),
(:Candidate { name: "Richard Cahill", gender: "Male", party: "IND", status: "excluded", con: "Clare"}),
(:Candidate { name: "André Sibo Hakizimana", gender: "Male", party: "IND", status: "excluded", con: "Clare"}),
(:Candidate { name: "Dermot Mulqueen", gender: "Male", party: "IND", status: "excluded" , con: "Clare"})

RETURN c.name

// to link another query
UNION


// create candidates for constituency Cork East (sheet 4)

MATCH(c:Constituency{ name: "Cork East" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "64",
c.electorate = "83236",
c.spoiledVotes = "445",
c.validVotes = "52806",
c.quota = "10562"

CREATE(:Candidate { name: "Sean Sherlock", gender: "Male", party: "LAB", status: "elected", con: "Cork East"}),
(:Candidate { name: "David Stanton", gender: "Male", party: "FG", status: "elected", con: "Cork East"}),
(:Candidate { name: "Kevin O'Keeffe", gender: "Male", party: "FF", status: "elected", con: "Cork East"}),
(:Candidate { name: "Pat Buckley", gender: "Male", party: "SF", status: "elected", con: "Cork East"}),
(:Candidate { name: "Barbara Ahern", gender: "Female", party: "FF", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Noel McCarthy", gender: "Male", party: "FG", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Paul Bradford", gender: "Male", party: "RN", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Mary Linehan Foley", gender: "Female", party: "IND", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Tom Barry", gender: "Male", party: "FG", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Ciara Leonardi Roche", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Kieran McCarthy", gender: "Male", party: "IND", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Ken Curtin", gender: "Male", party: "SD", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Natasha Harty", gender: "Female", party: "GP", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Paddy Bullman", gender: "Male", party: "IND", status: "excluded", con: "Cork East"}),
(:Candidate { name: "Ross Cannon", gender: "Male", party: "IND", status: "excluded" , con: "Cork East"})

RETURN c.name

// to link another query
UNION


// create candidates for constituency Cork North-Central (sheet 5)

MATCH(c:Constituency{ name: "Cork North-Central" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "63.3",
c.electorate = "81609",
c.spoiledVotes = "516",
c.validVotes = "51174",
c.quota = "10235"

CREATE(:Candidate { name: "Billy Kelleher", gender: "Male", party: "FF", status: "elected", con: "Cork North-Central"}),
(:Candidate { name: "Jonathan O'Brien", gender: "Male", party: "SF", status: "elected", con: "Cork North-Central"}),
(:Candidate { name: "Mick Barry", gender: "Male", party: "AAA-PBP", status: "elected", con: "Cork North-Central"}),
(:Candidate { name: "Dara Murphy", gender: "Male", party: "FG", status: "elected", con: "Cork North-Central"}),
(:Candidate { name: "Kathleen Lynch", gender: "Female", party: "LAB", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Julie O'Leary", gender: "Female", party: "FG", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Thomas Gould", gender: "Male", party: "SF", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Oliver Moran", gender: "Male", party: "GP", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Ted Tynan", gender: "Male", party: "WP", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Paddy O'Leary", gender: "Male", party: "RN", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Ger Keohane", gender: "Male", party: "IND", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Thomas Kiely", gender: "Male", party: "IND", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Mick Murphy", gender: "Male", party: "IND", status: "excluded", con: "Cork North-Central"}),
(:Candidate { name: "Peter O'Loughlin", gender: "Male", party: "IND", status: "excluded", con: "Cork North-Central"})

RETURN c.name

// to link another query
UNION

// create candidates for constituency Cork North-West (sheet 6)

MATCH(c:Constituency{ name: "Cork North-West" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "70.1",
c.electorate = "67589",
c.spoiledVotes = "395",
c.validVotes = "46958",
c.quota = "11740"

CREATE(:Candidate { name: "Michael Creed", gender: "Male", party: "FG", status: "elected", con: "Cork North-West"}),
(:Candidate { name: "Aindrias Moynihan", gender: "Male", party: "FF", status: "elected", con: "Cork North-West"}),
(:Candidate { name: "Michael Moynihan", gender: "Male", party: "FF", status: "elected", con: "Cork North-West"}),
(:Candidate { name: "John Paul O'Shea", gender: "Male", party: "IND", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Áine Collins", gender: "Female", party: "FG", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Nigel Dennehy", gender: "Male", party: "SF", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Diarmuid O'Flynn", gender: "Male", party: "IA", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Jason Fitzgerald", gender: "Male", party: "RN", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Steven O'Riordan", gender: "Male", party: "IND", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Cormac Manning", gender: "Male", party: "GP", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Jerry O'Sullivan", gender: "Male", party: "IND", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Shirley Griffin", gender: "Female", party: "IND", status: "excluded", con: "Cork North-West"}),
(:Candidate { name: "Michael O'Donnell", gender: "Male", party: "CPI", status: "excluded", con: "Cork North-West"})

RETURN c.name

// to link another query
UNION


// create candidates for constituency Cork South-Central (sheet 7)

MATCH(c:Constituency{ name: "Cork South-Central" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "66.4",
c.electorate = "84482",
c.spoiledVotes = "404",
c.validVotes = "55682",
c.quota = "11137"

CREATE(:Candidate { name: "Michael McGrath", gender: "Male", party: "FF", status: "elected", con: "Cork South-Central"}),
(:Candidate { name: "Micheál Martin", gender: "Male", party: "FF", status: "elected", con: "Cork South-Central"}),
(:Candidate { name: "Donnchadh Ó Laoghaire", gender: "Male", party: "SF", status: "elected", con: "Cork South-Central"}),
(:Candidate { name: "Simon Coveney", gender: "Male", party: "FG", status: "elected", con: "Cork South-Central"}),
(:Candidate { name: "Jerry Buttimer", gender: "Male", party: "FG", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Mick Finn", gender: "Male", party: "IA", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Lorna Bogue", gender: "Female", party: "GP", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Ciarán Lynch", gender: "Male", party: "LAB", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Fiona Ryan", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Diarmaid Ó Cadhla", gender: "Male", party: "IND", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Ciaran Kenneally", gender: "Male", party: "RN", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Jim O'Connell", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Joe Harris", gender: "Male", party: "IND", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Elizabeth Hourihane", gender: "Female", party: "IND", status: "excluded", con: "Cork South-Central"}),
(:Candidate { name: "Michael Mohally", gender: "Male", party: "IND", status: "excluded", con: "Cork South-Central" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Cork South-West (sheet 8)

MATCH(c:Constituency{ name: "Cork South-West" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "68.6",
c.electorate = "63583",
c.spoiledVotes = "331",
c.validVotes = "43258",
c.quota = "10815"

CREATE(:Candidate { name: "Margaret Murphy-O'Mahony", gender: "Female", party: "FF", status: "elected", con: "Cork South-West" }),
(:Candidate { name: "Michael Collins", gender: "Male", party: "IND", status: "elected", con: "Cork South-West" }),
(:Candidate { name: "Jim Daly", gender: "Male", party: "FG", status: "elected", con: "Cork South-West" }),
(:Candidate { name: "Noel Harrington", gender: "Male", party: "FG", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Alan Coleman", gender: "Male", party: "IND", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Rachel McCarthy", gender: "Female", party: "SF", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Michael McCarthy", gender: "Male", party: "LAB", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Johnny O'Mahony", gender: "Male", party: "GP", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Gillian Powell", gender: "Female", party: "IND", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Theresa Heaney", gender: "Female", party: "CD", status: "excluded", con: "Cork South-West" }),
(:Candidate { name: "Fiona Pettit O'Leary", gender: "Female", party: "IND", status: "excluded", con: "Cork South-West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Donegal (sheet 9)

MATCH(c:Constituency{ name: "Donegal" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "62.8",
c.electorate = "117675",
c.spoiledVotes = "654",
c.validVotes = "73303",
c.quota = "12218"

CREATE(:Candidate { name: "Pearse Doherty", gender: "Male", party: "SF", status: "elected", con: "Donegal" }),
(:Candidate { name: "Pat the Cope Gallagher", gender: "Male", party: "FF", status: "elected", con: "Donegal" }),
(:Candidate { name: "Charlie McConalogue", gender: "Male", party: "FF", status: "elected", con: "Donegal" }),
(:Candidate { name: "Joe McHugh", gender: "Male", party: "FG", status: "elected", con: "Donegal" }),
(:Candidate { name: "Thomas Pringle", gender: "Male", party: "IND", status: "elected", con: "Donegal" }),
(:Candidate { name: "Pádraig MacLochlainn", gender: "Male", party: "SF", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Tim Jackson", gender: "Male", party: "IND", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Dessie Shiels", gender: "Male", party: "IND", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Gary Doherty", gender: "Male", party: "SF", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Paddy Harte", gender: "Male", party: "FG", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Niamh Kennedy", gender: "Female", party: "IA", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Frank McBrearty Jr", gender: "Male", party: "IND", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Ian McGarvey", gender: "Male", party: "IND", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Paula Flanagan", gender: "Female", party: "GP", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Michael Mooney", gender: "Male", party: "IND", status: "excluded", con: "Donegal" }),
(:Candidate { name: "Cordelia Nic Fhearraigh", gender: "Female", party: "FN", status: "excluded", con: "Donegal" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Bay North (sheet 10)

MATCH(c:Constituency{ name: "Dublin Bay North" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "67.9",
c.electorate = "109516",
c.spoiledVotes = "709",
c.validVotes = "73625",
c.quota = "12271"

CREATE(:Candidate { name: "Richard Bruton", gender: "Male", party: "FG", status: "elected", con: "Dublin Bay North" }),
(:Candidate { name: "Seán Haughey", gender: "Male", party: "FF", status: "elected", con: "Dublin Bay North" }),
(:Candidate { name: "Tommy Broughan", gender: "Male", party: "IND", status: "elected", con: "Dublin Bay North" }),
(:Candidate { name: "Denise Mitchell", gender: "Female", party: "SF", status: "elected", con: "Dublin Bay North" }),
(:Candidate { name: "Finian McGrath", gender: "Male", party: "IA", status: "elected", con: "Dublin Bay North" }),
(:Candidate { name: "Aodhán Ó Ríordáin", gender: "Male", party: "LAB", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "John Lyons", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Averil Power", gender: "Female", party: "IND", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Cian O'Callaghan", gender: "Male", party: "SD", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Deirdre Heney", gender: "Female", party: "FF", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Mícheál MacDonncha", gender: "Male", party: "SF", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Terence Flanagan", gender: "Male", party: "RN", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Naoise Ó Muiri", gender: "Male", party: "FG", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Michael O'Brien", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Stephanie Regan", gender: "Female", party: "FG", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Damien O'Neill", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Donna Cooney", gender: "Female", party: "GP", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Jimmy Guerin", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Paul Clarke", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay North" }),
(:Candidate { name: "Proinsias Ó Conaráin", gender: "Male", party: "IND", status: "excluded" , con: "Dublin Bay North" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Bay South (sheet 11)

MATCH(c:Constituency { name: "Dublin Bay South" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "54.8",
c.electorate = "73066",
c.spoiledVotes = "313",
c.validVotes = "39703",
c.quota = "7941"

CREATE(:Candidate { name: "Eamon Ryan", gender: "Male", party: "GP", status: "elected", con: "Dublin Bay South" }),
(:Candidate { name: "Eoghan Murphy", gender: "Male", party: "FG", status: "elected", con: "Dublin Bay South" }),
(:Candidate { name: "Jim O'Callaghan", gender: "Male", party: "FF", status: "elected", con: "Dublin Bay South" }),
(:Candidate { name: "Kate O'Connell", gender: "Female", party: "FG", status: "elected", con: "Dublin Bay South" }),
(:Candidate { name: "Kevin Humphreys", gender: "Male", party: "LAB", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Chris Andrews", gender: "Male", party: "SF", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Lucinda Creighton", gender: "Female", party: "RN", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Glenna Lynch", gender: "Female", party: "SD", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Annette Mooney", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Mannix Flynn", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Alan MacStiofain", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "Eoin Tierney", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "William DJ Gorman", gender: "IND", status: "excluded", con: "Dublin Bay South" }),
(:Candidate { name: "John Dominic Keigher", gender: "Male", party: "IND", status: "excluded", con: "Dublin Bay South" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Central (sheet 12)

MATCH(c:Constituency { name: "Dublin Central" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "52.4",
c.electorate = "45747",
c.spoiledVotes = "304",
c.validVotes = "23686",
c.quota = "5922"

CREATE(:Candidate { name: "Mary Lou McDonald", gender: "Female", party: "SF", status: "elected", con: "Dublin Central" }),
(:Candidate { name: "Paschal Donohoe", gender: "Male", party: "FG", status: "elected", con: "Dublin Central" }),
(:Candidate { name: "Maureen O'Sullivan", gender: "Female", party: "IND", status: "elected", con: "Dublin Central" }),
(:Candidate { name: "Gary Gannon", gender: "Male", party: "SD", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Christy Burke", gender: "Male", party: "IND", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Mary Fitzpatrick", gender: "Female", party: "FF", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Joe Costello", gender: "Male", party: "LAB", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Cieran Perry", gender: "Male", party: "IND", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Diana O'Dwyer", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Ian Noel Smyth", gender: "Male", party: "GP", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Jacqui Gilbourne", gender: "Female", party: "RN", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Éilis Ryan", gender: "Female", party: "WP", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Cormac McKay", gender: "Male", party: "DDI", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "Kerry Guinan", gender: "Female", party: "IND", status: "excluded", con: "Dublin Central" }),
(:Candidate { name: "William DJ Gorman", gender: "Male", party: "IND", status: "excluded", con: "Dublin Central" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Fingal (sheet 13)

MATCH(c:Constituency { name: "Dublin Fingal" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "65.1",
c.electorate = "93486",
c.spoiledVotes = "462",
c.validVotes = "60388",
c.quota = "10065"

CREATE(:Candidate { name: "Darragh O'Brien", gender: "Male", party: "FF", status: "elected", con: "Dublin Fingal" }),
(:Candidate { name: "Clare Daly", gender: "Female", party: "IND", status: "elected", con: "Dublin Fingal" }),
(:Candidate { name: "Alan Farrell", gender: "Male", party: "FG", status: "elected", con: "Dublin Fingal" }),
(:Candidate { name: "Brendan Ryan", gender: "Male", party: "LAB", status: "elected", con: "Dublin Fingal" }),
(:Candidate { name: "Louise O'Reilly", gender: "Female", party: "SF", status: "elected", con: "Dublin Fingal" }),
(:Candidate { name: "James Reilly", gender: "Male", party: "FG", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Lorraine Clifford-Lee", gender: "Female", party: "FF", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Barry Martin", gender: "Male", party: "IND", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Joe O'Brien", gender: "Male", party: "GP", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Tony Murphy", gender: "Male", party: "IA", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Gerry Molloy", gender: "RN", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Terry Kelleher", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Roslyn Fuller", gender: "Female", party: "IND", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Marcus De Brun", gender: "Male", party: "IND", status: "excluded", con: "Dublin Fingal" }),
(:Candidate { name: "Fergal O'Connell", gender: "Male", party: "IND", status: "excluded", con: "Dublin Fingal" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Mid-West (sheet 14)

MATCH(c:Constituency { name: "Dublin Mid-West" })

SET
c.seatsFIlled = "4",
c.turnoutPercent = "62.8",
c.electorate = "69388",
c.spoiledVotes = "446",
c.validVotes = "43104",
c.quota = "8621"

CREATE(:Candidate { name: "Eoin Ó Broin", gender: "Male", party: "SF", status: "elected", con: "Dublin Mid-West" }),
(:Candidate { name: "John Curran", gender: "Male", party: "FF", status: "elected", con: "Dublin Mid-West" }),
(:Candidate { name: "Frances Fitzgerald", gender: "Male", party: "FG", status: "elected", con: "Dublin Mid-West" }),
(:Candidate { name: "Gino Kenny", gender: "Male", party: "AAA-PBP", status: "elected", con: "Dublin Mid-West" }),
(:Candidate { name: "Anne-Marie McNally", gender: "Female", party: "SD", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Derek Keating", gender: "Male", party: "FG", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Paul Gogarty", gender: "Male", party: "IA", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Joanna Tuffy", gender: "Female", party: "LAB", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Francis Timmons", gender: "Male", party: "IND", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Lorraine Hennessy", gender: "Female", party: "WP", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Tom Kivlehan", gender: "Male", party: "GP", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Clare Leonard", gender: "Female", party: "IND", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Patrick Akpoveta", gender: "Male", party: "IND", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Haroon Khan", gender: "Male", party: "IND", status: "excluded", con: "Dublin Mid-West" }),
(:Candidate { name: "Christopher Healy", gender: "Male", party: "DDI", status: "excluded", con: "Dublin Mid-West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin North-West (sheet 15)

MATCH(c:Constituency { name: "Dublin North-West" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "62",
c.electorate = "60406",
c.spoiledVotes = "463",
c.validVotes = "37009",
c.quota = "9253"

CREATE(:Candidate { name: "Dessie Ellis", gender: "Male", party: "SF", status: "elected", con: "Dublin North-West" }),
(:Candidate { name: "Róisín Shortall", gender: "Female", party: "SD", status: "elected", con: "Dublin North-West" }),
(:Candidate { name: "Noel Rock", gender: "Male", party: "FG", status: "elected", con: "Dublin North-West" }),
(:Candidate { name: "Paul McAuliffe", gender: "Male", party: "FF", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "John Lyons", gender: "Male", party: "LAB", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Cathleen Carney-Boud", gender: "Female", party: "SF", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Andrew Keegan", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Bernie Hughes", gender: "Male", party: "IND", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Caroline Conroy", gender: "Female", party: "GP", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Jimmy Dignam", gender: "Male", party: "WP", status: "excluded", con: "Dublin North-West" }),
(:Candidate { name: "Cormac McKay", gender: "Male", party: "DDI", status: "excluded", con: "Dublin North-West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin Rathdown (sheet 16)

MATCH(c:Constituency { name: "Dublin Rathdown" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "66.3",
c.electorate = "62340",
c.spoiledVotes = "226",
c.validVotes = "41099",
c.quota = "10275"

CREATE(:Candidate { name: "Shane Ross", gender: "Male", party: "IA", status: "elected", con: "Dublin Rathdown" }),
(:Candidate { name: "Josepha Madigan", gender: "Female", party: "FG", status: "elected", con: "Dublin Rathdown" }),
(:Candidate { name: "Catherine Martin", gender: "Female", party: "GP", status: "elected", con: "Dublin Rathdown" }),
(:Candidate { name: "Alan Shatter", gender: "Male", party: "FG", status: "excluded", con: "Dublin Rathdown" }),
(:Candidate { name: "Mary White", gender: "Female", party: "FF", status: "excluded", con: "Dublin Rathdown" }),
(:Candidate { name: "Alex White", gender: "Male", party: "LAB", status: "excluded", con: "Dublin Rathdown" }),
(:Candidate { name: "Sorcha Nic Cormaic", gender: "Female", party: "SF", status: "excluded", con: "Dublin Rathdown" }),
(:Candidate { name: "Peter Mathews", gender: "Male", party: "IND",status: "excluded", con: "Dublin Rathdown" }),
(:Candidate { name: "Alan Daveron", gender: "Male", party: "RN", status: "excluded", con: "Dublin Rathdown" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin South-Central (sheet 17)

MATCH(c:Constituency { name: "Dublin South-Central" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "58.1",
c.electorate = "74942",
c.spoiledVotes = "694",
c.validVotes = "42857",
c.quota = "8572"

CREATE(:Candidate { name: "Catherine Byrne", gender: "Female", party: "FG", status: "elected", con: "Dublin South-Central" }),
(:Candidate { name: "Aengus Ó Snodaigh", gender: "Male", party: "SF", status: "elected", con: "Dublin South-Central" }),
(:Candidate { name: "Joan Collins", gender: "Female", party: "IND", status: "elected", con: "Dublin South-Central" }),
(:Candidate { name: "Bríd Smith", gender: "Female", party: "AAA-PBP", status: "elected", con: "Dublin South-Central" }),
(:Candidate { name: "Catherine Ardagh", gender: "Female", party: "FF", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Eric Byrne", gender: "Male", party: "LAB", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Máire Devine", gender: "Female", party: "SF", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Liam Coyne", gender: "Male", party: "SD", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Paul Hand", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Oisín Ó hAlmhain", gender: "Male", party: "GP", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Michael Gargan", gender: "Male", party: "RN", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Neville Bradley", gender: "Male", party: "DDI", status: "excluded", con: "Dublin South-Central" }),
(:Candidate { name: "Richard Murray", gender: "Male", party: "IND", status: "excluded" , con: "Dublin South-Central" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin South-West (sheet 18)

MATCH(c:Constituency { name: "Dublin South-West" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "64.4",
c.electorate = "105420",
c.spoiledVotes = "647",
c.validVotes = "67271",
c.quota = "11212"

CREATE(:Candidate { name: "Paul Murphy", gender: "Male", party: "AAA-PBP", status: "elected", con: "Dublin South-West" }),
(:Candidate { name: "John Lahart", gender: "Male", party: "FF", status: "elected", con: "Dublin South-West" }),
(:Candidate { name: "Seán Crowe", gender: "Male", party: "SF", status: "elected", con: "Dublin South-West" }),
(:Candidate { name: "Colm Brophy", gender: "Male", party: "FG", status: "elected", con: "Dublin South-West" }),
(:Candidate { name: "Katherine Zappone", gender: "Female", party: "IND", status: "elected", con: "Dublin South-West" }),
(:Candidate { name: "Anne-Marie Dermody", gender: "Female", party: "FG", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Peter Fitzpatrick", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Pamela Kearns", gender: "Female", party: "LAB", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Sandra Fay", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Ronan McMahon", gender: "Male", party: "RN", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Sarah Holland", gender: "Female", party: "SF", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Deirdre O'Donovan", gender: "Female", party: "IA", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Mick Duff", gender: "Male", party: "LAB", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Eamonn Maloney", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Francis Duffy", gender: "Male", party: "GP", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Karen Warren", gender: "Female", party: "FG", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Declan Burke", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Stephen Sinclair", gender: "Male", party: "DDI", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Kieran Adam Quigley", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Joan Summerville Molloy", gender: "Female", party: "IND", status: "excluded", con: "Dublin South-West" }),
(:Candidate { name: "Frank O'Gorman", gender: "Male", party: "IND", status: "excluded", con: "Dublin South-West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dublin West (sheet 19)

MATCH(c:Constituency { name: "Dublin West" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "65.4",
c.electorate = "64639",
c.spoiledVotes = "320",
c.validVotes = "41952",
c.quota = "8391"

CREATE(:Candidate { name: "Leo Varadkar", gender: "Male", party: "FG", status: "elected", con: "Dublin West" }),
(:Candidate { name: "Ruth Coppinger", gender: "Female", party: "AAA-PBP", status: "elected", con: "Dublin West" }),
(:Candidate { name: "Jack Chambers", gender: "Male", party: "FF", status: "elected", con: "Dublin West" }),
(:Candidate { name: "Joan Burton", gender: "Female", party: "LAB", status: "elected", con: "Dublin West" }),
(:Candidate { name: "Paul Donnelly", gender: "Male", party: "SF", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "David McGuinness", gender: "Male", party: "IA", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "Roderic O'Gorman", gender: "Male", party: "GP", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "TJ Clare", gender: "Male", party: "IND", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "Catherine Noone", gender: "Female", party: "FG", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "Jo O'Brien", gender: "Male", party: "RN", status: "excluded", con: "Dublin West" }),
(:Candidate { name: "Dermot Casey", gender: "Male", party: "IND", status: "excluded", con: "Dublin West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Dún Laoghaire (sheet 20)

MATCH(c:Constituency { name: "Dún Laoghaire" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "64.7",
c.electorate = "92248",
c.spoiledVotes = "401",
c.validVotes = "59238",
c.quota = "14810"

CREATE(:Candidate { name: "Richard Boyd-Barrett", gender: "Male", party: "AAA-PBP", status: "elected", con: "Dún Laoghaire" }),
(:Candidate { name: "Sean Barrett", gender: "Male", party: "FG", status: "elected", con: "Dún Laoghaire" }),
(:Candidate { name: "Maria Bailey", gender: "Female", party: "FG", status: "elected", con: "Dún Laoghaire" }),
(:Candidate { name: "Mary Mitchell O'Connor", gender: "Female", party: "FG", status: "elected", con: "Dún Laoghaire" }),
(:Candidate { name: "Mary Hanafin", gender: "Female", party: "FF", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Carrie Smyth", gender: "Female", party: "LAB", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Cormac Devlin", gender: "Male", party: "FF", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Ossian Smyth", gender: "Male", party: "GP", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Carol Hunt", gender: "Female", party: "IA", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Shane O'Brien", gender: "Male", party: "SF", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Frank Cronin", gender: "Male", party: "RN", status: "excluded", con: "Dún Laoghaire" }),
(:Candidate { name: "Raymond Whitehead", gender: "Male", party: "DDI", status: "excluded", con: "Dún Laoghaire" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Galway East (sheet 21)

MATCH(c:Constituency { name: "Galway East" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "66.7",
c.electorate = "68432",
c.spoiledVotes = "379",
c.validVotes = "45238",
c.quota = "11310"

CREATE(:Candidate { name: "Seán Canney", gender: "Male", party: "IA", status: "elected", con: "Galway East" }),
(:Candidate { name: "Anne Rabbitte", gender: "Female", party: "FF", status: "elected", con: "Galway East" }),
(:Candidate { name: "Ciaran Cannon", gender: "Male", party: "FG", status: "elected", con: "Galway East" }),
(:Candidate { name: "Paul Connaughton", gender: "Male", party: "FG", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Colm Keaveney", gender: "Male", party: "FF", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Lorraine Higgins", gender: "Female", party: "LAB", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Annemarie Roche", gender: "Female", party: "SF", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Michael 'Stroke' Fahy", gender: "Male", party: "IND", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Máiréad Ní Chróinín", gender: "Female", party: "GP", status: "excluded", con: "Galway East" }),
(:Candidate { name: "Aengus Melia", gender: "Male", party: "DDI", status: "excluded" , con: "Galway East" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Galway West (sheet 22)

MATCH(c:Constituency { name: "Galway West" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "62.4",
c.electorate = "103704",
c.spoiledVotes = "488",
c.validVotes = "64271",
c.quota = "10712"

CREATE(:Candidate { name: "Éamon Ó Cuív", gender: "Male", party: "FF", status: "elected", con: "Galway West" }),
(:Candidate { name: "Noel Grealish", gender: "Male", party: "IND", status: "elected", con: "Galway West" }),
(:Candidate { name: "Seán Kyne", gender: "Male", party: "FG", status: "elected", con: "Galway West" }),
(:Candidate { name: "Catherine Connolly", gender: "Female", party: "IND", status: "elected", con: "Galway West" }),
(:Candidate { name: "Hildegarde Naughton", gender: "Female", party: "FG", status: "elected", con: "Galway West" }),
(:Candidate { name: "Trevor Ó Clochartaigh", gender: "Male", party: "SF", status: "excluded", con: "Galway West" }),
(:Candidate { name: "John O'Mahony", gender: "Male", party: "FG", status: "excluded", con: "Galway West" }),
(:Candidate { name: "John Connolly", gender: "Male", party: "FF", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Niall Ó Tuathail", gender: "Male", party: "SD", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Derek Nolan", gender: "Male", party: "LAB", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Mary Hoade", gender: "Female", party: "FF", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Mike Cubbard", gender: "Male", party: "IND", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Seamus Sheridan", gender: "Male", party: "GP", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Fidelma Healy-Eames", gender: "Female", party: "IND", status: "excluded", con: "Galway West" }),
(:Candidate { name: "James Charity", gender: "Male", party: "IND", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Tom Holohan", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Nicola Daveron", gender: "Female", party: "RN", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Tommy Roddy", gender: "Male", party: "IND", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Ruairí O'Neill", gender: "Male", party: "DDI", status: "excluded", con: "Galway West" }),
(:Candidate { name: "Patrick Feeney", gender: "Male", party: "IND", status: "excluded", con: "Galway West" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Kerry (sheet 23)

MATCH(c:Constituency { name: "Kerry" })

SET
c.seatsFilled = "5",
c.turnoutPercent = "70.7",
c.electorate = "112751",
c.spoiledVotes = "476",
c.validVotes = "79273",
c.quota = "13213"

CREATE(:Candidate { name: "Michael Healy-Rae", gender: "Male", party: "IND", status: "elected", con: "Kerry" }),
(:Candidate { name: "Brendan Griffin", gender: "Male", party: "FG", status: "elected", con: "Kerry" }),
(:Candidate { name: "Danny Healy-Rae", gender: "Male", party: "IND", status: "elected", con: "Kerry" }),
(:Candidate { name: "Martin Ferris", gender: "Male", party: "SF", status: "elected", con: "Kerry" }),
(:Candidate { name: "John Brassil", gender: "Male", party: "FF", status: "elected", con: "Kerry" }),
(:Candidate { name: "Jimmy Deenihan", gender: "Male", party: "FG", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Arthur Spring", gender: "Male", party: "LAB", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Norma Moriarty", gender: "Female", party: "FF", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Michael O'Gorman", gender: "Male", party: "IND", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Brian Finucane", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Michael Fitzgerald", gender: "Male", party: "GP", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Donal Corcoran", gender: "Male", party: "RN", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Grace O'Donnell", gender: "Female", party: "FG", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Mary E Fitzgibbon", gender: "Female", party: "IND", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Kevin Murphy", gender: "Male", party: "IND", status: "excluded", con: "Kerry" }),
(:Candidate { name: "Henry Gaynor", gender: "Male", party: "IND", status: "excluded", con: "Kerry" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Kildare North (sheet 24)

MATCH(c:Constituency { name: "Kildare North" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "63.4",
c.electorate = "77609",
c.spoiledVotes = "291",
c.validVotes = "48935",
c.quota = "9788"

CREATE(:Candidate { name: "Catherine Murphy", gender: "Female", party: "SD", status: "elected", con: "Kildare North" }),
(:Candidate { name: "James Lawless", gender: "Male", party: "FF", status: "elected", con: "Kildare North" }),
(:Candidate { name: "Bernard Durkan", gender: "Male", party: "FG", status: "elected", con: "Kildare North" }),
(:Candidate { name: "Frank O'Rourke", gender: "Male", party: "FF", status: "elected", con: "Kildare North" }),
(:Candidate { name: "Anthony Lawlor", gender: "Male", party: "FG", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Emmet Stagg", gender: "Male", party: "LAB", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Réada Cronin", gender: "Female", party: "SF", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Maebh Ní Fhallúin", gender: "Female", party: "GP", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Brendan Young", gender: "Male", party: "IND", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Shane Fitzgerald", gender: "Male", party: "RN", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Ashling Merriman", gender: "Female", party: "AAA-PBP", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Michael Beirne", gender: "Male", party: "IND", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Gerard Dunne", gender: "Male", party: "IND", status: "excluded", con: "Kildare North" }),
(:Candidate { name: "Elizabeth O'Sullivan", gender: "Female", party: "IND", status: "excluded", con: "Kildare North" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Kildare South (sheet 25)

MATCH(c:Constituency { name: "Kildare South" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "62.8",
c.electorate = "59162",
c.spoiledVotes = "386",
c.validVotes = "36786",
c.quota = "9197"

CREATE(:Candidate { name: "Martin Heydon", gender: "Male", party: "FG", status: "elected", con: "Kildare South" }),
(:Candidate { name: "Fiona O'Loughlin", gender: "Female", party: "FF", status: "elected", con: "Kildare South" }),
(:Candidate { name: "Seán Ó Fearghaíl", gender: "Male", party: "FF", status: "elected", con: "Kildare South" }),
(:Candidate { name: "Mark Wall", gender: "Male", party: "LAB", status: "excluded", con: "Kildare South" }),
(:Candidate { name: "Patricia Ryan", gender: "Female", party: "SF", status: "excluded", con: "Kildare South" }),
(:Candidate { name: "Fiona McLoughlin-Healy", gender: "Female", party: "FG", status: "excluded", con: "Kildare South" }),
(:Candidate { name: "Declan Crowe", gender: "Male", party: "IND", status: "excluded", con: "Kildare South" }),
(:Candidate { name: "Suzanne McEneaney", gender: "Female", party: "GP", status: "excluded", con: "Kildare South" }),
(:Candidate { name: "Mary Kennedy", gender: "Female", party: "RN", status: "excluded", con: "Kildare South" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Laois (sheet 26)

MATCH(c:Constituency { name: "Laois" })

SET
c.seatsFilled = "3",
c.turnoutPercent = "62",
c.electate = "63295",
c.spoiledVotes = "352",
c.validVotes = "38868",
c.quota = "9718"

CREATE(:Candidate { name: "Seán Fleming", gender: "Male", party: "FF", status: "elected", con: "Laois" }),
(:Candidate { name: "Brian Stanley", gender: "Male", party: "SF", status: "elected", con: "Laois" }),
(:Candidate { name: "Charlie Flanagan", gender: "Male", party: "FG", status: "elected", con: "Laois" }),
(:Candidate { name: "Thomasina Connell", gender: "Female", party: "FG", status: "excluded", con: "Laois" }),
(:Candidate { name: "John Whelan", gender: "Male", party: "LAB", status: "excluded", con: "Laois" }),
(:Candidate { name: "Sinead Moore", gender: "Female", party: "GP", status: "excluded", con: "Laois" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Limerick City (sheet 27)

MATCH(c:Constituency { name: "Limerick City" })

SET
c.seatsFilled = "4",
c.turnoutPercent = "62.4",
c.electorate = "75568",
c.spoiledVotes = "357",
c.validVotes = "46761",
c.quota = "9353"

CREATE(:Candidate { name: "Willie O'Dea", gender: "Male", party: "FF", status: "elected", con: "Limerick City" }),
(:Candidate { name: "Maurice Quinlivan", gender: "Male", party: "SF", status: "elected", con: "Limerick City" }),
(:Candidate { name: "Michael Noonan", gender: "Male", party: "FG", status: "elected", con: "Limerick City" }),
(:Candidate { name: "Jan O'Sullivan", gender: "Female", party: "LAB", status: "elected", con: "Limerick City" }),
(:Candidate { name: "Kieran O'Donnell", gender: "Male", party: "FG", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "Cian Prendiville", gender: "Male", party: "AAA-PBP", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "Sarah Jane Hennelly", gender: "Female", party: "SD", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "James Gaffney", gender: "Male", party: "GP", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "Nora Bennis", gender: "Female", party: "CD", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "Desmond J Hayes", gender: "Male", party: "IND", status: "excluded", con: "Limerick City" }),
(:Candidate { name: "Denis Riordan", gender: "Male", party: "IND", status: "excluded", con: "Limerick City" })

RETURN c.name

// to link another query
UNION


// create candidates for constituency Limerick County (sheet 28)



RETURN c.name

// to link another query
UNION


// create candidates for constituency Meath East (sheet 33)

MATCH(c:Constituency{name: "Meath East"})

SET c.seatsFilled = "3",
c.turnoutPercent = "63.5",
c.electorate = "65588",
c.spoiledVotes = "240",
c.validVotes = "41388",
c.quota = "10348"


CREATE(:Candidate { name: "Thomas Byrne" , gender: "Male", party: "FF", status: "elected", con: "Meath East"}),
(:Candidate { name: "Helen McEntee", gender: "Female", party: "FG", status: "elected", con: "Meath East"}),
(:Candidate { name: "Regina Doherty", gender: "Female", party: "FG", status: "elected", con: "Meath East"}),
(:Candidate { name: "Darren O'Rourke", gender: "Male", party: "SF", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Joe Bonner", gender: "Male", party: "IA", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Dominic Hannigan", gender: "Male", party: "LAB", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Aisling O'Neill", gender: "Female", party: "SD", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Sharon Keogan" , gender: "Female", party: "IND", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Ben Gilroy", gender: "Male", party: "DDI", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Seán Ó Buachalla", gender: "Male", party: "GP", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Sarah Tyrrell" , gender: "Female", party: "RN", status: "excluded", con: "Meath East"}),
(:Candidate { name: "Séamus McDonagh", gender: "Male", party: "WP", status: "excluded" , con: "Meath East"})

RETURN c.name

// to link another query
//UNION

