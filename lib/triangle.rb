class Triangle
  # write code here
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if side1 > 0 && side2 > 0 && side3 > 0
      if (side1 + side2) > side3 && (side1 + side3) > side2 && (side2 + side3) > side1
        if side1 == side2 && side1 == side3 && side2 == side3
          return :equilateral
        end
        if side1 == side2 || side1 == side3 || side2 == side3
          return :isosceles
        end
        if side1 != side2 && side1 != side3 && side2 != side3
          return :scalene
        end
      else
        raise TriangleError  
      end
    else
      raise TriangleError
    end
  end
  
  
  class TriangleError < StandardError
    def message
      "The lengths provided do not construct a valid triangle."
    end
  end
  
end
