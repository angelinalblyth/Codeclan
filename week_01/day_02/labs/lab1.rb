# 1. Create an add function
#   this will take two parameters
#   call the first parament first_number and the second second_number
#   use the return keyword
#   invoke the function add(2, 3)


def add(first_number, second_number)
  return first_number + second_number
end

p add(2, 3)

# 2. Create a population_density function
#   this will take two parameters
#   call the first parameter population and the second area
#   calculate the population dencsity
#   invoke the function using the population and area of Mauritus:
#     population = 5373000
#     area = 77933


def population_density(population, area)
  return population / area
end

p population_density(5373000, 77933)
