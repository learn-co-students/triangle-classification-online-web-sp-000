class Triangle
  
  class TriangleError < StandardError
    
  end
  
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
      raise TriangleError
    elsif @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    elsif @one == @two && @two > @three
      return :isosceles
    elsif @one == @three && @three > @two
      return :isosceles
    elsif @three == @two && @two > @one
      return :isosceles
    elsif @one == @two && @two == @three
      return :equilateral
    elsif @one != @two && @two != @three
      return :scalene
    end
  end
end
