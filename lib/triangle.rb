class Triangle
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end
  
  def kind
    if @length_3 == 0 || @length_2 == 0 || @length_1 == 0
      raise TriangleError
    elsif (@length_1 + @length_2) <= @length_3 || (@length_3 + @length_2) <= @length_1 || (@length_1 + @length_3) <= @length_2
      raise TriangleError
    elsif @length_3 == @length_2 && @length_2 == @length_1
      :equilateral
    elsif @length_1 == @length_2 || @length_3 == @length_2 || @length_3 == @length_1
      :isosceles
    else
      :scalene
    end
  end
  
  # def validation
  #   if @length_3 == 0 || @length_2 == 0 || @length_1 == 0
  #     raise TriangleError
  #   elsif (@length_1 + @length_2) <= @length_3 || (@length_3 + @length_2) <= @length_1 || (@length_1 + @length_3) <= @length_2
  #     raise TriangleError
  #   end
  # end

  class TriangleError < StandardError
    
    def zeroLengthTriangleMessage
      "This is not a valid triangle, length must be greater than 0."
    end
    
    def triangleInequalityMessage
      "The sum of two sides of the triangle must be greater than the third side."
    end
    
  end
    
end


    # :equilateral when :length_3 == :length_2 && :length_2 == :length_1
    # :isosceles when :length_1 == :length_2 || :length_3 == :length_2 || :length_3 == :length_1
    # :scalene when :length_1 != :length_2 && :length_2 != :length_3