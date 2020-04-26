class Triangle

  attr_accessor :side_1, :side_2, :side_3
  @sides = []

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end

  def kind
    if (negative? == true || valid? == false)
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  def negative?
    @sides.each do |length|
      if length <= 0
        true
      end
    end
  end

  def valid?
    (@side_1 + @side_2 > @side_3) && (@side_2 + @side_3 > @side_1) && (@side_1 + @side_3 > @side_2)
  end

  def equilateral?
    (@side_1 == @side_2) && (@side_1 == @side_3)
  end

  def isosceles?
    (@side_1 == @side_2) || (@side_1 == @side_3) || (@side_2 == @side_3)
  end

  def scalene?
    (@side_1 != @side_2) && (@side_1 != @side_3) && (@side_2 != @side_3)
  end

  class TriangleError < StandardError
  end

end
