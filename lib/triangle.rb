class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    raise TriangleError if @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2 || @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 || @side_1 + @side_2 <= @side_3
      if @side_1 == @side_2 && @side_2 == @side_3
        @kind = :equilateral
      elsif @side_2 == @side_3 || @side_1 == @side_3 || @side_1 == @side_2 
        @kind = :isosceles
      elsif @side_1 != @side_3 && @side_1 != @side_2 
        @kind = :scalene
      end
    @kind
  end

  class TriangleError < StandardError
    def message
      "Invalid side dimensions!"
    end
  end
end