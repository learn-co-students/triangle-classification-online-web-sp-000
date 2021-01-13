class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    min, min2, max = [@a, @b, @c].sort
    if min < 0 ||  min + min2 <= max
      raise TriangleError
    end

    if @a == @b && @b == c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

    end
end
