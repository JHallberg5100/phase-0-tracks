#module Shout
#  def self.yell_angrily(words)
#  puts  words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#  puts  "Sometimes it makes me happy to shout " + words + "!!!" + " :D"
#  end
#end
#require_relative "shout"
#Shout.yell_angrily("Bosnia")
#Shout.yell_happily("GIB CLAY")

module Shout
  def yell_angrily(words)
    puts  words + "!!!" + " :("
  end

  def yell_happily(words)
    puts  "Sometimes it makes me happy to shout " + words + "!!!" + " :D"
  end
end

class Activist
  include Shout
end

class Rabble_rouser
  include Shout
end

greenpeace = Activist.new
greenpeace.yell_angrily("Oil spills")

anarchist = Rabble_rouser.new
anarchist.yell_happily("Chaos")
