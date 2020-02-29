class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)

    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

    
  
  end
  
  def kind 

    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one == nil || @side_two == nil || @side_three == nil || @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_two + @side_three <= @side_one
      begin
        raise TriangleError
      end
    end
    
    if @side_one == @side_two && @side_one == @side_three && @side_two == @side_three
      :equilateral 
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles 
    else 
      :scalene
    end 

  end
  
  class TriangleError < StandardError 
    
  end 

end