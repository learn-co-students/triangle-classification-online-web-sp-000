class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize (side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    case 
      when @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
        raise TriangleError
      when @side_1 + @side_2 <= @side_3
        raise TriangleError
      when @side_3 + @side_2 <= @side_1
        raise TriangleError
      when @side_1 + @side_3 <= @side_2
        raise TriangleError
      when @side_1 == @side_2 && @side_2 == @side_3
        return :equilateral
      when @side_1 == @side_2 && @side_2 != @side_3
        return :isosceles
      when @side_2 == @side_3 && @side_3 != @side_1
        return :isosceles
      when @side_1 == @side_3 && @side_3 != @side_2
        return :isosceles
      when @side_1 != @side_2 && @side_2 != @side_3
        return :scalene
    end
  end
  
  #Custom Error:
  class TriangleError < StandardError
    
  end
  
end
