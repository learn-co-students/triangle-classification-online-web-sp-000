class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0 # Checks that all sides are a positive integer

        raise TriangleError

    elsif @s1 + @s2 <= @s3 || @s1 + @s3 <= @s2 || @s2 + @s3 <= @s1 # Checks for trinangle inequality

        raise TriangleError

    else
      if @s1 == @s2 && @s2 == @s3 # Returns equilateral for triangles w/ 3 equal sides
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3 # Returns isosceles for triangles w/ 2 equal sides
        :isosceles
      elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3 # Returns scalene for triangles w/ 3 sides of different lengths
        :scalene
      end
    end
  end

  class TriangleError < StandardError

  end
end
