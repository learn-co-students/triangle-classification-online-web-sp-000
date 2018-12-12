class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == 0 || side2 == 0 || side3 == 0
      raise TriangleError
    elsif side1 < 0 || side2 < 0 || side3 < 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError
    else
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError

#    def message1
#      "A triangle's side cannot be negative or nul"
#    end

#    def message2
#      "A triangle necessarily has three sides"
#    end

#    def message3
#      "Violating triangle inequality is illegal"
#    end

  end

end
