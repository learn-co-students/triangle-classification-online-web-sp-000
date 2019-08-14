class Triangle
  attr_accessor :sideA, :sideB, :sideC
 def initialize(sideA, sideB, sideC)
   @sideA = sideA 
   @sideB = sideB
   @sideC = sideC
  end
  
  def kind 
    if sideA <= 0 || sideB <= 0 || sideC <= 0 || sideA >= sideB + sideC || sideB >= sideA + sideC || sideC >= sideA + sideB
      raise TriangleError
    elsif sideA == sideB && sideB == sideC
      :equilateral
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      :isosceles
    else 
      :scalene
  end
  end
    
  
    class TriangleError < StandardError
    end
end
