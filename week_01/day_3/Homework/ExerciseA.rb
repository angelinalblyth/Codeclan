## Exercise A

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

#1. Add `"Edinburgh Waverley"` to the end of the array

stops.push("Edinburgh Waverley")
p stops

#2. Add `"Glasgow Queen St"` to the start of the array

stops.unshift("Glasgow Queen St")
p stops

#3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, 'Polmont')
p stops

#4. Work out the index position of `"Linlithgow"

p stops.index("Linlithgow")

#5. Remove `"Livingston"` from the array using its name

stops.delete("Livingston")
p stops

#6. Delete `"Cumbernauld"` from the array by index

stops.delete_at(2)
p stops

#7. How many stops there are in the array?

p stops.length()

#Can also use stops.count()

#8. How many ways can we return `"Falkirk High"` from the array?

p stops[2]
p stops[-5]

# Also
#
# my_stop = stops.slice(2)
# p my_stop
# p stops.fetch(2)
# p stops.fetch(200) <- this will give an error
# p stops.at(2)
#TRY DOING A FOR LOOP FOR THIS! 

#9. Reverse the positions of the stops in the array

p stops.reverse

#10. Print out all the stops using a for loop

for stop in stops
  p stop
end
