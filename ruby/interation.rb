def method
  puts "Method begin"
  louis = "blue"
  clark = "green"
  yield(louis,clark)

end

method { |louis,clark| puts "My favorite color is #{louis}, but I also like #{clark}"}

array = ["bear", "toucan", "barracuda","cicada"]

life = {
  "bear" => "mammal",
  "toucan"=> "bird",
  "barracuda" => "fish",
  "cicada" => "insect",

}
array.each do |critter|
  puts critter
end
life.each do |critter, kingdom|
  puts "The #{critter} is a #{kingdom}"
end
array.map! do |critter|
  puts critter
  critter.next
end
p array

array.each do |critter|
  numb=0
  if critter.length <= 5
    p "The #{critter} is a short word"
    numb +=1

else
  numb +=1
end
end
p array
#  numb = 0
#  while numb <= critter.length
  #  if critter[numb].length <= 4
      #critter.delete!(numb)
    #  numb += 1

  #  else
  #    numb +=1
  #  end
  #end
#end
life.each do |key, word|
  if key.length == word.length
    puts "I did not expect that"

  elsif key.length <= word.length
  puts  "yeah, #{key} seems shorter then #{word}"
  else
     puts "#{word} has few letters in it"
end
end
