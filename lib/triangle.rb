class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    if !valid?
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end
  
  def equilateral?
    self.side1 == self.side2 && self.side1 == self.side3
  end
  
  def isosceles?
    self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
  end
  
  def scalene?
    self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
  end
  
  def valid?
    positive_lengths? && triangle_inequality?
  end
  
  def positive_lengths?
    self.side1 > 0 && self.side2 > 0 && self.side3 > 0
  end
  
  def triangle_inequality?
    (self.side1 + self.side2) > self.side3 && (self.side1 + self.side3) > self.side2 && (self.side2 + self.side3) > self.side1
  end
  
  class TriangleError < StandardError
    
  end
end
