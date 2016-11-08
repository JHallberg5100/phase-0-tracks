module Shout
  def self.yell_angrily(words)
  puts  words + "!!!" + " :("
  end

  def self.yell_happily(words)
  puts  "Sometimes it makes me happy to shout " + words + "!!!" + " :D"
  end
end
require_relative "shout"
Shout.yell_angrily("Bosnia")
Shout.yell_happily("GIB CLAY")
