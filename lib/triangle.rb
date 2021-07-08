class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    if @a<=0 or @b<=0 or @c<=0
      raise TriangleError
    elsif (@a+@b <= @c) || (@a+@c <= @b) || (@b+@c <= @c)
      raise TriangleError
    elsif @a==@b and @b==@c
      :equilateral
    elsif @a==@b or @b==@c or @a==@c

      :isosceles
    else

      :scalene
    end
  end

  class TriangleError < StandardError
    def messesge
      "error"
    end
  end
end
