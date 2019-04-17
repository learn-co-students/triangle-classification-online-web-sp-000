require 'pry'

class Triangle

  attr_reader :x, :y, :z

    def initialize(x,y,z)
      @x = x
      @y = y
      @z = z
    end

    def kind
        validate
        if x == y && y == z
          :equilateral
        elsif x == y || y == z || z == x
          :isosceles
        else
          :scalene
        end
    end

    def validate
      if (x+y <= z || x+z <= y || y+z <= x)
        raise TriangleError
      elsif  (x <= 0 || y <= 0 || z <= 0)
        raise TriangleError
      end
    end

#more elegant
    #def validate_triangle
    #real_triangle = [(x + y > z), (x + z > y), (y + z > x)]
    #[x, y, z].each { |s| real_triangle << false if s <= 0 }
    #raise TriangleError if real_triangle.include?(false)
  #end

    class TriangleError < StandardError
    end
end
