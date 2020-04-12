class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end   

  def kind
    validate 
    if a == b && b == c 
      :equilateral  
    elsif b == c  || a == c || a == b  
      :isosceles     
    elsif a != b && b != c 
      :scalene  
    else 
      raise TriangleError  
    end 
  end   

  def validate
    validate_triangle = a + b > c && b + c > a && c + a > b 
    if  a <= 0 || b <= 0 || c <= 0 || !validate_triangle
      raise TriangleError  
    end   
  end   
  class TriangleError < StandardError
  end  
end
