class Triangle
  
  class TriangleError < StandardError
    
  end
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || @a >= @b + @c || @b >= @a + @c || @c >= @a + @b
      raise TriangleError
      elsif @a == @b && @a == @c
      :equilateral
      elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
  
end