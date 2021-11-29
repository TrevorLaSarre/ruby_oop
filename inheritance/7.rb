class Student
  def initialize(n, g)
    @name = n
    @grade = g
  end
  
  def better_grade_than?(other)
    self.grade > other.grade
  end
  
  protected
  
  attr_reader :grade
end

joe = Student.new('Joe', 100)
bob = Student.new('Bob', 95)
