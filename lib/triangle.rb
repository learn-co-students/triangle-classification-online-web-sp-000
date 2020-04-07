class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    lengths = [@length_1, @length_2, @length_3]
    real_triangle = [(@length_1 + @length_2 > @length_3), (@length_1 + @length_3 > @length_2), (@length_2 + @length_3 > @length_1)]

    if lengths.any? { |length| length <= 0 }
      raise TriangleError
    elsif real_triangle.include?(false)
      raise TriangleError
    elsif @length_1 == @length_2 && @length_2 == @length_3
      :equilateral
      #if any two lengths are equal but the third is not
    elsif @length_1 == @length_2 && @length_2 != @length_3 || @length_2 == @length_3 && @length_3 != @length_1 || @length_1 == @length_3 && @length_3 != @length_2
      :isosceles
    elsif @length_1 != @length_2 && @length_2 != @length_3 && @length_1 != @length_3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
