class Triangle
  
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one 
    @two = two 
    @three = three
    @lengths = [@one, @two, @three]
 end 
 
 def valid?
   if @lengths.include?(0)
     return false 
      elsif @one + @two <= @three 
      return false 
      elsif @one + @three <= @two
      return false 
      elsif @two + @three <= @one
      return false 
    else 
      return true 
    end 
  end 
  
     
  def kind 
    if self.valid?
      if @one == @two && @one == @three 
        :equilateral 
        elsif @one != @two && @one != @three && @two != @three
        :scalene 
      else 
        :isosceles 
      end
    else 
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end
