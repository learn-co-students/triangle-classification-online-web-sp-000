class Triangle
  attr_accessor :a, :b, :c        #Side a ,b ,c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind        #instance method, returns, as a symbol, its type. The valid types are:
    triangle_numbers      #call method
    if a == b && b == c
      :equilateral                    #symbol
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_numbers      #knows that invalid triangles are illegal
    #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0                  #push false on array. IF ANY side is <= to zero
      raise TriangleError if real_triangle.include?(false) #raise our TriangleError. IF side is false
    end
 end

  class TriangleError < StandardError     #inherited from StandardError
  end
end
