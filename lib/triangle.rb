class Triangle
  # write code here
attr_accessor :a, :b, :c

def initialize(a, b, c)
  @a=a
  @b=b
  @c=c
end

# kind method should raise TriangleError
  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    if a<=0 || b<=0 || c<=0
      raise TriangleError
    elsif (a+b) <= c || (a+c) <= b || (b+c) <= a
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Error Message"
    end
  end
end
