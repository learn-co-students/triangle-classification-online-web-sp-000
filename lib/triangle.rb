require "pry"

class Triangle
  
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def valid?
    if (@side_one > 0 && @side_two > 0 && @side_three > 0) && ((@side_one + @side_two > @side_three) || (@side_two + @side_three > @side_one) || (@side_one + @side_three > @side_two))
      return true 
    else 
      return false
    end
  end
  
  def equilateral?
    if  valid? && (@side_one == @side_two && @side_two == @side_three)
      return true
    end
  end
  
  def isosceles?
    if valid? && ((@side_one == @side_two && @side_one != @side_three) || (@side_two == @side_three && @side_two != @side_one) || (@side_one == @side_three && @side_three != @side_two))
      return true
    end
  end
  
  def inequality?
    if (@side_one + @side_two < @side_three) || (@side_two + @side_three < @side_one) || (@side_one + @side_three < @side_two)
      return true 
    end
  end
  
  def neg_or_no_size?
     if @side_one <= 0 || @side_two <=0 || @side_three <= 0
       return true 
     end
   end
  
  
  def kind 
    if @side_one <= 0 && @side_two <= 0 && @side_three <= 0
      raise TriangleError
    elsif (@side_one + @side_two <= @side_three) || (@side_two + @side_three <= @side_one) || (@side_one + @side_three <= @side_two)
      raise TriangleError
    else
      if equilateral?
        return :equilateral
      elsif isosceles?
        return :isosceles
      else valid?
        return :scalene
      end
    end
  end
  
  
  
  
  class TriangleError<StandardError
    
    def triangle_inequality
      "This triangle violates triangle inequality and is illegal"
    end
    
    def negative_sides
      "This triangle has a negative side and is illegal"
    end
    
    def no_size
      "One or more sides of this triangle has no size and is illegal"
    end
  end
end
