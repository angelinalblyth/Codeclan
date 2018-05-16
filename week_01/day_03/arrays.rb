fruits = ['apple', 'bannana', 'grape', 'orange']

# p fruits

# p fruits[0]
# p fruits[2]
# p fruits[4]
# p fruits[-1]
# p fruits[-2

# p fruits.first()
# p fruits.first(2)
#
# p fruits.last()
# p fruits.last(2)

#Both are ways to create new arrays.
my_array = []
my_array = Array.new()


#Change something in the array
# p fruits
#
# fruits[1] = 'mango'
#
# p fruits
#
# #below creates 'nils' inbetween the last item and the item you just added
# fruits[10] = 'pineapple'
#
# p fruits

#add a item to the array
fruits.push('pear')
p fruits

# and then remove it
fruits.pop()
p fruits

#another way to add something to the end of the array
fruits << 'lemon'
p fruits


fruits.shift()
p fruits

fruits.unshift('apple')
p fruits


#Ruby takes both ints and strings into arrays
fruits_numbers_arr = ["apple", 1, 'orange', 5]
p fruits_numbers_arr


array_inception = [1,2,3,4,[5,6,7]]
p array_inception
