require 'pry'
class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0
      raise TriangleError
    elsif @s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s3 + @s1 <= @s2
      raise TriangleError
    else
      if @s1 == @s2 && @s2 == @s3
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        :isosceles
      else
        :scalene
      end
    end
    #------better code------
    # if @s1 <= 0 || @s2 <= 0 || @s3 <= 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     binding.pry
    #     puts error.non_zero_zide_message
    #   end
    # elsif @s1 + @s2 < @s3 || @s2 + @s3 < @s1 || @s3 + @s1 < @s2
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.invalid_side_length
    #   end
    # else
    #   if @s1 == @s2 && @s2 == @s3
    #     :equilateral
    #   elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
    #     :isosceles
    #   else
    #     :scalene
    #   end
    # end
  end

  class TriangleError < StandardError
    def non_zero_zide_message
      "Make sure that all of your side length are greater than zero"
    end

    def invalid_side_length
      "One of your sides is longer than two of the other ones combined"
    end
  end
end
