class Triangle
  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
  end

  def kind
    if @sides.any? { |x| x <= 0 }
      raise TriangleError, "Sides must be greater than 0"
    elsif @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError, "Not valid triangle lengths"
    else
      type
    end
  end

  def type
    case @sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
    end
  end
  class TriangleError < StandardError
  end
end
