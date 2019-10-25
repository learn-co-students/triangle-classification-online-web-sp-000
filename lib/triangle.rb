class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene
  
  def initialize(side1 = 0, side2 = 0, side3 = 0)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    kind
  end
  
  def kind
    validate
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      return :scalene
    else
      return :isosceles
    end
  end

def validate
  if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
        raise TriangleError
        puts TriangleError.message
      elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
        raise TriangleError
        puts TriangleError.message
    end
  end
  
  class TriangleError < StandardError
    def message
      "Dis ain't a triangle, yo."
    end
end

end
