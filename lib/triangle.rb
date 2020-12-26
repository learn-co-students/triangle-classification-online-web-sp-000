class Triangle
  # write code here
  
  attr_accessor :sides
  
  def initialize(side_1, side_2, side_3)
    
    @sides = [side_1, side_2, side_3]
    
  end
  
  def kind
    
    num_equal = 0
    
    @sides = @sides.sort
    
    if ((@sides[0] + @sides[1] ) <= @sides[2]) 
      raise TriangleError
    end
    
    @sides.each do |side| 
      if (side <= 0)
        #begin
          raise TriangleError
        #rescue TriangleError => error
            #puts error.message
        #end
      end
      
      num_equal += @sides.select{|comp_side| comp_side == side}.length
      
    end
    
    case num_equal
      when 3 
        return :scalene
      when 5
        return :isosceles
      when 9 
        return :equilateral
        
    end
      
    
  end
  
  class TriangleError < StandardError
    # triangle error code

  end
end
