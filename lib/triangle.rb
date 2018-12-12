class Triangle
  attr_reader :kind
  
  def initialize(s1,s2,s3)
    @s1 = s1; @s2 = s2; @s3 = s3;
    
    if !triangleIsValid?
      raise TriangleError
    else
      setTriangleType
    end
  end
  
  private
  
  def setTriangleType
    if (@s1 == @s2 && @s2 == @s3)
      @kind = :equilateral
    elsif (@s1 == @s2 || @s2 == @s3 || @s3 == @s1)
      @kind = :isosceles
    else
      @kind = :scalene
    end
    
  end
  
  def triangleIsValid?
    return false if (@s1 <= 0 || @s2 <= 0 || @s3 <= 0)
    
    if ((@s1+@s2 <= @s3) ||
        (@s1+@s3 <= @s2) ||
        (@s2+@s3 <= @s1)) 
      then
        return false
    end
    
    return true
  end

  class TriangleError < StandardError
  end
end
