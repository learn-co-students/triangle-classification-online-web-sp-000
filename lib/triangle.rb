class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && a == c && a.positive?
      :equilateral
    elsif a == b && a != c || a == c && a != b || b == c && b != a
      :isosceles
    elsif a != b && b!=c
      :scalene
    elsif a == 0 || b == 0 || c == 0
      begin
        raise TriangleError
      rescue TriangleError
      end
    elsif a.negative?|| b.negative? || c.negative?
      begin
        raise TriangleError
      rescue TriangleError => error
      #end
    else (a + b) < c || (a + c) < b || (a + c) < b #sides violating the triangle inequality
      begin
        raise TriangleError
      rescue TriangleError
      end
    end
  end

  class TriangleError < StandardError
    nil
  end

end
