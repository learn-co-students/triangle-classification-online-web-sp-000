class Triangle
  attr_accessor :side_a, :side_b, :side_c 
  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c

  end
  
  def kind 
    a = @side_a
    b = @side_b
    c = @side_c

    if(a+b<=c || a+c<=b || b+c<=a)
      raise TriangleError
    end
    if(a==b && b==c)
      return :equilateral
    elsif(a==b || b==c || a==c)
      return :isosceles
    else  
      return :scalene
    end 
  end
    
  class TriangleError < StandardError
    def message 
      return "invalud triangle dimensions"
    end
  end
end
