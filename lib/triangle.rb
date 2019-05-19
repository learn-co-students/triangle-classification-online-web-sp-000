class Triangle

  attr_reader :triangle
  def initialize(side1, side2, side3)
    @triangle = [side1, side2, side3].sort
  end

  class TriangleError < StandardError
  end

  def kind
    raise TriangleError if triangle[0] <= 0 or triangle[0] + triangle[1] <= triangle[2]

    case @triangle.uniq.count
    when 1
      return :equilateral
    when 2
      return :isosceles
    when 3
      return :scalene
    end
  end
end
