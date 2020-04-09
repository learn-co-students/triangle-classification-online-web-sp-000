require 'pry'

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    
  # equilateral triangles have equal sides
  # larger equilateral triangles also have equal sides
    if @s1 == @s2 && @s2 == @s3
      return :equilateral
    elsif @s2 == @s3 || @s1 == @s3 || @s1 == @s2
      return :isosceles
    else
      raise TriangleError
    end
  # isosceles triangles have last two sides equal
  # isosceles triangles have first and last sides equal
  # isosceles triangles have two first sides equal
  # isosceles triangles have in fact exactly two sides equal
  
  # isosceles triangles have first and last sides equal
  
    # if (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_3 + @side_1) <= @side_2
    #   raise TriangleError
    # end
  end
  
  class TriangleError < StandardError
    
  end
  
end
