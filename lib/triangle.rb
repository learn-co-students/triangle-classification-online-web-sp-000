class Triangle
  # write code here
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == side2 && side2 == side3
       :equilateral
     elsif side1 == side2 || side2 == side3 || side1 == side3
       :isosceles
     elsif side1 != side2 && side2 != side3 && side1 != side3
       :scalene
     else
       begin
          raise TriangleError
       rescue TriangleError => error
         puts error.message
       end
    end
  end

  class TriangleError < StandardError
    def message
     "you must give the sum of the lengths of any two sides of a triangle always exceeds the length of the third side and each side must be larger than 0!"
   end
  end
end
