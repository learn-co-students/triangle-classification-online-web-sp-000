require 'pry'

class Triangle

  attr_accessor :a, :b, :c
      

  def initialize(a, b, c)
    @c = c
    @b = b
    @a = a
  end 

  def kind 
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || b + c <= a || c + a <= b
      begin
        raise TriangleError
      end
    elsif a == b && a == c && b == c
      return :equilateral 
    elsif (a == b) && (a != c)
      :isosceles
    elsif (a == c) && (a != b)
      :isosceles
    elsif (b == c) && (b != a)
      :isosceles
    elsif (b != c) && (a != c) && (b != a)
      :scalene
    else 
      begin 
        raise TriangleError 
      end 
    end
  end
        
        
  class TriangleError < StandardError
    puts "illegal"
  end


end
