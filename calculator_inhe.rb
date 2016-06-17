#! usr/bin/ruby -w

class Operation

  def initialize(number_one = 0, number_two = 0)
    @@number_one = number_one
    @@number_two =  number_two
  end

# This Method will be overridden 

  def calculation
  end

end

# Inheritence --> IS-A Relationship b/w Method & all calculator standard functions
# i.e Add IS-A Method  

class Add < Operation
  class << self
    def calculation
      @@number_one + @@number_two 
    end
  end

end

class Subtract < Operation
  class << self
    def calculation
      @@number_one - @@number_two 
    end
  end

end

class Multiply < Operation

  class << self
    def calculation
      @@number_one * @@number_two 
    end
  end

end

class Divide < Operation

  class << self
    def calculation
      @@number_one / @@number_two 
    end
  end

end

# Display Need Method Calculations to Display The Results

class Display

  def display
    puts "The Addition is : #{Add.calculation}"
    puts "The Subtraction is : #{Subtract.calculation}"
    puts "The Multiplication is : #{Multiply.calculation}"
    puts "The Division is : #{Divide.calculation}"
  end

end


# Composition --> HAS-A relation between Calculator & Method class
# i.e Calculator HAS Methods & Calculator HAS display

class Calculator

 def initialize(number_one = 0, number_two = 0)
    Operation.new(number_one,number_two)
 end

 def display_calculations
  display_instance = Display.new
  display_instance.display
 end

end

# Declaring Local Variables

user_input_one = 0
user_input_two = 0

# Getting Input from User

print "Plese Enter Your First Number : "
user_input_one = gets.chomp.to_i
print "Please Enter Your Second Number : "
user_input_two = gets.chomp.to_i

# Main Methods & Objects Calling

calculator = Calculator.new(user_input_one, user_input_two)
calculator.display_calculations

