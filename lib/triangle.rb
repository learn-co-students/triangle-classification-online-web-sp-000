class Triangle
  attr_accessor :length1, :length2, :length3
  
  
  def initialize(length1,length2,length3)
  @length1 = length1
  @length2 = length2
  @length3 = length3
  end
  
  def kind
  
  # sorts by size and assigns to new variables
  a, b, c = [@length1, @length2, @length3].sort
  
  # raises ERROR 
  raise TriangleError if a <= 0 || a + b <= c
  [nil, :equilateral, :isosceles, :scalene][[a, b, c].uniq.size] 

  end
  
  class TriangleError < StandardError
  end
  
end

# other solution

class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

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
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end

end
