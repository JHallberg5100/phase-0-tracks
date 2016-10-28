#Introduction
puts "Hello and welcome to Werewolf Incorporated patented HR program!"
name = ""
age = ""
byear = ""
garlic = ""
health = ""
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
puts = "We also have health insurace.  Are you intrested?"
health = gets.chomp
#Run tests, initialize results
results = ""
current_year = 2016

#Test age, garlic, insurance
age_test = current_year - byear
if age_test == age && (garlic == "yes" || insurance == "yes")
  results = "Probably not a vampire"
elsif age_test != age && (garlic == "no" || insurance == "no")
  results = "Probably a vampire"
elsif age_test != age && (garlic = "no" && insurance == "no")
  results = "Almost certainly a vampire"
else
  results = "Results inconclusive"
end
#Test name
if name == "Drake Cula" || name == "Tu Fang"
  results = "Definitely a vampire"
end
p results
