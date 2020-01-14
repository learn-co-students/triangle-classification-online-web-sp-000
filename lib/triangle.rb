class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # raise custom error (TriangleError) if the triangle is invalid.
  # Types: :equilateral, :isosceles, :scalene
  # Valid: The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
  # Valid: each side must be larger than 0
  def kind()
    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      raise TriangleError
    elsif (@side1+@side2 <= @side3) || (@side1+@side3 <= @side2) || (@side2+@side3 <= @side1)
      raise TriangleError
    else
      if (@side1 == @side2) && (@side2 == @side3)
          :equilateral
        elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
          :isosceles
        elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
          :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
