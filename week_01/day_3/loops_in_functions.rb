chicken_hashes = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# def count_eggs(array)
#   total_eggs = 0
#
#   for chicken in array
#     total_eggs += chicken[:eggs]
#     chicken[:eggs] = 0
#   end
#
#   return total_eggs.to_s() + " eggs collected."
#
# end
#
# p count_eggs(chicken_hashes)

def find_chicken_by_name(name, array)
  for chicken in array
    if chicken[:name] == name
      return chicken
    end
  end
end

p find_chicken_by_name("Mabel", chicken_hashes)

#add an error message if nothing is found
# Dont add the return "not found" as and else as it will break
# straight after searching the first array.
def find_chicken_by_name(name, array)
  for chicken in array
    if chicken[:name] == name
      return chicken
    end
  end
  return "Not found"
end

p find_chicken_by_name("Brian", chicken_hashes)
