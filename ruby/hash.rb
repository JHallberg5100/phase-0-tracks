hash = {}
puts "Name?"
hash[:name] = gets.chomp
puts "address?"
hash[:add]= gets.chomp
puts "email"
hash[:email]= gets.chomp
puts "Phone?"
hash[:phone]= gets.chomp
puts "Favored shade of blue?"
hash[:blue] = gets.chomp
p hash[:blue] + hash[:add]
p hash
