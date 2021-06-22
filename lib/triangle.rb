class Triangle
  
  attr_accessor :lengths
  
  @lengths = []
  
  def initialize(length_one, length_two, length_three)
    @lengths = [length_one, length_two, length_three]
    @lengths.sort!
  end
  
  
  def kind 
    if @lengths.any?{|side| side <= 0} || ((@lengths[0] + @lengths[1]) <= @lengths[2])
      raise TriangleError
    elsif @lengths.uniq.length == 1
      :equilateral
    elsif @lengths.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
  
  
end
