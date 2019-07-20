class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    raise TriangleError.new if length1 <= 0 || length2 <= 0 || length3 <= 0
    raise TriangleError unless triangle_inequality_ok?(length1, length2, length3)
    
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    if (length1 == length2) && (length2 == length3)
      :equilateral
    elsif (length1 == length2) || (length1 == length3) || (length2 == length3)
      :isosceles
    elsif (length1 != length2) && (length2 != length3)
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
  def triangle_inequality_ok?(x, y, z)
    return false unless (x + y) > z
    return false unless (x + z) > y
    return false unless (y + z) > x
    true
  end
end