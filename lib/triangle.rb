class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  class TriangleError < StandardError
    "That's not a triangle"
  end

  def kind
    sides = [side_one, side_two, side_three]

    if sides.sort[0] + sides.sort[1] <= sides.sort[2] || !sides.all?{ |s| s > 0 }
      raise TriangleError
    else
      case
        when sides.sort[2] == sides.sort[0]
          :equilateral
        when sides.sort[2] == sides.sort[1] && sides.sort[2] != sides.sort[0]
          :isosceles
        when sides.sort[2] != sides.sort[1]
          :scalene
      end
    end
  end
end
