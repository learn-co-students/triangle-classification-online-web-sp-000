class Triangle
  attr_accessor :a, :b, :c
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    triangle = [(a + b > c), (a + c > b), (b + c > a)]

    [a, b, c].each do |side|
      triangle << false if side <= 0
      raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end
end
