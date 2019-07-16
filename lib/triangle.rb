# class Triangle
#   attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene
#
#   def initialize(side_one, side_two, side_three)
#     @a = side_one
#     @b= side_two
#     @c = side_three
#   end
#
# def equ
#   def kind
#     if (@a == 0 || @b == 0 || @c == 0) || (((@a + @b) < @c) || ((@a + @c) < @b) || ((@b + @c) < @a))
#       raise TriangleError
#
#   elsif @a == @b && @a == @c
#     @equilateral
#
#   elsif @a == @b || @a == @c || @b == @c
#       @isosceles
#   else
#     @scalene
class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end
  end


class TriangleError < StandardError

def message
  "Not a real Triangle"
end

end
end
