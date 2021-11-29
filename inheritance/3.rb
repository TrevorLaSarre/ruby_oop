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