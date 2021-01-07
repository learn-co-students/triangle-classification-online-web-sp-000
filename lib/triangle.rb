class Triangle
  # write code here
  attr_accessor :a, :b, :c, :sorted

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sorted = [a, b, c].sort
  end

  def kind
    if (@a>0 && @b>0 && @c>0) && (@sorted[0] + @sorted[1] > @sorted[2])
      if (@a == @b && @b == @c)
        :equilateral
      elsif (@a == @b || @a == @c || @b == @c)
        :isosceles
      elsif (@a != @b && @b != @c)
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end
end
