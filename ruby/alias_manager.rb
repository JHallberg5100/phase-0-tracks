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

end

output = input_s.join("")
return output
end

def con_swap(input_s)
  @length = input_s.length
  puts "I am #{@length} length now"
  input_s = input_s.downcase!
  input_s = input_s.split("")
  @count = 0

  while @count != @length
    if input_s[@count] == "a" || input_s[@count] == "z"
      if input_s[@count] == "a"
        @count += 1
        puts 'debug a'
        puts "#{@count} count"
        puts "#{@length} length"
      else
        input_s[@count]= "a"
        @count +=1
        puts "debug z"
      end
    elsif input_s[@count] == "e" || input_s[@count] == "d"
      if input_s[@count] == "e"
        @count += 1
        puts "debug e"
      else
        input_s[@count]= "f"
        @count +=1
        puts "debug d"
      end
    elsif input_s[@count] == "i" || input_s[@count] == "h"
      if input_s[@count] == "i"
        @count += 1
        puts "debug i"
      else
        input_s[@count]= "j"
        @count +=1
        puts "debug other"
      end
    elsif input_s[@count]== "o" || input_s[@count] == "n"
      if input_s[@count] == "o"
        @count += 1
        puts "debug other"
      else
        input_s[@count]= "p"
        @count +=1
        puts "debug other"
      end
    elsif input_s[@count] == "u" || input_s[@count] == "t"
      if input_s[@count] == "a"
        @count += 1
        puts "debug other"
      else
        input_s[@count]= "v"
        @count +=1
        puts "debug other"
      end
    else
      input_s[@count] = input_s[@count].next
      @count +=1
      puts "debug ticker"
    end
  end
  output = input_s.join("")
  return output
end



tester = vowel_swap("Abigail")
p "#{tester} says Hi"
output = con_swap("AaBbCcDdEe")
p output
