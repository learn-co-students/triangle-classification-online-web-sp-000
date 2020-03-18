class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(s1, s2, s3)
    @sides = []
    @sides << s1 
    @sides << s2 
    @sides << s3
  end
  
  def kind 
    if valid?
      if @sides.uniq.length == 1
         :equilateral
      elsif @sides.uniq.length == 2
         :isosceles
      else
         :scalene
      end
    else
      raise TriangleError
   end
  end
    

  
  def valid? 
    side_sum_1 = @sides[0] + @sides[1] 
    side_sum_2 = @sides[0] + @sides[2]
    side_sum_3 = @sides[1] + @sides[2] 
    if (@sides.none? {|i| i <= 0}) && (side_sum_1 > @sides[2] && side_sum_2 > @sides[1] && side_sum_3 > @sides[0])
      true 
    else 
      false
    end
  end

  
  class TriangleError < StandardError
    def message
      "Triangle isn't valid"
    end
  end
end
