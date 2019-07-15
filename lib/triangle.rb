require "pry"
class Triangle
  attr_accessor :side_a, :side_b, :side_c
  # :equilateral - An equilateral triangle has three equal sides and angles. It will always have angles of 60° in each corner.
  # :isosceles - An isosceles triangle can be drawn in many different ways. It can be drawn to have two equal sides and two equal angles or with two acute angles and one obtuse angle. It is easy to work out the missing angles of an isosceles triangle by looking for the angles that should be equal.
  # :scalene - A scalene triangle has three different angles and none of its sides are equal in length.

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind
    
    sides = [@side_a, @side_b, @side_c]
    
    if sides.any? {|side| side <= 0}
      raise TriangleError 
  
    end 
    
    if @side_a == @side_b && @side_b == @side_c
       :equilateral
    
       
    elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
       :scalene 
       
       
    elsif @side_a == @side_b || @side_a == @side_c || @side_c == @side_b
       :isosceles 
      
     
    end
    
     if @side_a < @side_b + @side_c || @side_b < @side_a + @side_c || @side_c < @side_b + @side_a 
     raise TriangleError
     end 
     
    
  end
    


    class TriangleError < StandardError
    end
end
