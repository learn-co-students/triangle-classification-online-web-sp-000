class Triangle
  # write code here
  attr_accessor :a, :b, :c, :kind
  def initialize (a, b, c)
    @sides = []
    @sides.unshift(a, b, c)
    @sides = @sides.sort

    @a, @b, @c = @sides

    if (@a + @b) <= @c
      raise TriangleError
    end

    @kind = self.kind

  end

  def kind
    if @a == @b
@kind = :equilateral
    elsif @a < @b && @b == @c
@kind = :isosceles
    elsif @b != @C
@kind = :scalene

    end

  end

  class TriangleError < StandardError

  end

end
