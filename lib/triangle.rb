class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


  def kind
    if (less_than_zero? == true || triangle_rules? == false)
      raise TriangleError
    elsif (equilateral?)
      :equilateral
    elsif (scalene?)
      :scalene
    else (isosceles?)
      :isosceles
    end
  end

  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def isosceles?
    (@side1 == @side2) || (@side1 == @side3) || (@side2 = @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end

  def less_than_zero?
    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      return true
    end
  end

  def triangle_rules?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end









  class TriangleError < StandardError
    # triangle error code
  end
end
