class Triangle
attr_accessor :length_one, :length_two, :length_three

def initialize(length_one, length_two, length_three)
  @length_one = length_one
  @length_two = length_two
  @length_three = length_three
end

def kind
  if length_one <= 0 || length_two <= 0 || length_three <= 0
    raise TriangleError
  elsif length_one + length_two <= length_three || length_one + length_three <= length_two || length_two + length_three <= length_one
    raise TriangleError
  elsif length_one == length_two && length_two == length_three
    :equilateral
  elsif
    length_one == length_two || length_two == length_three || length_one == length_three
    :isosceles
  elsif
    length_one != length_two && length_two != length_three
    :scalene
  else
     raise TriangleError
  end
end
class TriangleError < StandardError
  # triangle error code
end
end

# write code here
