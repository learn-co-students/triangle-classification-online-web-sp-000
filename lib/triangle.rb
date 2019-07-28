require "pry"
class Triangle
  
  attr_accessor :length_1, :length_2, :length_3

def initialize(length_1, length_2, length_3)
  @length_1 = length_1
  @length_2 = length_2
  @length_3 = length_3
end

class TriangleError < StandardError
end

def illegal?
  length_array = [@length_1, @length_2, @length_3]
  if length_array.any? {|length| length == nil || length <= 0}
    true
    elsif
    @length_1 + @length_2 <= @length_3 || @length_2 + @length_3 <= @length_1 || @length_1 + @length_3 <= @length_2
    true
  else
    false
end
end

def kind
  if illegal? == true
    raise TriangleError
elsif @length_1 == @length_2 && @length_2 == @length_3
  :equilateral
elsif
@length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3
:isosceles
else
:scalene
end
end

end
