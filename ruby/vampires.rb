#Introduction and number of employees to be processed
puts "Hello and welcome to Werewolf Incorporated patented HR program!"
puts "How many employees are you looking to process today?"
employee_num = 0
employee_num = gets.chomp
employee_num = employee_num.to_i
name = ""
age = ""
byear = ""
garlic = ""
health = ""
#begin processing for single emp, loop for howevermany employees
until employee_num == 0
  #Name Prompt
  puts "What is your legal name?"
  name = gets.chomp
  #Year born and age Prompt
  puts "What is your age?"
  age = gets.chomp
  age = age.to_i
  puts "What year were you born in?"
  byear = gets.chomp
  byear = byear.to_i
  #Garlic Bread Prompt
  puts "Every Wednesday is Italian day in the cafeteria.  Would you like infinate garlic bread?"
  garlic = gets.chomp
  #Health insurance prompt
  puts "We also have health insurace.  Are you intrested?"
  health = gets.chomp
  #Run tests, initialize results
  results = ""
  current_year = 2016

  #Test age, garlic, insurance
  age_test = current_year - byear
  if age_test == age && (garlic == "yes" || health == "yes")
    results = "Probably not a vampire"
  elsif age_test != age && (garlic == "no" || health == "no")
    results = "Probably a vampire"
  elsif age_test != age && (garlic = "no" && health == "no")
    results = "Almost certainly a vampire"
  else
    results = "Results inconclusive"
  end
  #Test name
  if name == "Drake Cula" || name == "Tu Fang"
    results = "Definitely a vampire"
  end
  pull = ""
  while pull != "done"
    puts "What are your allergies?  Enter 'done' when finished"
    pull = gets.chomp

    if pull == "sunshine" || pull == "sunlight"
      results = "Probably a vampire"
      break
    end
  end
  p results
  employee_num -= 1
end
puts "Acutally, nevermind!  What do these questions have to do with anything.  Let's all be friends."
