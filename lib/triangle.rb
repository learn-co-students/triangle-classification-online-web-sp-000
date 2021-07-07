class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
     confirm_triangle
      if side1 == side2 && side1 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      elsif side1 != side2 && side1 != side3 && side2 != side3
        :scalene
    end
  end
  
  def confirm_triangle
      if side1 == 0 && side2 == 0 && side3 == 0 
      raise TriangleError
      elsif side1 < 0 || side2 < 0 || side3 < 0 
      raise TriangleError
      elsif (side1 + side2 <= side3) || (side1 + side3 <= side2) || (side2 + side3 <= side1)
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    "You are violating the laws of triangles!"
  end
  
end
