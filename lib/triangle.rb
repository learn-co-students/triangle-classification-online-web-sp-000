class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <= 0 || (@x + @y) <= @z || (@y + @z) <= @x || (@x + @z) <= @y
      raise TriangleError
    else
      if @x == @y && @y == @z
        return :equilateral

      elsif @x == @y || @x == @z || @y == @z
        return :isosceles

      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
