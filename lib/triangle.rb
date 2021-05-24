class Triangle
  
  attr_accessor :side1length, :side2length, :side3length

  def initialize(side1length, side2length, side3length)
    @side1length = side1length
    @side2length = side2length
    @side3length = side3length
  end

  def kind
    valid_triangle?(side1length, side2length, side3length)
    if side1length == side2length && side2length == side3length
      :equilateral
    elsif side1length == side2length || side2length == side3length || side3length == side1length
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?(side1length, side2length, side3length)
    a, b, c = [@side1length, @side2length, @side3length].sort
    if a <= 0 || a + b <= c
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end