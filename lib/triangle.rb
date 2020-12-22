class Triangle
  
  attr_accessor :side1, :side2, :side3

  @sides = []
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end
  
  def kind
    if(illegal? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
    end
  end
  
  def illegal?
    @sides.each do |side|
      if(side <= 0)
        true 
      end 
    end
  end
  
  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end
  
  def scalene?
    (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
  end
  
  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end
  
  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end
  
  class TriangleError < StandardError
    
  end
  
end
