class Triangle

  def initialize(a, b, c)
    @triangle_sides = []
    @triangle_sides << a
    @triangle_sides << b
    @triangle_sides << c
  end

  def kind#check for the the side measurements and then return its type as a string
    if (a == b) && (a == c)
      :equilateral
    elsif (a == b) || (a == c) || (b == c)
      :isosceles
    else
      :scalene
    end
  end
end
