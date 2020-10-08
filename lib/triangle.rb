class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
      
  end

  def validate_triangle
    # sum of the lengths of any 2 sides of a triangle always exceeds the length of the third side
    # principle of Triangle inequality
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      triangle << false if side <= 0
    raise TriangleError if triangle.include?(false)
    end
  end

    
    
  
  class TriangleError < StandardError
  end
end
