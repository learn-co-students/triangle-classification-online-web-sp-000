class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
      elsif (side1 + side2) <= side3 || (side1 + side3) <= side2 || (side2 + side3) <= side1
    
      raise TriangleError
    else
      self.side1 = side1
      self.side2 = side2
      self.side3 = side3
    end
    
  end
  
  def kind
    if self.side1 == self.side2 && self.side1 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
