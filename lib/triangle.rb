class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def legal
    if self.a == self.b && self.a == self.c && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      :isosceles
    else self.a != b && self.a != self.c && self.b != self.c
      :scalene
    end
  end

  def kind
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      raise TriangleError
    elsif self.a + self.b <= self.c || self.a + self.c <= self.b || self.b + self.c <= self.a
      raise TriangleError
    else
      legal
    end
  end

  class TriangleError < StandardError
  end

end
