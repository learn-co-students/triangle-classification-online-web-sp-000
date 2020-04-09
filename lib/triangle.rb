class Triangle

  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    self.triangle_valid?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_valid?
    if [@a, @b, @c].any?{|v| v <= 0}
      raise TriangleError
    elsif [(@a+@b > @c), (@a+@c > @b), (@b + @c > @a)].include?(false)
      raise TriangleError
    else
      true
    end
  end

  class TriangleError < StandardError

  end
  # write code here
end
