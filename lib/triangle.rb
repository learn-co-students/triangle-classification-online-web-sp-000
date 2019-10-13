class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three) # First, when we create our triangle we do so with our 3 sides as arguments
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind # We first check for an error to see if any of our triangle sides equals zero or if the sum of 2 sides is less than or equal to the 3rd side.
    if (side_one * side_two * side_three) == 0 || (side_one + side_two) <= side_three || (side_one + side_three) <= side_two || (side_two + side_three) <= side_one
      begin # If the conditions are met, we begin and raise our error, ending it when we are finished
        raise TriangleError
      end # If the conditions for the error are not met, we move on to the next statement.
    elsif side_one == side_two && side_two == side_three # We check to see if all sides are equal.
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three # We check to see if at least 2 sides are equal
      :isosceles
    else # If no sides are equal, we simply return our final type of triangle
      :scalene
    end
  end

  class TriangleError < StandardError
    # If we desire, we could put a 'message' method to read our the error to our user if we desired
  end

end
