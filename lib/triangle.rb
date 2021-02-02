class Triangle
  attr_accessor :side1, :side2, :side3
  attr_reader :iscoceles, :equilateral, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind
    #given 3 sides, this method should return what type of triangle is being inputted
    #the boundaries of this should be that all sides must be larger than 0 and that two sides of a triangle must exceed the length of the third 
    if side1 <= 0 || side2 <= 0 || side3 <=0 #if any side is less than or equal to 0, raise an error 
      raise TriangleError
    elsif (side1 + side2 <= side3) || (side3 + side1 <= side2) || (side2 + side3 <= side1) #triangle inequality check, raise error
    raise TriangleError
    elsif (side1 == side2 && side1 != side3) || (side1 == side3 && side1 != side2) || (side2 == side3 && side2 != side1)
      return :isosceles
      
    elsif (side1 == side2 && side1 == side3)
      return :equilateral 
    
    elsif (side1 != side2 && side2 != side3 && side1 != side3)
      return :scalene
    end
  end 
  
  class TriangleError < StandardError
   def message
     "a side of a triangle can not be 0...or less than 0 for that matter."
    end
  end
end
