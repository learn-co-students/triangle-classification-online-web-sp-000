class Triangle
  attr_accessor :s1,:s2,:s3
  
  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def valid?
    if (@s1 + @s2 <= @s3 || @s1 + @s3 <= @s2 || @s2 + @s3 <= @s1 || @s1 == 0 || @s2 == 0 || @s3 == 0)
      return false 
    else
      return true 
    end
  end
  
  def kind
    if valid? == false
      raise TriangleError
    elsif @s1 == @s2 && @s1 == @s3
      return :equilateral
    elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3
      return :scalene
    else
      return :isosceles
    end
  end
  
  class TriangleError < StandardError
    def message
      puts "Hey.... Thats not a triangle"
    end
  end
  
end
