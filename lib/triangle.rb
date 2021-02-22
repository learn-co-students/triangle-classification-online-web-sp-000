class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

    if (side_1 + side_2) <= side_3 || (side_2 + side_3) <= side_1 || (side_1 + side_3) <= side_2
      raise TriangleError
    end

    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError
    end

    if side_1 == nil || side_2 == nil || side_3 == nil
      raise TriangleError
    end
  end

def kind
  if side_1 == side_2 && side_2 == side_3 && side_1 == side_3
    :equilateral
  elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
    :isosceles
  else
    :scalene
  end
end

class TriangleError < StandardError
  def message
    puts "Each side must be larger than 0! The sum of the lengths of any two sides of a triangle always exceeds the length of the third side!"
  end
end

end
