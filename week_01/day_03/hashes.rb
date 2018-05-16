#ways to make a hash
my_first_hash = Hash.new()

my_second_hash = {}


meals = {
  "breakfast" => "'yoghurt",
  "lunch" => "greggs",
  "dinner" => "steak"
}

p meals

#left is keys right is values

# silly_hash = {
#   1 => "2",
#   2 => "3",
#   4 => false
# }
#
# p silly_hash


#print the value against the key
p meals["breakfast"]
#prints nil as there isnt the key in the hash
p meals["supper"]


#add a new value against the key key of supper, will return 0
# meals = Hash.new(0)
p meals["supper"]

meals ["supper"] = "pancakes"

p meals


#replace objects

meals["dinner"] = "chicken chargrills"
p meals

#delete a key/value

meals.delete("breakfast")
p meals
