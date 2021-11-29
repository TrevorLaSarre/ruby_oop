module Fillable
  def fill
    puts "You filled up the bed!"
  end
end

class Vehicle
  @@number_of_vehicles = 0
  
  def self.print_number_of_vehicles
    puts @@number_of_vehicles
  end
  
  def inheritance
    @@number_of_vehicles += 1
  end
  
  attr_accessor :color
  attr_accessor :model
  attr_reader :year
  
  def self.gas_mileage(miles, gallon)
    puts "#{miles/gallon} miles per gallon of gas"
  end
  
  def to_s
    "This car is a #{color}, #{year}, #{model}."
  end
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end
  
  def accelerate(number)
    @speed += number
    puts "You accelerated to #{@speed} MPH"
  end
  
  def brake(number)
    @speed -= number
    puts "You slowed down to #{@speed} MPH"
  end
  
  def current_speed
    puts "You are currently going #{@speed} MPH"
  end
  
  def shut_down
    @speed = 0
    puts "You parked"
  end
  
  def spray_paint(color)
    @color = color
    puts "You just spray painted your car #{@color}"
  end
end

class MyCar < Vehicle
  HAS_A_BED = false
end

class MyTruck < Vehicle
  include Fillable
  
  HAS_A_BED = true
end

car1 = MyCar.new(2013, 'black', 'Honda Civic')

puts car1
car1.accelerate(500)
car1.current_speed