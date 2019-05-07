# class Triangle
#   # write code here
#   attr_accessor :length_a, :length_b, :length_c
#
#   def initialize(length_a, length_b, length_c)
#     @length_a = length_a
#     @length_b = length_b
#     @length_c = length_c
#   end
#   def kind
#     # raise a custom error Triangle Error if triangle is invalid
#     if length_a == length_b && length_a == length_c
#       :equilateral
#     elsif length_a == length_b || length_a == length_c
#       :isosceles
#     else
#       :scalene
#     end
#   end
#   def isvalid?
#     # if length_a or length_b or length_c == 0
#     #
#     # elsif length_a
#     # triangle with no sides are invalid
#     # triangle with a negative side is invalid
#   end
#   class TriangleError < StandardError
#     # inherit from StandardError
#   end
# end

class Triangle
  # write code here\
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    # if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
    #   raise TriangleError
    # end
    # if s1 <= 0 || s2 <= 0 ||s3 <= 0
    #   raise TriangleError
    # end
    # if s1 == nil || s2 == nil ||s3 == nil
    #   raise TriangleError
    # end
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
      raise TriangleError
    end
    if s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    end
    if s1 == nil || s2 == nil || s3 == nil
      raise TriangleError
    end
    if @s1 == @s2 && @s1 == @s3
      return :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError

  end
end
