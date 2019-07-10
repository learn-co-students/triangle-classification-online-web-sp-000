# lib/triangle.rb

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(:equilateral, :isosceles, :scalene)

  end

  class TriangleError < StandardError
    # triangle error code
  end
end
