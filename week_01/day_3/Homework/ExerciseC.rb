## Exercise C

### Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

### Complete these tasks:

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.

united_kingdom[1][:capital] = 'Cardiff'
p united_kingdom

#2. Create a Hash for Northern Ireland and add it to
# the `united_kingdom` array (The capital is Belfast,
#   and the population is 1,811,000).

united_kingdom << {
  :name => "Northen Ireland",
  :population => 1811000,
  :capital => "Belfast",
  }
p united_kingdom

#Use Push method to add Northern Ireland
# united_kingdom.push({
#   name: "Northern Ireland",
#   population: 1811000,
#   capital: "Belfast"
#   })



# 3. Use a loop to print the names of all the countries
# in the UK.

for country in united_kingdom
  puts country[:name]
end

#Another way to print the countries
# for country in united_kingdom
#   p "Country: #{country[:name]}"
# end

#4. Use a loop to find the total population of the UK.

total_population = 0

for country in united_kingdom
  total_population += country[:population]
end

p "The total population of the uk is " + total_population.to_s



#Method to count populations
#
# def pop_count(array)
#   total_pop = 0
#   for country in array
#     total_pop += country[:population]
#   end
#   return total_pop.to_s()
# end
#
# p pop_count(united_kingdom)
