class Triangle
  def initialize(side_1,side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
        raise TriangleError

    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    else
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif
        @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
        :isosceles
      elsif
        @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
        :scalene
      end
    end
  end
  class TriangleError < StandardError
    def message
      "The sume of the lengths of any two sides of a triangle always exceeds the length of the third side. Each side must be larger than 0."
end
end
end
