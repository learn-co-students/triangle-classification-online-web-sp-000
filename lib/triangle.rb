class Triangle
  
  attr_accessor :side1Length, :side2Length, :side3Length
  
  def initialize(side1Length, side2Length, side3Length)
    @side1Length = side1Length
    @side2Length = side2Length
    @side3Length = side3Length
  end

  def kind
    
    if(side1Length == 0 || side2Length == 0 || side3Length == 0)
      begin
        raise TriangleError
      end
    elsif(side1Length < 0 || side2Length < 0 || side3Length < 0)
      begin
        raise TriangleError
      end
    elsif(
          (side1Length + side2Length) <= side3Length ||
          (side1Length + side3Length) <= side2Length ||
          (side2Length + side3Length) <= side1Length
         )
      begin
        raise TriangleError
      end
    elsif(side1Length == side2Length && side2Length == side3Length)
      :equilateral
    elsif(side1Length == side2Length || side1Length == side3Length || side2Length == side3Length)
      :isosceles
    elsif(side1Length != side2Length && side2Length != side3Length)
      :scalene
    end
    
  end

  class TriangleError < StandardError
    def message
      "All side lengths must be greater than 0"
    end
  end

end
