class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3
  def initialize(s1, s2, s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
  end
  def kind
    if !((@side1 + @side2 > @side3)&&(@side2 + @side3 > @side1)&&(@side1 + @side3 > @side2)&& @side1 > 0 && @side2 > 0 && @side3 > 0)
      raise TriangleError
    else
      triangle = [@side1, @side2, @side3]
      if triangle.detect{|n| triangle.count(n) == 3}
        :equilateral
      elsif triangle.detect{|n| triangle.count(n) == 2}
        :isosceles
      else
        :scalene
      end
    end
  end
  class TriangleError < StandardError
  end
end
