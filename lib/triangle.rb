class Triangle
  
  attr_accessor :first_size, :second_size, :third_size
  

  def initialize(first_size, second_size, third_size)
    @first_size = first_size 
    @second_size = second_size
    @third_size = third_size
  end

def kind 
  if self.first_size + self.second_size < self.third_size || self.second_size + self.third_size < self.first_size || self.first_size + self.third_size < self.second_size 
    raise TriangleError
  elsif self.first_size == 0 && self.second_size == 0 && self.third_size == 0 
    raise TriangleError
  elsif self.first_size < 0 || self.second_size < 0 || self.third_size < 0 
    raise TriangleError
  elsif self.first_size == self.second_size && self.first_size == self.third_size
    :equilateral 
  elsif self.first_size != self.second_size && self.first_size != self.third_size && self.second_size != self.third_size 
  :scalene
  elsif self.second_size == self.third_size 
  :isosceles
  elsif self.first_size == self.third_size 
  :isosceles
  elsif self.first_size == self.second_size 
  :isosceles
end
end

class TriangleError < StandardError
  

  
end
end