# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
class Vehicle
end

my_vehicle = Vehicle.new

car_collection = []

# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
class Car
  def initialize(model_year)
    @wheels = 4
    @light = false
    @turn_signal = false
    @speed = 0
    @model_year = model_year
  end

  def to_s
    "#{@wheels}, #{@light}, #{@turn_signal}, #{@speed}"
  end

  def wheels
    @wheels
  end

  def lights_on
    @light = !@light
  end

  def turn_signal
    @turn_signal
    if (@turn_signal == false)
      @turn_signal = "left"
    elsif (@turn_signal == "left")
      @turn_signal = "right"
    elsif (@turn_signal == "right")
      @turn_signal = false
    end
  end

  def speed
    @speed
  end

  def model_year
    @model_year
  end
end



my_car = Car.new
my_car.wheels


# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
class Tesla < Car
  def initialize(model_year)
    super
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
  end

end



my_tesla = Tesla.new(2017)
my_tesla.wheels
my_tesla.model_year
my_tesla.lights_on
my_tesla.lights_on
my_tesla.turn_signal
my_tesla.accelerate
my_tesla.turn_signal
my_tesla.accelerate
my_tesla.turn_signal
my_tesla.accelerate
my_tesla.brake
my_tesla1 = Tesla.new(2015)
my_tesla1.model_year
car_collection.push(my_tesla)
car_collection.push(my_tesla1)
my_tesla2 = Tesla.new(2014)
my_tesla2.model_year
car_collection.push(my_tesla2)


# Story: As a programmer, I can make a Tata car.
class Tata < Car
  def initialize (model_year)
    super
  end

  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.5
  end


end

my_tata = Tata.new(1945)
my_tata.wheels
my_tata.model_year
my_tata.accelerate
my_tata.brake
my_tata.speed
my_tata.to_s
my_tata1 = Tata.new(1960)
my_tata1.model_year
car_collection.push(my_tata)
car_collection.push(my_tata1)

# Story: As a programmer, I can make a Toyota car.
class Toyota < Car
  def initialize (model_year)
    super
  end

  def accelerate
    @speed += 7
  end

  def brake
    @speed -= 5
  end
end

my_toyota = Toyota.new(2010)
my.toyota.to_s
my_toyota.wheels
my_toyota.model_year
my_toyota1 = Toyota.new(1986)
my_toyota1.model_year
car_collection.push(my_toyota)
car_collection.push(my_toyota1)

car_collection.sort_by {|a| a.model_year}
car_collection.sort_by {|b| b.class.to_s}
car_collection.sort_by {|c| [ c.class.to_s, c.model_year ]}

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.

# Story: As a programmer, I can signal left and right. Turn signals starts off.

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.
