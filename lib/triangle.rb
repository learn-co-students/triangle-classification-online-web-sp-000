class Triangle
  attr_accessor :a, :b, :c 
 
 def initialize(a,b,c)
@a = a
@b = b 
@c = c 
 end
 
 def kind
   if (a * b * c == 0) || (a + b <= c) || (b + c <= a) || (a + c <= b)
   raise TriangleError
   elsif a == b && b == c 
     return :equilateral
   elsif 
    a == b || b == c || a == c
   return :isosceles
   else 
    a != b || a != c && b != c
   return :scalene
 end 
 end 
 
 
 
 class TriangleError < StandardError
   
 end
 
 end
 
 
 
 
 


  

 

