class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end 

  class TriangleError < StandardError
    def message
      puts "This is not a triangle."
    end 
  end 

  def kind
    if (side_1 + side_2 <= side_3) || (side_1 + side_3 <= side_2) || (side_2 + side_3 <= side_1)  
      begin
        raise TriangleError
          puts error.message
        end 
    else
      if sides.uniq.count == 1
        :equilateral
      elsif sides.uniq.count == 2
        :isosceles
      else sides.uniq.count == 3
        :scalene
      end
    end
  end
end