require 'pry'

class Triangle
  # write code here
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @sum1_2 = true if side1 + side2 > side3
    @sum1_3 = true if side1 + side3 > side2
    @sum2_3 = true if side2 + side3 > side1
  end
  
  def kind
    zero_sides = @sides.none?(0)
    positive_sides = @sides.all? do |side|
      side > 0
    end
    if (zero_sides && positive_sides && @sum1_3 && @sum1_2 && @sum2_3)
      if (@sides.uniq.size == 1)
        :equilateral
      elsif (@sides.uniq.size == 2)
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle. Please try again."
    end
  end

end





