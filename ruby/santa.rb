class Santa

  attr_reader :age
  attr_accessor :gender, :ethnicity
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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(deer)
    @reindeer_ranking.map! do |deer_name|
      if deer_name == deer
        @reindeer_ranking.delete(deer_name)
        @reindeer_ranking[-1] = deer
      end
    end

end
santas = []
test_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "maynnoaise", "two-spirit"]
test_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Elder Evil", "Youth Evil", "Cereal Mascot" "N/A"]
#test_genders.length.times do |i|
#    santas << Santa.new(test_genders[i], test_ethnicities[i])
#end


#santas[3].get_mad_at('Dasher')
#santas[3].celebrate_birthday
#santas[3].gender= "Woozle"
#puts santas[3]
#puts santas[3].age
#puts santas[3].ethnicity
#puts santas[3].gender

#For Program
#Runs program to create santas, printing out each one as it goes.
#Has random age as well.
santa_list = []
santa_count = rand(500)
while santa_count != 0
  @output = Santa.new(test_genders[rand(9)], test_ethnicities[rand(9)])
  determine_age = rand(140)
  while determine_age != 0
    @output.celebrate_birthday
    determine_age -= 1
  end
  santa_count -= 1
  santa_list << @output
  puts @output.gender
  puts @output.age
  puts @output.ethnicity
end
end
