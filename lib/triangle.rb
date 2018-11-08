require 'pry'
class Triangle
  attr_reader :side_1, :side_2, :side_3
 def initialize(side_1, side_2, side_3)
   @side_1 = side_1
   @side_2 = side_2
   @side_3 = side_3
 end

 def kind
   if side_1 <= 0 || side_2 <= 0 || side_3 <= 0 || (side_1 + side_2) <= side_3 || (side_2 + side_3) <= side_1 || (side_1 + side_3) <= side_2
     begin
       raise TriangleError
     end
   elsif side_1 == side_2 && side_1 == side_3
      :equilateral
   elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      :isosceles
   elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
      :scalene
   end
 end
end

class TriangleError < StandardError
  def message
    "The sides do not make a Trianle. The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
  end
end
