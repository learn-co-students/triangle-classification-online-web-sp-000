class Triangle
  
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c) 
    @a = a
    @b = b
    @c = c
  end 
  
  
  def kind 
    validate_triangle
    
    case  
    when a == b && b == c && a == c 
     :equilateral 
     when a == b || b == c || a == c
     :isosceles
    else
     :scalene
  end 
end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    raise TriangleError if !side 
    end
  end 

class TriangleError < StandardError 
  end 
end 

  
