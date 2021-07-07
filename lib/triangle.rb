class Triangle
  attr_accessor :a, :b, :c 
  
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def kind 
    if (@a <= 0 || @b <=0 || @c <=0) || (@a+@b<=@c || @a+@c<=@b || @b+@c<=@a)
      begin 
        raise TriangleError
      # rescue TriangleError => error 
      #     puts error.message 
      end 
    elsif @a == @b && @b == @c 
      :equilateral  
    elsif @a == @b || @a ==@c || @b == @c 
      :isosceles 
    elsif @a!=@b && @a!=@c && @a!=@c 
      :scalene 
    end 
  end 
  
  class TriangleError < StandardError 
    def message 
      "That's not a valid triangle!"
    end 
  end 
end

