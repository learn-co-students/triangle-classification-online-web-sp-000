class Triangle

  attr_accessor :sides

  @sides = []

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    @sides.sort!
  end

  class TriangleError < StandardError

  end

  def kind
    if @sides.any? { |side| side <= 0 || ((@sides[0] + @sides[1]) <= @sides[2])  }
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
end
