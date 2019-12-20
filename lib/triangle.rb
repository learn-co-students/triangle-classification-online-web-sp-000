class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind 
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1 
    @side_2 = side_2 
    @side_3 = side_3 
  end 
  
  # The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.

  # Further, each side must be larger than 0.
  
  def kind
    if (@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || 
      (@side_3 + @side_2) <= @side_1 || (@side_1 * @side_2 * @side_3) == 0
      raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      "equilateral".to_sym 
    elsif @side_1 == @side_2 ||  @side_1 == @side_3 || @side_2 == @side_3 
      "isosceles".to_sym 
    else 
      "scalene".to_sym 
    end 
  end 
  
  class TriangleError < StandardError 
  end 
  
end



