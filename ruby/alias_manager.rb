#The goal here is to create a program that will switch first and second names, then cycle consonants and vowels down one
#The order here will be simple, and there will be multiple differing methods that will be called
#Input names, then break the name into an array.
#Break name into two seperate variables
#break variables into character arrays
#Cycle through, and cycle vowels into different then consonants.
#Relink them all, remove the white space
#Publish
@first_name =""
@last_name= ""
def name_break(input_s) #Take the input name and break into first and last
  holder =" "
  holder = input_s.split(" ")
  @first_name = holder[0]
  @last_name = holder[1]
  puts input_s
  puts @first_name.to_s
  puts @last_name.to_s
  return @first_name , @last_name
end

#def vowel_swap(input_s)
  #input_s = input_s.split("")
#  finished = 1
#  counter = 0
#  length = input_s.length
#  until finished == length
#    if input_s[counter] == "a" || input_s[counter] == "A"
#      input_s[counter] = "e"
#      counter += 1
#    elsif input_s[counter] == "e" || input_s[counter] == "E"
#      input_s[counter] = "i"
#      counter += 1
#    elsif input_s[counter] == "i" || input_s[counter] == "I"
#      input_s[counter] = "o"
#      counter += 1
#    elsif input_s[counter] == "o" || input_s[counter] == "O"
#      input_s[counter] = "u"
#      counter += 1
#    elsif input_s[counter] == "u" || input_s[counter] == "U"
#      input_s[counter] = "a"
#      counter += 1
#    else
#      counter += 1
#    end
#  end
#  puts input_s
#  return input_s
#  end
#  vowel_swap("Anna")
def vowel_swap(input_s)
  input_s = input_s.split("")
  p input_s
  length = input_s.length
  count = 0
  while count < length
    if input_s[count] == "a" || input_s[count] == "A"
    input_s[count] = "e"
    count += 1

    elsif input_s[count] == "e" || input_s[count] == "E"
      input_s[count] = "i"
      count += 1
    elsif input_s[count] == "i" || input_s[count] == "I"
      input_s[count] = "o"
      count += 1
    elsif input_s[count]== "o" || input_s[count] == "O"
      input_s[count] = "u"
      count += 1
    elsif input_s[count] == "u" || input_s[count] == "U"
      input_s[count] = "a"
      count += 1
    else
      count +=1
    end
  p input_s
end
p input_s
end

name_break("Anna Karina")
vowel_swap(@first_name)
#cycle_vowel() do array_cycle.map! {|letter| }
#  if letter == "a"
#    letter = "e"
#  elsif letter == "e"
#    letter = "i"
#  elsif letter == "i"
#    letter = "o"
#  elsif letter =="o"
#    letter = "u"
#  elsif letter == "u"
#    letter = 'a'
#  end
#  p array_cycle
#end
