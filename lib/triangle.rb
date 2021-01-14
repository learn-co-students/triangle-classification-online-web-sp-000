class Triangle
  
  attr_reader :s1, :s2, :s3 
  
def initialize(s1,s2,s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
  
  @sides = [@s1, @s2, @s3]

end


def kind
  real_triangle
    if (@s1 == @s2) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s1 == @s3) || (@s2 == @s3)
      :isosceles
    else 
      :scalene
     end
   end
  
  
  
  def real_triangle
    if @sides.any?{|side| side == 0} || ((@s1 + @s2) <= @s3) || @sides.any?{|side| side <= 0} || ((@s1 + @s3) <= @s2) || ((@s2 + @s3) <= @s1)
      raise TriangleError
    end
  end
  
  #|| ((@s1 + @s2) <= @s3) || sides.all?{|side| side = 0}
      #raise TriangleError
 
  
class TriangleError < StandardError
end

end