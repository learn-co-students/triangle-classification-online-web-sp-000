class Triangle
  # write code here
  
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize(length_1, length_2, length_3)
    @length_3 = length_3
    @length_2 = length_2
    @length_1 = length_1
  end
  
  def validate_triangle
    if (length_1 == 0 || length_1 < 0 || length_2 < 0 ) || (length_3 < 0) || (length_3/3 == (length_1 && length_2)) || (length_2/2 == (length_1 || length_3)) || ((length_2 + length_3) < length_1)
      begin
          raise TriangleError
      end
    end
  end
    
  def kind
    validate_triangle
    if (length_1 == length_2) && (length_2 == length_3)
      return :equilateral 
    elsif (length_1 == length_2) || (length_2 == length_3) || (length_3 == length_1)
      return :isosceles
    elsif length_1 != length_2 || length_2 != length_3 || length_3 != length_1
      return :scalene
    end
  end
  
  
  class TriangleError < StandardError
    
        
  end
  
  
end




  