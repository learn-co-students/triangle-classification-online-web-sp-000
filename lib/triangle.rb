class Triangle
#  attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @@sides = [side_1, side_2, side_3]
  end
  def kind
    s_sides = @@sides.sort
     if valid_triangle? != true
       raise TriangleError
     else
      if s_sides[0] == s_sides[1] && s_sides[0] == s_sides[2]
        :equilateral
      elsif s_sides[0] == s_sides[1] || s_sides[1] == s_sides[2]
        :isosceles
      else
        :scalene
      end
    end
  end
  def valid_triangle?
    s_sides = @@sides.sort
    if @@sides.detect{|s| s == 0} != nil
      false
    elsif @@sides.detect{|s| s.negative?} != nil
      false
    elsif s_sides[0] + s_sides[1] > s_sides[2] != true
        false
    else
      true
    end
  end
  class TriangleError < StandardError

  end
end
