require 'pry'
class Triangle
  # A scalene triangle has no equal sides
  # An equilateral triangle has all equal sides 
  # An isocales triangle has two equal sides
  # side 1 + side 2 > 3 
  # each side > 0
  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c 
    @sides_array = [a,b,c]
  end 

  def invalid_triangle 
    if @a + @b < @c || @b + @c  < @a || @a + @c <= @b
      raise TriangleError
    end 
  end 
  # @a + @b < @c || @b + @c  < @a || @a + @c < @b

  def kind 
      invalid_triangle
      if (@sides_array.all?{|side| side == 0}) || (@sides_array.any?{|side| side < 0}) 
        begin
          raise TriangleError
           puts error.message 
         end 
      elsif (@sides_array.uniq.count == 1) == true 
        :equilateral
      elsif (@sides_array.uniq.count == 2) == true 
        :isosceles
      elsif (@sides_array.uniq.count == 1) == false 
        :scalene
      end 
  end 
  
  class TriangleError < StandardError
    def message 
      "All sides must be equal to or greater than 1."
    end 
  end
end 
