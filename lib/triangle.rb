class Triangle
  # write code here
  attr_accessor :a, :b, :c, :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if a <= 0 || b <= 0 || c <= 0 || (a + b) <= c || (a + c) <= b || (b + c) <= a

      begin
      raise TriangleError
      end

      elsif a == b && b == c
       self.kind = :equilateral
     elsif a == b || b == c|| c == a
       self.kind = :isosceles
     else
       :scalene
     end
  end

  class TriangleError < StandardError
  end
end
