# class Triangle
#   # write code here
#   attr_reader :side_a, :side_b, :side_c 

#   def initialize(side_a, side_b, side_c)
#     @side_a = side_a
#     @side_b = side_b
#     @side_c = side_c
#   end

#   def kind
#     if side_a == side_b && side_b == side_c
#       :equilateral
#     elsif side_a == side_b || side_b == side_c || side_a == side_c
#       :isosceles
#     else
#       :scalene
#     end
#   end

  # def validate_triangle
  #   real_triangle = [(side_a + side_b > side_c), (side_a + side_c > side_b), (side_b + side_c > side_a)]
  #   [side_a, side_b, side_c].each do |side|
  #     real_triangle << false if side <= 0
  #   raise TriangleError if real_triangle.include?(false)
  #   end
  # end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each do |side|
#     real_triangle << false if side <= 0 
#     raise TriangleError if real_triangle.include?(false)
#     end
#   end

#   class TriangleError < StandardError
#   end

# end

class Triangle
  attr_reader :a, :b, :c
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
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end