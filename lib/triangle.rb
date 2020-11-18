class Triangle
 attr_accessor :left_side, :right_side, :bottom
 
 def initialize(left_side, right_side, bottom)
   @left_side = left_side
   @right_side = right_side
   @bottom = bottom
 end
 
 def kind
   #raises TriangleError if any side is less than or equal to zero
   if @left_side <= 0 || @right_side <= 0 || @bottom <= 0
     raise TriangleError
     
  #raises error if violates triange inequality
    elsif @left_side + @right_side <= @bottom || @right_side + @bottom <= @left_side || @left_side + @bottom <= @right_side
      raise TriangleError
      
   #determing if equilateral
   elsif @left_side == @right_side && @right_side == @bottom
     :equilateral
     
    #determining if isosceles with last two sides equal
    elsif @right_side == @bottom && @left_side != @bottom
      :isosceles
      
    #determining if isosceles with first and last sides equal
    elsif @left_side == @bottom && @right_side != @bottom
      :isosceles
      
    #determining if isosceles with first and last sides equal
    elsif @left_side == @right_side && @left_side != @bottom
      :isosceles
    
    #determining if scalene
    elsif @left_side != @bottom && @bottom != @right_side && @left_side != @right_side
      :scalene
   end
 end
 
 class TriangleError < StandardError
 end
 
end
