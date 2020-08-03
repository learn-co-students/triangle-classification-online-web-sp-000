class Triangle

attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

def initialize(side_one, side_two, side_three)
@side_one = side_one
@side_two = side_two
@side_three = side_three
end

def kind
  if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      raise TriangleError
  elsif @side_one == @side_two && @side_two == @side_three
    :equilateral
  elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
    :isosceles
  else
    :scalene
  end
end

class TriangleError < StandardError
  def message
    "The lengths of your triangle's sides must all be greater than 0. The sum of two sides must always be greater than the third side."
  end
end

end
