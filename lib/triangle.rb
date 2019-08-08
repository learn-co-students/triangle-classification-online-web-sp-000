require "pry"
class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    valid_sides = @side1 > 0 && @side2 > 0 && @side3 > 0
    inequality = (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
    equilateral = @side1 == @side2 && @side1 == @side3
    isosceles = (@side1 == @side3 && @side2 != @side1) || (@side2 == @side3 && @side1 != @side2) || (@side1 == @side2 && @side1 != @side3)
    scalene = @side1 != @side2 && @side2 != @side3

    if valid_sides == false || (inequality == false)
      raise TriangleError
    end
    if equilateral
      return :equilateral
    elsif isosceles
      return :isosceles
    elsif scalene
      return :scalene
    end

  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "This triangle sucks"
    end
  end
end
