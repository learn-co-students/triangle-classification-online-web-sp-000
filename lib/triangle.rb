class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      begin
        raise TriangleError
        rescure TriangleError => error
        puts error.message
      end
    end
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    else
      if (@side1 == @side2) || (@side2 == @side3) || (@side3 == @side1)
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "ERROR:"
    end
  end
end
