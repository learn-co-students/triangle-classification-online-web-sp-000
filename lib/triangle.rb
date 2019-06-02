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
