class Triangle
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    negative_sides = @x <= 0 || @y <= 0 || @z <= 0
    invalid_sides = (@x + @y) <= @z || (@y + @z) <= @x || (@x + @z) <= @y
    all_equal_sides = @x == @y && @x == @z
    two_equal_sides = @y == @z || @x == @z || @x == @y

    if negative_sides || invalid_sides
      raise TriangleError
    elsif all_equal_sides
      :equilateral
    elsif two_equal_sides
      :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
    "This is not a valid triangle!"
  end
end