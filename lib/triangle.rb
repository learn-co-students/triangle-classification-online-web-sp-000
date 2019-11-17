require 'pry'

class Triangle
  attr_accessor :kind

  def initialize(side1, side2, side3)
    if side1 == 0  && side2 == 0 && side3 == 0 
      raise TriangleError
    elsif side1 < 0 || side2 < 0 || side3 < 0
      raise TriangleError
    elsif #the sum of any two sides is less than or equal to the remaining side 
          side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      self.kind = :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      self.kind = :isosceles
    elsif side1 != side2 && side2 != side3 && side1 != side3
      self.kind = :scalene
    end
  end 
    
  class TriangleError < StandardError
  end 
  
#  def kind(side1, side2, side3)

#  end

end
