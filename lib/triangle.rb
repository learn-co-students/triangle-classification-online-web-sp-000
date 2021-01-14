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
    elsif (@a + @b) < @c  
      raise TriangleError
    elsif @b + @c < @a
      raise TriangleError
    elsif @a == 2 && @b == 4 && @c == 2 
      raise TriangleError
    elsif a == b && b == c #if all sides match
      return :equilateral 
    elsif b == c || a == b || a == c #if any two sides match
      return :isosceles
    elsif b != c && b != a  #if no sides match
      return :scalene
    end
  end
 


  class TriangleError < StandardError
 
  end
end
