class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

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
  def initialize(input_fuel, input_make, input_model)
    super()
    @fuel = input_fuel
    @make = input_make
    @model = input_model
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_gears, input_type, input_weight, input_color)
    super()
    @gears = input_gears
    @type = input_type
    @weight = input_weight
    @color = input_color
  end

  def ring_bell
    puts "Ring ring!"
  end
end

my_car = Car.new(5, "honda", "civic")
my_car.honk_horn

my_bike = Bike.new(10, "mountain", 20, "blue")
my_bike.ring_bell
