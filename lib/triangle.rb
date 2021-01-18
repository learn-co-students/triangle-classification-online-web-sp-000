class Triangle
  attr_accessor :side_1,:side_2,:side_3

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1,side_2,side_3]
  end

  def valid?
    if @sides.any?{|one| one <= 0}
        raise TriangleError
      elsif @side_1 + @side_2 <= @side_3 || @side_3 + @side_2 <= @side_1 || @side_1 + @side_3 <= @side_2
        raise TriangleError
    end
  end

  def kind
    valid?
    if @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 3
      :scalene
    elsif @sides.uniq.length == 2
      :isosceles
    end
  end

class TriangleError < StandardError
  def message
    "No."
  end
end

end
