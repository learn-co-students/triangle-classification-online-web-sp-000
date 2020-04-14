require 'pry'

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def invalid_triangle
    if (s1||s2||s3) <= 0 || !((s1+s2) > s3) || !((s2+s3) > s1) || !((s3+s1) > s2)
      # binding.pry
      raise TriangleError
    end
  end
  
  def kind
    !invalid_triangle
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s2 == s3 || s1 == s3 || s1 == s2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end