class Triangle
  attr_accessor :side1, :side2, :side3, :lengths
  
  
    
  def initialize(side1,side2,side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
  @lengths = [side1, side2, side3].sort
  end 
  
  
  def kind 
     if lengths.any? { |length| length <= 0 } || lengths[0] + lengths[1] <= lengths[2] || lengths.any? == nil
       raise TriangleError
     elsif lengths.uniq.length == 1
        :equilateral
      elsif lengths.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
   
  
  class TriangleError < StandardError
    def message 
      "Not a triangle."
    end 
end 
end 
