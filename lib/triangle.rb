class Triangle
  attr_reader :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    valid_triangle
    if length_1 == length_2 && length_3 == length_2
      :equilateral
    elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    real_triangle = [(length_1 + length_2 > length_3),  (length_1 + length_3 > length_2), (length_2 + length_3 > length_1)]
    [length_1, length_2, length_3].each { |length| real_triangle << false if length <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
end
