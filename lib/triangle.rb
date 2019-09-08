require 'pry'
class Triangle
  
  attr_accessor :length1, :length2, :length3
  
  def initialize (length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end 
  
  def kind 
    if self.length1 <= 0 || self.length2 <= 0 || self.length3 <= 0
    #  binding.pry
   #   begin 
        raise TriangleError
    #  rescue TriangleError => error 
     #   puts error.message
      #end 
    elsif (self.length1 + self.length2) <= self.length3 || (self.length1 + self.length3) <= self.length2 || (self.length2 + self.length3) <= self.length1 
      raise TriangleError
      
    elsif self.length1 == self.length2 && self.length1  == self.length3
      :equilateral
    elsif self.length1 != self.length2 && self.length1 != self.length3 && self.length2 != self.length3 
      :scalene
    else 
      :isosceles
    end 
  end 
  
  class TriangleError < StandardError
    def message
      "invalid length to create triangle"
    end 
  end 
end
