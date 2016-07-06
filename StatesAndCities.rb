@states = {
	OR: 'Oregon',
	FL: 'Florida',
	CA: 'California',
	NY: 'New York',
	MI: 'Michigan'
}

@states[:MO] = 'Missouri'
@states[:IL] = 'Illinois'

@cities = {
	OR: ['Colorado', 'Boulder'], 
	FL: ['Miami', 'Orlando'],
	CA: ['San Francisco','Los Angeles', 'Ontario'],
	NY: ['Harlem', 'New York', 'Brooklyn'],
	MI: ['Detroit', 'Flint', 'Wyoming'],
	MO: ['St. Louis', 'Kansas City'],
	IL: ['Chicago', 'Aurora']
}

@taxes = {
	OR: 5, 
	FL: 10, 
	CA: 15, 
	NY: 20, 
	MI: 25, 
	MO: 30, 
	IL: 35
}

def describe_state(stateCode) 
	puts "#{stateCode} is for #{@states[stateCode]}. It has #{@cities[stateCode].length} major cities:"
	adding_commas(stateCode)
end 

def adding_commas(stateCode) 
	@cities[stateCode].each do |city| 
 		puts city + "," 
end 
	end 

def calculate_tax 
	puts "State you want to calculate tax for:"
	stateCode = gets.chomp.to_sym
	puts "Amount you want to calculate tax for:"
	amount = gets.chomp.to_i 

	taxAmount = @taxes[stateCode].to_i*0.01*amount
	taxAmount = '%.2f' % taxAmount  
	puts "Your tax amount: #{taxAmount}"  
end

def find_state_for_city 
	puts "Type name of city and I will tell you the state!"
	city = gets.chomp.to_sym
		if @cities.city?(stateCode) 
			puts "#{stateCode}"
		else 
			puts "Oops!"
		end 		
end 

puts "State Code:"
stateCode = gets.chomp.to_sym

describe_state(stateCode)
calculate_tax() 
find_state_for_city()

# Define another method called calculate_tax which:

# Takes as input the state code as well as a dollar amount (eg: 123.49)
# Determines the tax rate to use based on the provided state
# Calculates the tax amount based on that rate
# Returns the tax amount rounded to 2 decimal places (eg: 44.53)
# Refer to the same tips as Task 3
