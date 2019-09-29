class Triangle
  
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if (side_one <= 0 || side_two <= 0 || side_three <= 0) || (side_one >= side_two + side_three || side_two >= side_one + side_three || side_three >= side_one + side_two)
      raise TriangleError
    elsif side_one == side_two && side_one == side_three
      :equilateral
    elsif (side_one == side_two && side_two != side_three) || (side_one == side_three && side_one != side_two) || (side_two == side_three && side_one != side_three) 
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "No values less than or equal to 0 are valid for side length. The length of one side cannot be greater than the sum of the other two sides."
    end
  end
end