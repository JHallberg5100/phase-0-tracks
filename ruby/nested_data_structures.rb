#In this I will be using nested data structures to create a way of turning a map into data points
#This will be the map of a fictional continent that currently has no actual name
#There will be a country layer, then the cities in each country.  Finally, there will be stats of each city
#To begin, we define the data for the maps.
continent= {
  "Drakenstrom" => {
    :vigurd =>["Vigurd", 302, 20,32,00],
    :turi => ["Turi", 9045, 400, 242, 17],
    :iblisk => ["Iblisk", 74302, 5023, 2103, 250],
    :durrip => ["Durrip",3423, 436, 212, 74],
  },
  "Malvurnia" => {
    :oblast => ["Oblast", 1500, 200, 106, 00],
    :churum => ["Churum", 2134, 523, 325, 15],
    :devensk => ["Devensk", 1898, 700, 400, 00],
    :wevensk => ["Wevensk",70000, 5000, 3530, 300],
    :povonk => ["Povonk", 43000, 3002, 3433, 2000],
    :nevegg => ["Nevegg", 50323, 7503, 2032, 00],
  },
  "Bitterwoods" => {
    :camp => ["The Hunting Camp",132, 75, 20, 00],
    :snapfire => ["Snapfire Clan",1503, 532, 204, 00],
    :barkbender => ["Barkbender Clan", 2432, 623, 302, 00],
    :whisperleaf => ["Whisperleaf Clan", 4301, 1202, 460, 00],
  },
}
#Now all data structures are created.  We must now have a user interface.
#First we will prompt access and welcome the user, then enter into loops.
#The space here is reserved for any method definitions I will end up using


#begin opening.
puts "Welcome to the mapbuddy"
puts "For an overview of the region, enter 1.  To enter browser mode, press 2"
input = gets.chomp
input = input.to_i
if input == 1
  puts "This currently unnamed region is the current home of quite a bit of bad things"
  puts "There is litte in the way of civilization, with only two major regions surviving"
  puts "However there is hope, as the region of the Bitterwoods is potentially centralizing"
  puts "For more information on the Dominion of Drakenstrom, enter 1"
  puts "For more on the Grand Union of Malvurnia, enter 2"
  puts "for more on the Darkest Bitterwoods, enter 3"
  input2 = gets.chomp
  input2 = input2.to_i
  if input2 == 1
    puts "The Dominion of Drakenstrom is a scattered land of holdfasts, freeholds, and monastic forts"
    puts "It exists in a great forest, the largest in the land.  Naturally, the forest is full of dark things.  Dangerous things"
    puts "There are several cities and villiages, and each has men and women willing to die for their home."
    run = 0

    #continent.each do |place,data|
      #puts "Now entering the lovely lands of #{place}"
      continent["Drakenstrom"].each do |call,town|
        puts "For the settlement of #{town[0]}"
        puts "the population is #{town[1]} and of that,"
        puts "#{town[2]} footmen stand ready to defend their home"
        puts "#{town[3]} ranged troops can be marshaled as well"
        puts "#{town[4]} nobles fight from horseback"
      end




  elsif input2== 2
    puts "Malvurnia is an alliance of three cultually similar regions bound together"
    puts "They share a military, and this keeps the region the safest of everywhere on this continent"
    puts "Nobles, freemen, and outcasts all have a chance to rise to greatness here"
    continent["Malvurnia"].each do |call,town|
      puts "For the settlement of #{town[0]}"
      puts "the population is #{town[1]} and of that,"
      puts "#{town[2]} footmen stand ready to defend their home"
      puts "#{town[3]} ranged troops can be marshaled as well"
      puts "#{town[4]} nobles fight from horseback"
    end

  elsif input2 ==3
    puts "The Bitterwoods are a battleground.  The region has had its orignal inhabitants killed off centuries ago"
    puts "Now the thick and forbidding woods are being torn apart in a war between goblin and elfin tribes"
    puts "Naturally, most people prefer the elves for the simple reason that they are less likely to eat wanderers."
    continent["Bitterwoods"].each do |call,town|
      puts "For the settlement of #{town[0]}"
      puts "the population is #{town[1]} and of that,"
      puts "#{town[2]} footmen stand ready to defend their home"
      puts "#{town[3]} ranged troops can be marshaled as well"
      puts "#{town[4]} nobles fight from horseback"
    end


  else
    puts "Fine, I'll avoid a lore dump"
end
else
  puts "This feature is being revisited at a later date.  Keep your eyes open for v1.1!"
end
