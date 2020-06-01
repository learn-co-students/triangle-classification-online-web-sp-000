class Triangle
  attr_accessor :side_1, :side_2, :side_3
  # triangle code
  # - Write a `Triangle` class that accepts three arguments on initialization. Each
  #   argument is a length of one of the three sides of the triangle.
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  # - Give your Triangles an instance method, `kind` that returns, as a symbol, its
  #   type. The valid types are:
  #
  # 1.  `:equilateral`
  #
  # 2.  `:isosceles`
  #
  # 3.  `:scalene`
  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    else
      if @side_2 == @side_1 && @side_3 == @side_1
        :equilateral
      elsif @side_2 == @side_3 || @side_1 == @side_2 || @side_1 == @side_3
        :isosceles
      else
        :scalene
    end
  end
  end
  #
  # - The `kind` method should raise a custom error, `TriangleError` if the triangle
  #   is invalid. Check out the hint below to understand what makes a triangle
  #   invalid. Write a custom error class, `TriangleError` and inherit it from
  #   `StandardError`. This custom error class should be defined in the same file as
  #   the `Triangle` class, inside the `Triangle` class definition. Like
  #   this:

  class TriangleError < StandardError

  end
end
