class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times {puts "Woof!!!!!!"}
  end

  def roll_over
    puts "*rolls over*"
  end
  def dog_years(integer)
    output = 0
    output = integer * 7
    return output
  end

  def trick
    puts "*Sits politely*"
  end

  def initialize
    puts "Initializing new puppy instance............."
  end
end

rover = Puppy.new
rover.fetch("Rope")
rover.speak(15)
rover.roll_over
rover.dog_years(1)
rover.trick
