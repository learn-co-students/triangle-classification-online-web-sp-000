class Triangle
  # write code here
  
 def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind 
    
    @sides = (@side_a + @side_b + @side_c) / 2.0
    @test = (@sides - @side_a) * (@sides - @side_b) * (@sides - @side_c)
     
    
    if (@side_a <= 0 || @side_b <= 0 || @side_c <= 0 || @test <= 0)
      begin
        raise TriangleError
      end
    elsif @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      :isosceles
    else
      :scalene
    end
    
  end
  
  class TriangleError < StandardError
  end
  
end
