class Abstraction
  def initialize(implementation)
    @implementation = implementation
  end
  def operation
    "Abstraction: Base operation with:\n"\
    "#{@implementation.operation_implementation}"
  end
end
class ExtendedAbstraction < Abstraction
  def operation
    "ExtendedAbstraction: Extended operation with:\n"\
    "#{@implementation.operation_implementation}"
  end
end
class Implementation
  def operation_implementation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
class ConcreteImplementationA < Implementation
  # @return [String]
  def operation_implementation
    'ConcreteImplementationA: Here\'s the result on the platform A.'
  end
end
class ConcreteImplementationB < Implementation
  # @return [String]
  def operation_implementation
    'ConcreteImplementationB: Here\'s the result on the platform B.'
  end
end
def client_code(abstraction)
  # ...
  print abstraction.operation
  # ...
end
implementation = ConcreteImplementationA.new
abstraction = Abstraction.new(implementation)
client_code(abstraction)
puts "\n\n"
implementation = ConcreteImplementationB.new
abstraction = ExtendedAbstraction.new(implementation)
client_code(abstraction)
