=begin

A module is a collection of behaviors that is available in other classes. 
Modules are another way to achieve polymorphism, and are "mixed in" to classes
so that objects within that class have access to the fnctionality contained
within the module.

=end

module ThisIsAModule
  def method
    #this is a method
  end
end

class ThisIsAClass
  #some stuff
  include ThisIsAModule
end

object = ThisIsAClass.new

