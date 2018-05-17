def fizz_buzz(number)
  if number.is_a?(Integer)
    if number % 3 == 0 && number % 5 == 0
      return "Fizzbuzz"
    elsif number % 5 == 0
      return "Buzz"
    elsif  number % 3 == 0
      return "Fizz"
    else
      return number.to_s()
    end
  else return "Thats not a number"
  end
end
