class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c && c == a
      return :equilateral
    elsif a == b || b == c || a == c
      return :isosceles
    else
      return :scalene
    end
  end

  def validate_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      triangle << false if side <= 0
    raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
