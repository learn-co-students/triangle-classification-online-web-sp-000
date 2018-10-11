require 'pry'

class Triangle
  attr_accessor :triangle 
  
  def initialize(side1, side2, side3)
    @triangle = [side1, side2, side3]
  end
  
  def kind
    raise TriangleError if illegal
    return :equilateral if equilateral
    return :isosceles if isosceles
    return :scalene if scalene
  end
  
  
  
  class TriangleError < StandardError
  end
  
  private
  
  def equilateral
    @triangle.uniq.length == 1 && @triangle.uniq.first > 0
  end
  
  def isosceles
    @triangle.uniq.length == 2
  end
  
  def scalene
    @triangle.uniq.length == 3 && @triangle.none? { |side| side < 0 }
  end
  
  def triangle_inequality?
    temp = @triangle.dup
    3.times do
      temp.rotate!
      if temp.take(2).inject(:+) <= temp.last
        return true
      end
    end
    false
  end
  
  def illegal
    return true if @triangle.any? { |side| side <= 0 }
    return true if triangle_inequality?
  end
end
