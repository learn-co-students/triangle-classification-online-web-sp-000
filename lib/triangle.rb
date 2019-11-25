require 'pry'

class Triangle

  attr_accessor :side_one, :side_two, :side_three 

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two 
    @side_three = side_three
  end 

  def kind 
    actual_triangle_definition
    if side_one == side_two && side_two == side_three
      return :equilateral
    elsif side_one == side_two || side_two == side_three || side_three == side_one
      return :isosceles 
    else side_one != side_two && side_one != side_three && side_two != side_three
      return :scalene
    end 
  end 

  class TriangleError < StandardError
  end

    def actual_triangle_definition
      actual_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
      actual_triangle.each do |side|
        if side == false 
          raise TriangleError
        end 
      end 
    end 
  
end
