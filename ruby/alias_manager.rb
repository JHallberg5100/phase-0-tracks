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
  puts @first_name
  puts @last_name
  return @first_name , @last_name
end

def cycle_vowel(name_input)
  array_cycle = name_input.split('')
  yield(array_cycle)
  p array_cycle
  return array_cycle
end

cycle_vowel  do array_cycle.map! {|letter| }
  if letter == "a"
    letter = "e"
  elsif letter == "e"
    letter = "i"
  elsif letter == "i"
    letter = "o"
  elsif letter =="o"
    letter = "u"
  elsif letter == "u"
    letter = 'a'
  end
  p array_cycle
end

  cycle_vowel("Aegon Eon")
