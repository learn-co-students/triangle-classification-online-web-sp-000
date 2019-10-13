require 'pry'
class Triangle
 attr_accessor :side_1, :side_2, :side_3
 
 def initialize(side_1, side_2, side_3)
   @side_1 = side_1
   @side_2 = side_2
   @side_3 = side_3
 end
 
 def kind
   validate_triangle
   if side_1 == side_2 && side_2 == side_3
     :equilateral
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
     :isosceles
    else 
      :scalene
    end
  end
  
  def validate_triangle
    binding.pry
    if side_1 + side_2 > side_3
      raise TriangleError 
 end
 end
 end

class TriangleError < StandardError
  #if sum of a + b > c, or sum of a + c > b, or sum of b + c > a, raise error
  #if any side is <= 0, raise error
end