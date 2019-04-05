
require 'pry'
class Triangle
    attr_accessor :a, :b, :c
    
    def initialize(a,b,c)
      @a=a
      @b=b
      @c=c
    end
    
    def kind
      if (@a<=0 || @b<=0 || @c<=0) || (@a+@b<=@c) || (@a+@c<=@b)||(@b+@c<=@a)      
        raise TriangleError
      elsif(@a==@b && @a==@c)
        :equilateral
      elsif(@b==@c && @b!=@a) ||(@a==@c && @b!=@a) || (@a==@b && @b!=@c)
        :isosceles
      elsif(@a!=@b && @a!=@c)
        :scalene   
      
       end
    end
   
    class TriangleError < StandardError
      
    end
#binding.pry
end
