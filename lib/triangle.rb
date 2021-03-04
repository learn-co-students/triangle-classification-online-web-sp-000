class Triangle

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind

    sides = [@s1, @s2, @s3].sort

    if sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides.uniq.size == 1
      type = :equilateral
    elsif sides.uniq.size == 2
      type = :isosceles
    else
      type = :scalene
    end
    type
  end

  class TriangleError < StandardError
  end


end
