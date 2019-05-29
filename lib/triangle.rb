class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end 
  
  def kind
    validate_triangle
    if @a == @b && @b == @c 
      :equilateral 
    elsif @a == @b || @b == @c || @a == @c 
      :isosceles 
    else 
      :scalene 
    end 
  end 
  
  def validate_triangle
    if !(@a + @b > @c && @a + @c > @b && @b + @c > @a)
      raise TriangleError 
    end 
    if !(@a > 0 || @b > 0 || @c > 0) 
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
  end 
end
