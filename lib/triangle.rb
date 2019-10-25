require "pry"
class Triangle
  # triangle code
  def initialize(sideA,sideB,sideC)
    @sideA = sideA 
    @sideB = sideB
    @sideC = sideC
  end
 
  def kind
    validate_triangle
    if @sideA == @sideB && @sideB == @sideC
      :equilateral
    elsif @sideA == @sideB || @sideA == @sideC || @sideB == @sideC
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    if @sideA <= 0
      raise TriangleError.new("SideA is #{@SideA}")
    end
    if @sideB <= 0
      raise TriangleError.new("SideB is #{@SideB}")
    end
    if @sideC <= 0
      raise TriangleError.new("SideA is #{@SideC}")
    end
    # triangle inequality
    raise TriangleError.new("Invalid Size") if @sideA + @sideB <= @sideC
    raise TriangleError.new("Invalid Size") if @sideA + @sideC <= @sideB
    raise TriangleError.new("Invalid Size") if @sideB + @sideC <= @sideA
  end
 
  class TriangleError < StandardError
  end
end