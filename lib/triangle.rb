class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2 , side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    #error message if not valid triangle
    if side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2 
      #begin
        raise TriangleError
   
     #rescue TriangleError => error
      #  puts error.message
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 && side2 != side3 || side2 == side3 && side3 != side1 || side3 == side1 && side1 != side2
      :isosceles
    else side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a valid triangle"
    end
  end
end
