require 'pry'

class Triangle
  # write code here
  @tri_sides = []
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @tri_sides = [@side_1, @side_2, @side_3]
  end

  def kind 
    # What has to happen in order for me to raise a TriangleError?
    # If illegal then raise Triangle Error
    
    if valid? == false || negative? == true
      raise TriangleError 
    elsif (@side_1 == @side_2) && (@side_1 == @side_3) && (@side_2 == @side_3) 
      :equilateral
    elsif (@side_1 == @side_2) || (@side_1 == @side_3) || (@side_2 == @side_3) 
      :isosceles
    elsif (@side_1 != @side_2) && (@side_1 != @side_3) && (@side_2 != @side_3)
      :scalene
    end
  end

  def valid?
    (@side_1 + @side_2 > @side_3) && (@side_1 + @side_3 > @side_2) && 
    (@side_2 + @side_3 > @side_1) 
  end 

  def negative?
    @tri_sides.each do |side_length|
      if side_length <= 0
        return true
      end
    end 
  end

  class TriangleError < StandardError

  end

end

# binding.pry