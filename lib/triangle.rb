class Triangle

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if @length_one <= 0 || @length_two <= 0 || @length_three <= 0 || @length_one + @length_two <= @length_three || @length_two + @length_three <= @length_one || @length_one + @length_three <= @length_two
      raise TriangleError
    else
      if @length_one == @length_two && @length_two == @length_three
        return :equilateral
      elsif @length_one != @length_two && @length_one != @length_three && @length_two != @length_three
        return :scalene
      else
        return :isosceles
      end
    end
  end

  class TriangleError < StandardError
  end
end
