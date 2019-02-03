class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if invalid_triangles
      # begin
        raise TriangleError
      # rescue TriangleError
      # end
    else
      if length_1 == length_2 && length_2 == length_3
        :equilateral
      elsif length_1 == length_2 || length_1 == length_3 || length_2 == length_3
        :isosceles
      else
        :scalene
      end
    end
  end

  def invalid_triangles
    if length_1 <= 0 || length_2 <= 0 || length_3 <= 0
      true
    elsif length_1 + length_2 <= length_3 || length_1 + length_3 <= length_2 || length_2 + length_3 <= length_1
      true
    end
  end


  class TriangleError < StandardError

  end

end
