class Triangle
  attr_accessor :kind, :a, :b, :c
  
   
  def initialize(a,b,c)
    @a = a
    @b = b 
    @c = c
  end 

  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    elsif a == b && b == c 
      return :equilateral 
    elsif b == c || a == b || a == c 
      return :isosceles
    elsif b != c && b != a
      return :scalene
    end
  end

  class TriangleError < StandardError
 
  end
end
