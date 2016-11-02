#create methods
def bool(recieve)
  if recieve.to_s == "true" || recieve.to_s == "yes"
    return true
  else
    return false
  end
end
#Begin Program and initialize hash
puts "Welcome to designbot 5000"
puts "Who are you adding as a client today?"
person = gets.chomp
hash = {
  :name => 0,
  :fam_size =>0 ,
  :trendy => 00,
  :decor => 00,
  :married => 00,
  :rooms => 00,
  :income_lvl => 00,
  :personality => 00,

}
hash[:name] = person
#enter data for hash
puts "How many family members exist?"
input = gets.chomp
input = input.to_i
hash[:fam_size]= input
puts "Do they consider themselves trendy?"
input = gets.chomp
input =bool(input)
hash[:trendy]= input
puts "What is their favored type of decor?"
input = gets.chomp
input = input.to_s
hash[:decor]= input
puts "Are they married?"
input = gets.chomp
input = bool(input)
hash[:married]= input
puts "How many rooms in the dwelling?"
input = gets.chomp
input = input.to_i
hash[:rooms]= input
puts "Yearly income?"
input = gets.chomp
input = input.to_i
hash[:income_lvl]= input
puts "The clients personality in one word"
input = gets.chomp
input = input.to_s
hash[:personality]= input
#finalize data entry
puts "The data for this individual is as follows"
puts hash
#give oppertunity to update keys
puts "Would you like to make any changes?"
input =gets.chomp
if input == "yes" || input == "true"
  puts "What would you like to change?"
  new_sym = gets.chomp
  if new_sym == "none"
  p "ok"
  exit
  else
    new_sym = new_sym.to_sym
    puts "New value?"
    input = gets.chomp
    hash[new_sym] = input
  end
puts hash
end
