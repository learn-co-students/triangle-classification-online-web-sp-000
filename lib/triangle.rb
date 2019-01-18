require 'pry'
class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end 
  
  def kind 
    if a <= 0 || b <= 0 || c <= 0 
      raise TriangleError
    elsif a >= b + c || b >= a + c || c >= a + b 
      raise TriangleError
    elsif a == b && b == c
      symbol = :equilateral
    elsif a != b && b != c && a != c
      symbol = :scalene
    else
      symbol = :isosceles
    end 
    symbol
  end
  
  class TriangleError < StandardError
  end
  
end


