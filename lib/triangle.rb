require 'pry'
class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :sides

  @sides = []

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [side_one, side_two, side_three]
  end

  def kind
    if (negative? == true) || (valid? == false)
        raise TriangleError
      elsif(equilateral?)
        :equilateral
      elsif(scalene?)
        :scalene
      elsif(isosceles?)
        :isosceles
      end
  end

  def negative?
    @sides.each do |length|
      if(length <= 0)
        return true
    end
  end
end

  def valid?
    (@side_one + @side_two > @side_three) && (@side_one + @side_three > @side_two) && (@side_two + @side_three > @side_one)
  end

  def equilateral?
    (@side_one == @side_two) && (@side_one == @side_three)
  end

  def isosceles?
    (@side_one == @side_two) || (@side_one == @side_three) || (@side_two == @side_three)
  end

  def scalene?
    (@side_one != @side_two) && (@side_one != @side_three) && (@side_two != @side_three)
  end
  class TriangleError < StandardError

  end
end
