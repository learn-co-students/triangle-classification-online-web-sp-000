class Triangle
  # triangle code
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    triangle_test = [@side_1, @side_2, @side_3].sort
    if !(triangle_test[0] + triangle_test[1] > triangle_test[2])
      raise TriangleError
    end

    case [@side_1, @side_2, @side_3].uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    else
      TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
    end
  end
end
