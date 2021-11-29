class MyCar
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
end

honda = MyCar.new('2013', 'black', 'civic')
honda.accelerate(50)
honda.current_speed
honda.brake(30)
honda.current_speed
honda.shut_down