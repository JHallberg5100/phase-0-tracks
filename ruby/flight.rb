module Flight
  def take_off(altitude)
    puts "Taking off and ascending unil reaching #{altitude}"
  end
end
class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(3523525)
