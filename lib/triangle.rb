class Triangle
 def initialize(one,two,three)
   @one = one
   @two = two
   @three = three
   @kind
 end
 
 def kind
   if @one == @two && @two == @three && @one == @three && @one != 0 && @two != 0 && @three != 0
   :equilateral
   elsif @one == @two && @one != @three && @two != @three && ((@one + @two) > @three && (@one + @three) > @two && (@two + @three) > @one) || @two == @three && @one != @three && @one != @two && ((@one + @two) > @three && (@one + @three) > @two && (@two + @three) > @one)|| @one == @three && @one != @two && @two != @three && ((@one + @two) > @three && (@one + @three) > @two && (@two + @three) > @one)
   :isosceles
   elsif @one != @two && @one != @three && @two != @three && (@one && @two && @three) > 0 && ((@one + @two) > @three && (@one + @three) > @two && (@two + @three) > @one)
   :scalene
   else
      raise TriangleError
   end
 end
   class TriangleError < StandardError
   end
end
