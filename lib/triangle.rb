require 'pry'
class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    elsif @one >= @two + @three || @two >= @one + @three || @three >= @two + @one
      raise TriangleError
    elsif @one == @two && @two == @three
      :equilateral
    elsif @two == @three || @one == @three || @one == @two
      :isosceles
    elsif @two != @three || @one != @three || @one != @two
      :scalene
    end
  end


  class TriangleError < StandardError
  end
end
