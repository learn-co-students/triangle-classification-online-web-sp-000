class Triangle
  attr_reader :a, :b, :c
  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
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
  
  #def validate_triangle
  #  real_triangle = [a, b, c].sort
  #  if (real_triangle[0] <= 0) || (real_triangle[2] > (real_triangle[0] + real_triangle[1]))
    #  raise TriangleError
    #end
  #end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
