# Pseudo code......
#
# 1. Split the string
# 2. Loop over the array
# 3. Split the word - new array
# 4. Remove first letter of spit word
# 5. Add the first letter to the end of the word
# 6. Add 'ay' to the end of the word
# 7. Reassemble the words into a string through concatination
# 8. Return new sentence

def pigLatin(sentence)

  #declare var to hold the split string
  splitSentence = sentence.split()
  #empty array to hold split strings
  result = ""
  #split the word into letters
  for word in splitSentence
    letters = word.split(//)
    first_letter = letters[0]
    letters.shift()
    letters.push(first_letter)
    letters.push("ay ")

    result += letters.join()

  end

  result.capitalize!.chop!()
  return result
end



# "This is pig latin"
# ["This", "is", "pig", "latin"]
#
# word = "This".split
# letters = ["T", "h", "i", "s"]
# first_letter = "T"
# letters.shift = ["h", "i", "s"]
# .push ["h", "i" "s", "T"]
# .push("ay ") ["h", "i" "s", "T", "ay "]
# .join "histay" -->>> this goes into result
#
# .capitalize "Histay "
