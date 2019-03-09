class Triangle
  
  def initialize(a,b,c)
    @sides = [a,b,c]
  end
  
  def kind
    a,b,c = @sides
    if (@sides.select {|x| x <= 0}).length>0 || a+b<=c || c+a<=b || b+c<=a then
      raise TriangleError
    elsif @sides.uniq.length == 1
      return :equilateral
    elsif @sides.uniq.length == 2
      return :isosceles
    end
    return :scalene
    
  end
  
  class TriangleError < StandardError
    
  end
end
