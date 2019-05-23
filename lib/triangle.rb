class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
   @side1 = side1
   @side2 = side2
   @side3 = side3
  end
  
  def kind
    #if side1 < 0 
    
    if side1 == side2 && side2 == side3
     kind = :equilateral
   
   #elsif
     #side1 == side2 || side1 == side3 || side2 == #side3
     #triangle.isosceles
   #elsif
   # begin 
    #raise TriangleError
    #rescue TriangleError
    #end
  end
end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end


