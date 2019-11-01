class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(side_1, side_2, side_3)
    @s1 = side_1
    @s2 = side_2
    @s3 = side_3
  end

  def kind
    if self.s1 <= 0 || self.s2 <= 0 || self.s3 <= 0
      raise TriangleError
    end

    if (self.s1+self.s2 <= self.s3) || (self.s1+self.s3 <= self.s2) || (self.s2+self.s3 <= self.s1)
      raise TriangleError
    end

    if self.s1 == self.s2 && self.s1 == self.s3
      :equilateral
    elsif self.s1 == self.s2 || self.s1 == self.s3 || self.s2 == self.s3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
