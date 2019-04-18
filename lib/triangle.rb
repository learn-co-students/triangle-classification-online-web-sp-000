class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(a,b,c)
    @side1, @side2,@side3=a,b,c

  end

  class TriangleError<StandardError
  end

  def  kind
    if side1+side2>side3&&side1+side3>side2&&side2+side3>side1&&side1>0&&side2>0&&side3>0
      if side1==side2&&side2==side3
        :equilateral
      elsif side1==side2||side2==side3||side1==side3
        :isosceles
      else :scalene
      end
    else
      raise TriangleError
    end
  end
end

a=Triangle.new(2,3,4)
