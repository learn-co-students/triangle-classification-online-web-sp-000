class Triangle
  
  attr_accessor :side1, :side2, :side3 
  
  def initialize 
    @side1 = side1
    @side2 = side2
    @side3 = side3 
    
  def kind 
    case input 

    case a == b && b == c
     puts ":equilateral"
     case a == b || b == c || a == c
     puts ":isosceles"
    else
      puts ":scalene"
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end

class TriangleError < StandardError 
  def 
  end 
end 

  
