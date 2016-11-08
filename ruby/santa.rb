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

      def gender=(new_gender)
        @gender = new_gender
      end

      def age
        return @age
      end

      def ethnicity
        return @ethnicity
      end

      def gender
        return @gender
      end
end
end
santas = []
test_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
test_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
test_genders.length.times do |i|
    santas << Santa.new(test_genders[i], test_ethnicities[i])
end


santas[3].get_mad_at('Dasher')
santas[3].celebrate_birthday
santas[3].gender= "Woozle"
puts santas[3]
puts santas[3].age
puts santas[3].ethnicity
puts santas[3].gender
