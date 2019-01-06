require 'pry'

class Triangle
  
  attr_accessor :side_a, :side_b, :side_c, :kind 
  
  
 class TriangleError < StandardError
  end
  
  
  def initialize(side_a,side_b,side_c)
    @side_a = side_a 
    @side_b = side_b 
    @side_c = side_c 
    
    if side_a == 0 && side_b == 0 && side_c == 0 
     @kind = :invalid
    
    elsif side_a < 0 || side_b < 0 || side_c < 0 
      @kind = :invalid
      
    elsif side_a >= (side_b + side_c) || side_b >= (side_c + side_a) || side_c >= (side_a + side_b)
      @kind = :invalid 
    
    elsif side_a == side_b && side_b == side_c && side_a != 0 && side_b != 0 && side_c != 0
      @kind = :equilateral 
    
    elsif side_a == side_b || side_b == side_c || side_c == side_a 
      @kind = :isosceles
      
    elsif side_a != side_b && side_b != side_c && side_c != side_a 
      @kind = :scalene
  

  end
end

 def kind
    if @kind == :invalid
      raise TriangleError 
    else 
    @kind 
  end 
end
  


end

test = Triangle.new(0,0,0)


