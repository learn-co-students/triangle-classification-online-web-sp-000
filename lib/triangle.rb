class Triangle
  
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end
  
  def kind
    valid_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
       :isosceles
    else
      :scalene
  end
  end
  
  def valid_triangle
    if (x + y > z) && (x + z > y) && (y + z > x)  && x > 0 && y > 0 && z > 0 
      true 
    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError
  end
  
end

    # elsif 
  # else
  #   puts "theres an error"
  # end