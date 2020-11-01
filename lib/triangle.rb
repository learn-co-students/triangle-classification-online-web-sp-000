class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [side_1, side_2, side_3].sort
    if sides.any? {|side| side <= 0} || sides.all? {|side| side == 0}
      raise TriangleError
    elsif sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
