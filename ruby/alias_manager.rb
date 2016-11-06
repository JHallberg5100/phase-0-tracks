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
def breaker(input_s)
  holder =" "
  holder = input_s.split(" ")
  @first_name = holder[0]
  @last_name = holder[1]
  puts input_s
  puts @first_name
  puts @last_name
  return @first_name , @last_name
end
breaker("Kelly Clark")
puts @first_name
puts @last_name
