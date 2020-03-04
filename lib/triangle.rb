class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def invalid?
    [a,b,c].any?(0) || (a + b <= c || a+c <= b || b+c<=a)
  end
  def equilateral?
    a == b && b == c
  end
  def isosceles?
    a == b || a == c || b == c
  end
  def scalene?
    a != b && a != c && b != c
  end

  def kind
    if  invalid?
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    else scalene?
      :scalene
    end
  end

  class TriangleError < StandardError
    # def message
    #   "You, Sir, are NOT a triangle!"
    # end
  end
end
