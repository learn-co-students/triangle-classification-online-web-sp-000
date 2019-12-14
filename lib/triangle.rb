require 'pry'

class Triangle

attr_accessor :a, :b, :c

def initialize(a, b, c)
  @a=a
  @b=b
  @c=c
end

def kind
  triangle=a+c>b && b+c>a && a+b>c && a>0 && b>0 && c>0
  if triangle==true && a==b && b==c && c==a
    :equilateral
  elsif triangle==true && b==c && a!=b && a!=c
    :isosceles
  elsif triangle==true && a==c && b!=c && b!=a
    :isosceles
  elsif triangle==true && a==b && b!=c && a!=c
    :isosceles
  elsif triangle==true && a!=b && a!=c && c!=b
    :scalene
  else triangle!=true
    raise TriangleError
  end
end

  class TriangleError<StandardError

  end

end

#def kind(a,b,c)
#  triangle=a+c>b && b+c>a && a+b>c && a>0 && b>0 && c>0
#  if triangle==true && a==b && b==c && c==a
#    :equilateral
#  elsif triangle==true && b==c && a!=b && a!=c
#    :isosceles
#  elsif triangle==true && a==c && b!=c && b!=a
#    :isosceles
  #elsif triangle==true && a==b && b!=c && a!=c
  #  :isosceles
  #elsif triangle==true && a!=b && a!=c && c!=b
  #  :scalene
  #else triangle!=true
  #  :invalid
  #end
#end

#kind(2,4,2)
