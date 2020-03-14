class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def valid_triangle?
    @s1 > 0 && @s2 > 0 && @s3 > 0 && @s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2
  end

  def kind
    if valid_triangle?
      if @s1 == @s2 && @s2 == @s3 && @s3 == @s1
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        :isosceles
      elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError <StandardError
  end
end
