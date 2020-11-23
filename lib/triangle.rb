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
    elsif self.side1 == self.side2 && self.side2 == self.side3
      return :equilateral
    elsif self.side1 == self.side2 || self. side1 == self.side3 || self.side2 == self.side3
      return :isosceles
    else
      return :scalene
    end
  end

  def valid?
    if self.side1 > 0 && self.side2 > 0 && self.side3 > 0
      if self.side1 + self.side2 > self.side3 && self.side1 + self.side3 > self.side2 && self.side2 + self.side3 > self.side1
        true
      else
        false
      end
    else
      false
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
