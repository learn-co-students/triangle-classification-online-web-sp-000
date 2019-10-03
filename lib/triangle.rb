require "pry"
class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def valid?
    sum_1 = @side_a + @side_b
    sum_2 = @side_b + @side_c
    sum_3 = @side_a + @side_c
    if
      @side_a == 0 && @side_b == 0 && @side_c == 0
      raise TriangleError
    elsif
      @side_a < 0 || @side_b < 0 || @side_c < 0
      raise TriangleError
    elsif
      sum_1 <= @side_c || sum_2 <= @side_a || sum_3 <= @side_b
      raise TriangleError
    end
  end

  def kind
    if valid?
    elsif
      @side_a == @side_b && @side_a == @side_c && @side_b == @side_c
      :equilateral
    elsif
      @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
       :isosceles
    elsif
      @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
