require 'pry'

class Triangle

  attr_accessor :x, :y, :z, :kind

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if (x + y) <= z || (x + z) <= y || (z + y) <= x || (x * y * z) == 0
      begin
        raise TriangleError
        puts error.message
      end

    elsif x == y && x == z
      self.kind = :equilateral

    elsif x == y || x == z || y == z
      self.kind = :isosceles

    else
      self.kind = :scalene
    end
  end

end

 class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
  end
