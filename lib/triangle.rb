require 'pry'
class Triangle

  def initialize(a, b, c)
    @triangle_sides = []
    @a = a
    @b = b
    @c = c
  end

  def triangle_one
    @a.positive? && @b.positive? && @c.positive?
  end

  def triangle_two
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end


  def kind#check for the the side measurements and then return its type as a string
    if triangle_one == true && triangle_two == true
      puts true
    else
      raise TriangleError
    end

    if (@a == @b) && (@a == @c)
      :equilateral
    elsif (@a == @b) || (@a == @c) || (@b == @c)
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError

  end
end
