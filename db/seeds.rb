User.destroy_all
MutualFund.destroy_all
Stock.destroy_all
MutualFundStock.destroy_all

kayvon = MutualFund.create({
	name: "American Trust Allegiance"
})

thomas = MutualFund.create({
	name: "Dreyfus Premier Third Century A"
})

joe = MutualFund.create({
	name: "Integrity Growth & Income Fund"
})

breon = MutualFund.create({
	name: "MMA Praxis Core Stock A"
})

noah = MutualFund.create({
	name: "Parnassus Equity Income"
})

rich = MutualFund.create({
	name: "Utopia Growth Fund"
})

############## Technology ################

amazon = Stock.create({
	name: "Amazon.com Inc",
	ticker: "AMZN",
	industry: "Technology",
	description: "Leader in the E-Commerce Business.",
	price: 10
})

google = Stock.create({
	name: "Google",
	ticker: "GOOGL",
	industry: "Technology",
	description: "Search Engine Giant.",
	price: 5
})

facebook = Stock.create({
	name: "Facebook",
	ticker: "FB",
	industry: "Technology",
	description: "Social Network Company.",
	price: 8
})

apple = Stock.create({
	name: "Apple",
	ticker: "AAPL",
	industry: "Technology",
	description: "Think Different.",
	price: 6
})

microsoft = Stock.create({
	name: "Microsoft",
	ticker: "MSFT",
	industry: "Technology",
	description: "Software and Cloud Company.",
	price: 23
})

############## Oil ################

chevron = Stock.create({
	name: "Chevron",
	ticker: "CVX",
	industry: "Oil",
	description: "Oil Giant.",
	price: 85
})

exxon = Stock.create({
	name: "ExxonMobil",
	ticker: "XOM",
	industry: "Oil",
	description: "Energy Company.",
	price: 32
})

royal = Stock.create({
	name: "Royal Dutch Shell",
	ticker: "RDS",
	industry: "Oil",
	description: "Oil and Gas Company.",
	price: 45
})

eog = Stock.create({
	name: "EOG Resources",
	ticker: "EOG",
	industry: "Oil",
	description: "Competing star in the oil industry.",
	price: 8
})

valero = Stock.create({
	name: "Valero Energy",
	ticker: "VLO",
	industry: "Oil",
	description: "International Manufacturer of Fuels.",
	price: 22
})

############## Tobacco ################

phillip = Stock.create({
	name: "Phillip Morris",
	ticker: "PM",
	industry: "Tobacco",
	description: "Manufacturer of Cigarettes and Tobacco Products.",
	price: 20
})

altria = Stock.create({
	name: "Altria",
	ticker: "MO",
	industry: "Tobacco",
	description: "Creates Smokeable and Smokless Products.",
	price: 13
})

reynolds = Stock.create({
	name: "Reynolds American",
	ticker: "RAI",
	industry: "Tobacco",
	description: "Just Another Tobacco Company.",
	price: 76
})

vector = Stock.create({
	name: "Vector Group",
	ticker: "VGR",
	industry: "Tobacco",
	description: "Manufacturer and Sale of Cigarettes.",
	price: 65
})

lorillard = Stock.create({
	name: "Lorillard Inc.",
	ticker: "LO",
	industry: "Tobacco",
	description: "Creates Cigarettes and E-Cigarettes.",
	price: 6
})

############## Finance ################

visa = Stock.create({
	name: "Visa Inc",
	ticker: "V",
	industry: "Finance",
	description: "Payment Technology Company",
	price: 20
})

jpm = Stock.create({
	name: "JP Morgan",
	ticker: "JPM",
	industry: "Finance",
	description: "Most Well Known Bank",
	price: 29
})

wfc = Stock.create({
	name: "Wells Fargo",
	ticker: "WFC",
	industry: "Finance",
	description: "American Multinational Bank.",
	price: 4
})

citi = Stock.create({
	name: "Citigroup Inc",
	ticker: "C",
	industry: "Finance",
	description: "Consumer Banking Operations Company.",
	price: 2
})

bac = Stock.create({
	name: "Bank of America",
	ticker: "BAC",
	industry: "Finance",
	description: "Financial Holding Company.",
	price: 3
})

############## Retail ################
underarmour = Stock.create({
	name: "UnderArmour",
	ticker: "UA",
	industry: "Retail",
	description: "Branded performance apparel.",
	price: 3
})

macy = Stock.create({
	name: "Macy's",
	ticker: "M",
	industry: "Retail",
	description: "Omnichannel Retial Company",
	price: 3
})

nordstrom = Stock.create({
	name: "Nordstrom's",
	ticker: "JWN",
	industry: "Retail",
	description: "High End Retailer.",
	price: 3
})

nike = Stock.create({
	name: "Nike",
	ticker: "NKC",
	industry: "Retail",
	description: "Sports Conglomerate.",
	price: 3
})

gap = Stock.create({
	name: "Gap",
	ticker: "GPS",
	industry: "Retail",
	description: "Apparel Retailer.",
	price: 3
})

##########Adding Stocks to Mutual Fund############

kayvon.stocks << [amazon, google, facebook, phillip, altria, reynolds, vector, lorillard]
thomas.stocks << [google, macy, amazon, gap, royal, microsoft]
joe.stocks << [facebook, visa, amazon, google, exxon, royal, jpm, wfc]
breon.stocks << [jpm, nike, citi, eog, royal, microsoft, apple]
noah.stocks << [chevron, facebook, valero, macy, underarmour]
rich.stocks << [exxon, wfc, jpm, eog, nike, nordstrom]

##########Quantity#################

MutualFundStock.all.each {|x| x.quantity = rand(50); x.save}

