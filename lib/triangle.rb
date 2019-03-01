class Triangle

  def initialize(side_1, side_2, side_3)
    @sides_of_triangle = []
    @sides_of_triangle << side_1
    @sides_of_triangle << side_2
    @sides_of_triangle << side_3
  end

  def valid?
    sides_1_2 = @sides_of_triangle[0] + @sides_of_triangle[1]
    sides_2_3 = @sides_of_triangle[1] + @sides_of_triangle[2]
    sides_1_3 = @sides_of_triangle[0] + @sides_of_triangle[2]

    if (@sides_of_triangle.none? {|side| side <= 0})  &&
      (sides_1_2 > @sides_of_triangle[2] && sides_1_3 > @sides_of_triangle[1] && sides_2_3 > @sides_of_triangle[0])
      true
    else
      false
    end
  end

  def kind
    if valid?
      if @sides_of_triangle.uniq.length == 1
        return :equilateral
      elsif @sides_of_triangle.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
