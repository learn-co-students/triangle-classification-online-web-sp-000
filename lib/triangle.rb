class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
    @sides.sort!
  end 

  def kind
    if @sides.any? {|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError 
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end 
  end 

  class TriangleError < StandardError
  end 
end
