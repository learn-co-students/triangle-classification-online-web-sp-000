class Triangle

  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    #returns type of Triangle
    #:equilateral - 3 equal sides
    #: isosceles - 2 equal sides
    #: scalene - no equal sides
    if (@length_one == 0 || @length_two == 0 || @length_three == 0) || \
       (@length_one < 0 || @length_two < 0 || @length_three < 0) || \
       (@length_one + @length_two <= @length_three || @length_two + @length_three <= @length_one || @length_one + @length_three <= @length_two)
      raise TriangleError
    else
      if @length_one == @length_two and @length_two == @length_three
         :equilateral
      elsif @length_one == @length_two || @length_two == @length_three || @length_one == @length_three
         :isosceles
      else
         :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
