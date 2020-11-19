require 'pry'

class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side3 = side3
    @side2 = side2
    @side1 = side1
    @tri = [@side1, @side2, @side3].sort!
  end
  
  def kind
    if @tri.any? {|side| side <= 0} || @tri[0] + @tri[1] <= @tri[2]
      raise TriangleError
    else
      #binding.pry
      return :equilateral if @tri[0] == @tri[2]
      return :isosceles if (@tri[2] == @tri[1] || @tri[1] == @tri[0]) && @tri[0] != @tri[2]
      return :scalene if @side3 != @side1 && @side1 != @side2 && @side2 != @side3
    end
  end
  
  class TriangleError < StandardError
    
  end
end
