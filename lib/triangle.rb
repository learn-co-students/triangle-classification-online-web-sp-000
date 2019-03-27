

class Triangle
  def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end
class TriangleError < StandardError
  def message
    "Action Bronson, No matter what, you're going to get a comparison to something. I Gave You A Grace Period, but that SportsNation triangular mentioning of my name was an ERROR!"
  end
end
def kind
  if @side1 == 0 || @side2 == 0 || @side3 == 0
    raise TriangleError
  elsif @side1 < 0 || @side2 < 0 || @side3 < 0
    raise TriangleError
  elsif (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side3 + @side2) <= @side1
    raise TriangleError
  elsif @side1 == @side2 && @side2 == @side3
    :equilateral
  elsif @side2 == @side3 || @side1 == @side3 || @side1 == @side2
    :isosceles
  elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
    :scalene
  end
end
end
