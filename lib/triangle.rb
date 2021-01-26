class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def sidesAreEqual?
    side_1 == side_2 && side_2 == side_3 && side_3 == side_1
  end

  def atLeastTwoAreEqual?
    side_1 == side_2 || side_2 == side_3 || side_3 == side_1
  end

  def invalid?
    side_1 <= 0 || side_2 <= 0 || side_3 <= 0
  end

  def illegal?
    (side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2)
  end

  def kind
    if invalid? || illegal?
      raise TriangleError
    elsif sidesAreEqual?
      :equilateral
    elsif atLeastTwoAreEqual?
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle!"
    end
  end
end
