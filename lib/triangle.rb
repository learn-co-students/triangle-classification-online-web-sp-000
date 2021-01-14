class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  # def kind 
  #   a, b , c = [a, b, c].sort 
  #   raise TriangleError if a <= 0 || a + b <= c
  #   return :equilateral if a == c
  #   return :isosceles if a == b or b == c
  #   return :scalene
  # end

  # def kind
    # if a == b && c == b
    #    :equilateral
    # elsif
    #   a == b || b == c || a == c
    #   :isosceles
    
  #   elsif
  #    (a + b) < c || (b + c) < a || (a + c) < b 
  #       raise TriangleError
  #   else 
  #     :scalene
  #   end
  # end

  def kind
    if a <= 0 || (a + b) <= c || (b + c) <= a || (a + c) <= b
      raise TriangleError
    elsif
      a == b && c == b
        :equilateral
     elsif
       a == b || b == c || a == c
       :isosceles
     else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
