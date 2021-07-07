class Triangle
  attr_accessor :lenght_a, :lenght_b, :lenght_c, :kind
  
  def initialize(lenght_a, lenght_b, lenght_c)
    @lenght_a = lenght_a
    @lenght_b = lenght_b
    @lenght_c = lenght_c
  end
  
  def kind
    if (lenght_a + lenght_b) <= lenght_c || (lenght_a + lenght_c) <= lenght_b || (lenght_b + lenght_c) <= lenght_a || (lenght_a * lenght_b * lenght_c == 0)
      begin
        raise TriangleError
      end
    elsif lenght_a ==lenght_b && lenght_b == lenght_c
      :equilateral
    elsif lenght_a == lenght_b || lenght_b == lenght_c || lenght_c == lenght_a
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
