class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if (side_one <= 0 || side_two <= 0 || side_three <= 0) || (side_one >= side_two + side_three || side_two >= side_one + side_three || side_three >= side_one + side_two) == true
      raise TriangleError
    elsif side_one == side_two && side_one == side_three && side_two == side_three
      :equilateral
    elsif (side_one == side_two && side_two != side_three) || (side_one == side_three && side_one != side_two) || (side_two == side_three && side_one != side_three) 
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Each side of a triangle must be larger than 0. Furthermore, the sum of the lengths of any two sides of a triangle always exceeds the the length of the third side."
    end
  end
end
