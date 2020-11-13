class Triangle
  attr_accessor :side_a, :side_b, :side_c, :all_sides

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @all_sides = []
    self.all_s(@side_a, @side_b, @side_c)
  end

  def all_s(a, b, c)
    @all_sides.push(a, b, c)
  end

  def kind
    if @all_sides.any? {|num| num <= 0}
      raise TriangleError
    elsif @all_sides.any? {|num| num >= @all_sides.sum - num }
      raise TriangleError
    elsif @all_sides[0] == @all_sides[1] && @all_sides[1] == @all_sides[2]
      return :equilateral
    elsif @all_sides[0] != @all_sides[1] && @all_sides[1] != @all_sides[2] && @all_sides[0] != @all_sides[2]
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
