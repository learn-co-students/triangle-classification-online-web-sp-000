require 'pry'

class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2 
    @side_3 = side_3
  end
  
  def kind 

    raise TriangleError if side_1 <= 0.to_f || side_2 <= 0.to_f || side_3 <= 0.to_f
    raise TriangleError if side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
      
    equilateral? || isosceles? || scalene?
    
  end
  
  def equilateral?
    if side_1 == side_2 && side_2 == side_3 
     :equilateral
    end
  end
  
  def isosceles?
    if side_1 == side_2 || side_1 == side_3 || side_2 == side_3
    :isosceles
    end
  end
  
  def scalene?
    if side_1 != side_2 || side_1 != side_3 || side_2 != side_3
     :scalene
    end
  end
    
  
  class TriangleError < StandardError
  end
  
end
