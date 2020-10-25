class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == 0 || b == 0 || c == 0
      raise TriangleError
    elsif a.negative?|| b.negative? || c.negative?
      raise TriangleError
    elsif (a + b) <= c || (a + c) <= b || (b + c) <= a
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b && a != c || a == c && a != b || b == c && b != a
      :isosceles
    elsif a != b && b!=c
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
