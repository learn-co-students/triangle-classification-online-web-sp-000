class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  class TriangleError < StandardError
  end

  def kind

    if !valid? || illegal?
        raise TriangleError
    else
      # equilateral
      if @side_a == @side_b && @side_a == @side_c
        :equilateral
      # isosceles
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      #scalene
      else
        :scalene
      end
    end
  end

  def illegal?
    @side_a == 0 && @side_b == 0 && @side_c == 0
  end

  def valid?
    @side_a + @side_b > @side_c && @side_a + @side_c > @side_b && @side_b + @side_c > @side_a
  end

end
