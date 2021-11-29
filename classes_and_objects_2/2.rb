class MyCar
  attr_accessor :color
  attr_reader :year
  
  def self.gas_mileage(miles, gallon)
    puts "#{miles/gallon} miles per gallon of gas"
  end
  
  def to_s
    puts "This car is a #{color}, #{year}, #{@model}."
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

honda = MyCar.new('2013', 'black', 'civic')
puts honda