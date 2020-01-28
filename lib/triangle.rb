require 'pry'

class Triangle
  # write code here

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind 
    # Use conditional logic to see if the triangle has equal sides
    # if 2 sides are equal return :equilateral
    # How do I represent the sides? 
    if @side_1 == 0 || @side_2 || 0 || @side_3 == 0
      raise TriangleError
    else 
      if @side_1 == @side_2 && @side_1 == @side_3 && @side_2 == @side_3 
        :equilateral
      elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3 
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError

  end

end
