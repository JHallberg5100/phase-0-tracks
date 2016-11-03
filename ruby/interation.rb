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

array.map! do |critter|
  numb = 0
  while numb <= critter.index
  if critter[numb].index <= 4
    critter[numb] = nil
    numb += 1
  else
  numb +=1

end
