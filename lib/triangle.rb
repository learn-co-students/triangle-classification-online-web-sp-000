class Triangle
  attr_accessor :a, :b, :c, :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0 || (a + b) <= c || (a + c) <= b || (b + c) <= a
      raise TriangleError
    elsif a == b && b == c && c == a
      return :equilateral
    elsif a != b && b != c && c != a
      return :scalene
    elsif a == b || b == c || a == c
      return :isosceles

    end
  end

  class TriangleError < StandardError

  end


end
