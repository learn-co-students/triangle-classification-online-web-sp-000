class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if length1 < 0 ||length2 < 0 || length3 < 0 #all the lengths are not positive OR less than 0
       raise TriangleError
    elsif (length1 + length2) <= length3 || (length1 + length3) <= length2 || (length2 + length3) <= length1
       raise TriangleError
    elsif length1 == length2 && length2 == length3
      return :equilateral
    elsif length1 == length2 || length1 == length3 || length2 == length3
      return :isosceles
    else #all sides are different
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end #full class end
