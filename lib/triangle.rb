class Triangle

  def initialize(side1, s2, s3)
     @side1 = side1
     @s2 = s2
     @s3 = s3
   end
    def kind
     negative_sides = @side1 <= 0 || @s2 <= 0 || @s3 <= 0
     invalid_sides = (@side1 + @s2) <= @s3 || (@s2 + @s3) <= @side1 || (@side1 + @s3) <= @s2
     all_equal_sides = @side1 == @s2 && @side1 == @s3
     two_equal_sides = @s2 == @s3 || @side1 == @s3 || @side1 == @s2
      if negative_sides || invalid_sides
       raise TriangleError
     elsif all_equal_sides
       :equilateral
     elsif two_equal_sides
       :isosceles
     else :scalene
     end
   end
    class TriangleError < StandardError
     "This is not a valid triangle!"
   end
  class TriangleError < StandardError
    # triangle error code
  end
end
