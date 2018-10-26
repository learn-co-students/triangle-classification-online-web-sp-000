require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def kind
    raise TriangleError unless valid_triangle?
    if equilateral?
      :equilateral
    elsif scalene?
      :scalene
    else
      :isosceles
    end
  end

  def valid_triangle?
    return true if ((x.positive? && y.positive? && z.positive?) && (x + y > z && z + y > x && z + x > y))
    return false
  end

  #types of triangles

  def equilateral?
    return true if ((self.x == self.y) && (self.y == self.z) && (self.x == self.z))
    return false
  end

  def scalene?
    return true if ((self.x != self.y) && (self.y != self.z) && (self.x != self.z))
    return false
  end


#ERROR SECTION
  class TriangleError < StandardError
    # triangle error code
  end

end
