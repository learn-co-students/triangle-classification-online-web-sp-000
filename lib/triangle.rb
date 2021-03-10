class Triangle
  
 def initialize(side1, side2, side3)
   @side1 = side1
   @side2 = side2
   @side3 = side3
 end 
 
 def kind
   if @side1 == 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
    raise TriangleError
   elsif @side1 == @side2 && @side2 == @side3
     :equilateral 
   elsif  @side1 == @side2 || @side2 == @side3 || @side3 == @side1
     :isosceles
    else @side1 != @side2 && @side2 != @side3 && @side1 != @side3
    :scalene
  end 
 end 
 class TriangleError < StandardError
 end 
end
