class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(l, m , n)
    @s1 = l
    @s2 = m
    @s3 = n
  end

  def kind
    if @s1 == 0 || @s2 == 0 || @s3 == 0 || (@s1 + @s2) <= @s3 || (@s2 + @s3) <= @s1 || (@s1 + @s3) <= @s2
      raise TriangleError
    else
      case
      when @s1 != @s2 && @s1 != @s3 && @s2 != @s3
        :scalene
      when @s1 == @s2 && @s1 == @s3 && @s2 == @s3
        :equilateral
      when @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        :isosceles
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Triangles must consist of sides whose lengths are > 0 additionally,
      no side must exceed the sum of the other two sides!"
    end
  end
end
