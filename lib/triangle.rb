class Triangle
  attr_reader :sides
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
  end

  class TriangleError < StandardError
  end

  def kind
    raise TriangleError if sides[0] <= 0 or sides[0] + sides[1] <= sides[2]

    case @sides.uniq.count
    when 1
      return :equilateral
    when 2
      return :isosceles
    when 3
      return :scalene
    end
  end
end
