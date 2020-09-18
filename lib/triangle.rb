class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a  
    @b = b  
    @c = c 
  end 

  def kind
    if a < 0 || b < 0 || c < 0
      begin
      raise TriangleError
      end
    elsif a == 0 || b == 0 || c == 0
      begin
      raise TriangleError
      end 
    elsif (a + b) <= c || (a + c) <= b || (b + c) <= a
      begin
        raise TriangleError
      end 
    end

    #The error condition goes BEFORE the rest of the code.

    if a == b && b == c && c == a
      :equilateral
    elsif a == b || b == c || c == a 
      :isosceles 
    elsif a != b && b != c && c != a 
      :scalene
    end 

    
  end 

  class TriangleError < StandardError

  end 
end
