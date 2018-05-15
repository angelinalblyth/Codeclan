
def return_10
  return 10
end

def add(number1, number2)
  return number1 + number2
end

def subtract(number1, number2)
  return number1 - number2
end

def multiply(number1, number2)
  return number1 * number2
end

def divide(num1, num2)
  return num1/num2

end

def length_of_string(test_string)
  return test_string.length
end

def join_string( string_1, string_2 )
  return string_1 + string_2
end

def add_string_as_number(num1, num2)
  return num1.to_i() + num2.to_i()
end

def number_to_full_month_name(month)

case month

when 1
  "January"
when 2
  "February"
when 3
  "March"
when 4
  "April"
when 5
  "May"
when 6
  "June"
when 7
  "July"
when 8
  "August"
when 9
  "September"
when 10
  "October"
when 11
  "November"
when 12
  "December"
else
  "Not a valid month"
end

end

def number_to_short_month_name(month)
  if month == 1
    return "Jan"
  elsif month == 4
  return "Apr"
  elsif month == 10
    return "Oct"
  else
    "Enter a valid month"
  end
end

def cube(x)
  return x**3
end

def sphereVolume(radius)
  result=(4/3.to_f())*3.14*(radius**3)
  return result.to_i()

end
#volume of a sphere 4/3 *pi* r**3



def fahrenheit(f)
  return c = (f - 32) / 1.8
end
