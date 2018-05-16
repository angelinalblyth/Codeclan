# DRY - Dont Repeat Yourself
#
# WET - Write Everything Twice

#WHILE LOOPS

# counter = 0
#
# my_number = 5

# while(counter < my_number)
#   p "Counter is #{counter}"
#   counter += 1
# end

# while(true)
#   p "type something"
#   input = gets.chomp()
#   break if (input.downcase == 'q')
#   p "You typed #{input}"
# end

#FOR LOOPS
#
# numbers = [1,2,3,4,5]
#
# for num in numbers
#   p num * 3
# end
#
# #puts num into the array numbers and prints it out then
# #moves onto the next one and then the next one until it
# #no longer has any vals
# numbers = [1,2,3,4,5]
#
# total = 0
#
# for num in numbers
#   total = total + num
# end
#
# p total

# chickens = ["Maigret", "Hetty", "Henrietta", "Audrey", "Sebastian"]
#
# for chicken in chickens
#   p chicken
# end

chicken_hashes = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# for chicken in chicken_hashes
#   p "#{chicken[:name]} is #{chicken[:age]}"
# end

# total_eggs = 0
#
# for chicken in chicken_hashes
#   total_eggs += chicken[:eggs]
#   chicken[:eggs] = 0
# end
#
# p total_eggs
# p chicken_hashes

#conditional logics in loops 
total_eggs = 0

for chicken in chicken_hashes
  if chicken[:eggs] > 0
    p "woo eggs!"
end
end
