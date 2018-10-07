module Rideable
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  include Rideable

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Rideable

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new
car.honk_horn
p car

bike = Bike.new
bike.ring_bell
p bike
