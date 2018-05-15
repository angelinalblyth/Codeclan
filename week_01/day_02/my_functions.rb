# def greet()
#   score = 10
#   return  score
# end
#
# # p greet()
# #
# # p score


# def greet(name)
#   return "Hey" + " " + name
# end
#
# p greet("Angelina")
#
# def myFunction(parameter)
#   return parameter
# end
#
# p myFunction("arguement")
# p myFunction(12345)
#
# def new_greet(name, time_of_day)
#   return "Good " + time_of_day + ", " + name
# end
#
# p new_greet("Angelina", "morning")


def greet(name, time_of_day)
  return "Good #{time_of_day}, #{name.capitalize()}"
end

p greet("angelina", "morning")

def add(first_number, second_number)
  return first_number + second_number
end

p add(2, 3)
