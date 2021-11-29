class MyCar
  attr_accessor :color
  attr_reader :year
  
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

honda = MyCar.new(1997, "blue", "Civic")
honda.color = 'White'
puts honda.year
puts honda.color