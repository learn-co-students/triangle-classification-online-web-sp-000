class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    sides = [@side_1, @side_2, @side_3]
    if @side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2
      true
    else
      false
    end
  end

  def kind
    sides = [@side_1, @side_2, @side_3]
    if !valid?
      begin
        raise TriangleError
      end
    elsif sides.any? {|side| side.negative? || side == 0}
      begin
        raise TriangleError
      end
    else
      if sides.uniq.count == 1
          :equilateral
      elsif sides.uniq.count == 2
          :isosceles
        else
          :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
    "This triangle is invalid!"
    end
  end
end
