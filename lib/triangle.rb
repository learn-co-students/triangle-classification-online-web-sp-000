class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
    @sides.sort!
  end

  def kind
    if @sides.any? {|side| side <= 0} || (@sides[0] + @sides[1] <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.count == 1
      :equilateral
    elsif @sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This isn't even a Bizarre Love Triangle"
    end
  end
end
