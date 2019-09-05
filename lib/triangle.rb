require 'pry'

class Triangle

  attr_accessor :angle1, :angle2, :angle3

  def initialize(angle1, angle2, angle3)
    @angle1 = angle1
    @angle2 = angle2
    @angle3 = angle3
  end

  def kind
    if (@angle1 <= 0) || (@angle2 <= 0) || (@angle3 <= 0)
      raise TriangleError
    elsif @angle1 + @angle2 <= @angle3 || @angle1 + @angle3 <= @angle2 || @angle2 + @angle3 <= @angle1
      raise TriangleError
    else
      if self.angle1 == self.angle3 && self.angle2 == self.angle3
        :equilateral
      elsif self.angle1 == self.angle2 || self.angle2 == self.angle3 || self.angle1 == self.angle3
        :isosceles
      elsif self.angle1 != self.angle2 && self.angle3 != self.angle1 && self.angle3 != self.angle2
        :scalene
      end
    end
  end

    class TriangleError < StandardError

    end

end
