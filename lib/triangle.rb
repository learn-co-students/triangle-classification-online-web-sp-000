class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 <= 0 || @l2 <= 0 || @l3 <= 0 #all sides are positive
      raise TriangleError
    elsif @l1 + @l2 <= @l3 || @l1 + @l3 <= @l2 || @l2 + @l3 <= @l1 #check for triangle inequality
      raise TriangleError
    elsif @l1 == @l2 && @l2 == @l3
      :equilateral #equilateral have equal sides
    elsif @l1 == @l2 || @l2 == @l3 || @l3 == @l1
      :isosceles  #isoscles have two equal sides
    elsif @l1 != @l2 && @l2 != @l3
      :scalene #scalene no equal sides
    end  
  end

  class TriangleError < StandardError
  end
end
