require 'pry'
class Triangle
  attr_accessor :side_a, :side_b, :side_c
  
  # write code here
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides = [side_a, side_b, side_c]
  end 
  
  def valid?
    #illegal cases 
    sum_0_1 = @sides[0] + @sides[1] <= @sides[2]
    sum_1_2 = @sides[1] + @sides[2] <= @sides[0]
    sum_0_2 = @sides[0] + @sides[2] <= @sides[1]
    illegal_length = @sides.any? {|side| side <= 0} 
    illegal_cases = sum_0_1 || sum_1_2 || sum_0_2 || illegal_length 
      
     if illegal_cases
      return false 
       
    else 
      return true 
    end 
    
  end 
  
  def kind 
    if valid? 
      if @side_a == @side_b && @side_a == @side_c && @side_b == @side_c
        return :equilateral 
      elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
        return :isosceles 
      else 
        return :scalene
      end 
    else 
        raise TriangleError

    end 
      
  end 
  
  class TriangleError < StandardError 
    def message 
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end 
  
  
end
