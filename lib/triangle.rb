require 'pry'
class Triangle
  # write code here
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sum1 = @side1 + @side2
    sum2 = @side2 + @side3
    sum3 = @side1 + @side3
    if @side1 <= 0 ||  @side2 <= 0 ||  @side3 <= 0 || sum1 <= @side3 || sum2 <= @side1 || sum3 <= @side2
         raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
       :equilateral
     elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
       :isosceles
     elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
       :scalene
    end

  end

  class TriangleError < StandardError
  end
end
