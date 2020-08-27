class Triangle
  attr_accessor

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    if (@s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s1 + @s3 <= @s2)
      raise TriangleError
    elsif (@s1 == 0 || @s2 == 0 || @s3 == 0)
      raise TriangleError
    end
  end

  def kind
    if (@s1 == @s2 && @s2 == @s3)
      kind = :equilateral
    elsif (@s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s1 + @s3 <= @s2)
      raise TriangleError
    elsif (@s1 == 0 || @s2 == 0 || @s3 == 0)
      raise TriangleError
    elsif (@s1 == @s2 || @s2 == @s3 || @s1 == @s3)
      kind = :isosceles
    else
      kind = :scalene
    end
  end

  class TriangleError < StandardError
    puts "not a triangle"
  end


end
