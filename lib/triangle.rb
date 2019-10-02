require "pry"
class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize (side_a, side_b, side_c)

    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    
    if @side_b && @side_a == @side_c && @side_b == @side_c
      :equilateral
    elsif
      @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
       :isosceles
    elsif
      @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      :scalene
    else
      @side_a == 0 && @side_b == 0 && @side_c == 0
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
