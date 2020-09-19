class Triangle 

  def initialize(a, b, c)

    if a >= (b + c) || b >= (a + c) || c >= (a + b)
      raise TriangleError
    end
      
    if a <= 0 || b <= 0 || c <= 0
        raise TriangleError
      end
      
      if a == nil || b == nil || c == nil
        raise TriangleError
      end

     


      @a = a
      @b = b
      @c = c
    end
 

  
  
  def kind
    if @a == @b && @a == @c
      return :equilateral
    elsif @a == @b || @b == @c || @c == @a
      return :isosceles
    else 
      return :scalene
    end
  end
end
        



class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end 	
