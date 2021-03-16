class Triangle
  
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c) 
    @a = a
    @b = b
    @c = c
    
  def kind 
    case  
 
    when a == b && b == c && a == c 
     :equilateral
     when a == b || b == c || a == c
     :isosceles
    else
     :scalene
    end
  end 
end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    raise TriangleError if !side 
    rescue TriangleError => error
    puts error.message 
    end
end 

class TriangleError < StandardError 
  def message 
    "all sides of triangle must be >= 0 and there must be three sides" 
  end 
end 
end 
  
