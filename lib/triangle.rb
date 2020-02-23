require 'pry'

class Triangle
  # write code here

  attr_accessor :a, :b, :C

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == 0 || @b == 0 || @c == 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
   end
end
