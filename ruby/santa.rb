class Santa
  def speak
    puts "Ho, ho ho!  Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a delicious #{cookie}!"
  end
  def initialize(gender, ethnicity)
    puts "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
end

santas = []
test_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
test_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
test_genders.length.times do |i|
    santas << Santa.new(test_genders[i], test_ethnicities[i])
  end
p santas
