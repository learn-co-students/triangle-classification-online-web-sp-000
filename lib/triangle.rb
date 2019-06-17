class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3;
  def initialize (l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  def kind
    sum = l1 + l2
    sum2 = l2 + l3
    sum3 = l3 + l1
    if (sum <= l3 || sum2 <= l1 || sum3 <= l2 || l1 === 0 || l2 === 0 || l2 ===0 || l1 < 0 || l2 < 0 || l3 < 0)
        raise TriangleError
    else
      if (l1 === l2 && l1 === l3 && l3 === l2)
        return :equilateral
      elsif (l1 === l2 || l1 === l3 || l3 === l2)
        return :isosceles
      elsif (l1 != l2 && l1 != l3 && l3 != l2)
        return :scalene
      end
    end
  end
  class TriangleError < StandardError
  end
end
