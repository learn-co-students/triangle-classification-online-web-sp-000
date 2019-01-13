class Triangle
  # write code here
  class TriangleError < StandardError
  end

  def initialize(side_one_length, side_two_length, side_three_length)
    @side_one_length = side_one_length
    @side_two_length = side_two_length
    @side_three_length = side_three_length
  end

  def kind
    if !isvalid?
      raise TriangleError
    elsif @side_one_length == @side_two_length &&
          @side_two_length == @side_three_length &&
          @side_three_length == @side_one_length
      :equilateral
    elsif @side_one_length == @side_two_length ||
          @side_two_length == @side_three_length ||
          @side_three_length == @side_one_length
      :isosceles
    else
      :scalene
    end
  end

  private

  def isvalid?
    length_check = @side_one_length > 0 && @side_two_length > 0 && @side_three_length > 0
    triangle_inequality_check =
      (@side_one_length + @side_two_length > @side_three_length) &&
      (@side_two_length + @side_three_length > @side_one_length) &&
      (@side_three_length + @side_one_length > @side_two_length)
      length_check && triangle_inequality_check
  end
end
