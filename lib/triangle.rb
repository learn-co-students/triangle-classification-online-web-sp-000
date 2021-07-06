# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
# Further, each side must be larger than 0.

class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind 
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1 
    @side_2 = side_2 
    @side_3 = side_3 
  end 
  
  def triangle_valid_error 
    (side_1 + side_2) <= side_3 || (side_1 + side_3) <= side_2 || 
    (side_3 + side_2) <= side_1 || (side_1 * side_2 * side_3) == 0
  end 
  
  def tri_equilateral
    side_1 == side_2 && side_1 == side_3
  end 
  
  def tri_isosceles 
    side_1 == side_2 ||  side_1 == side_3 || side_2 == side_3
  end 
  
  def kind
    if triangle_valid_error 
      raise TriangleError
    elsif tri_equilateral 
      "equilateral".to_sym 
    elsif tri_isosceles 
      "isosceles".to_sym 
    else 
      "scalene".to_sym 
    end 
  end 
  
  class TriangleError < StandardError 
  end 
  
end



