my_number = 5
p "What number am I thinking of?"
value = gets.chomp.to_i()

while(value != my_number)
  #p "Nope, try again!"
  if value < my_number
    p "Too low"
  else
    p "Too High"
  end
  value = gets.chomp.to_i()
end

p "You got it!"
