require 'pry'

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if s1 == s2 && s2 == s3
      return :equilateral
    elsif s2 == s3 || s1 == s3 || s1 == s2
      return :isosceles
    elsif !(s2 == s3 || s1 == s3 || s1 == s2)
      return :scalene
    elsif (s1||s2||s3) == 0
    binding.pry
      raise TriangleError
    end
  
  end
  
  class TriangleError < StandardError
    
  end
  
end
