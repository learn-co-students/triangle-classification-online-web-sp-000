require 'pry'

class Triangle
  
  attr_accessor :length_1, :length_2, :length_3
  attr_reader :kind

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3  
  end

  def kind
    if length_1 == 0 || length_2 == 0 || length_3 == 0
      raise TriangleError
    elsif length_1 < 0 || length_2 < 0 || length_3 < 0
      raise TriangleError
    elsif !triangleInequality
      raise TriangleError
    end

    if length_1 == length_2 && length_2 == length_3
      :equilateral 
    elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
      :isosceles
    else
      :scalene
    end 
  end

  def triangleInequality
    length_1 + length_2 > length_3 && length_1 + length_3 > length_2 && length_2 + length_3 > length_1
  end

  class TriangleError < StandardError
    def no_size
      "Each side of your triangle must have a length greater than 0."
    end

    def negative_sides
      "Each side of your triangle must have a length greater than 0."
    end

    def triangle_inequality
      "The sum of any two sides of your triangle must exceed the length of the third side."
    end
  end

end
