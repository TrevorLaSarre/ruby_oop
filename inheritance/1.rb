class Vehicle
  def spray_paint(color)
    @color = color
    puts "You just spray painted your car #{@color}"
  end
end

class MyCar < Vehicle
  HAS_A_BED = false
end

class MyTruch < Vehicle
  HAS_A_BED = true
end