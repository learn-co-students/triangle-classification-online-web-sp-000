class Triangle
  
  attr_accessor :side_1, :side_2, :side_3, :type
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind     
    array = Array([side_1,side_2,side_3])
    if array.find {|i| i <= 0}
      begin
        raise TriangleError
      # If rescue then error is handled and then not propagated
      #rescue TriangleError => error
      #    puts error.message
      end
    elsif (@side_1 + @side_2 <= @side_3) || (@side_2 + @side_3 <= @side_1) || (@side_3 + @side_1 <= @side_2)
      begin
        raise TriangleError
      end
    else 
    triangle_type
    end
  end

  def triangle_type
    array = Array([side_1,side_2,side_3])
    compare = array.map {|side| array.count(side) }
    if compare.count(2) == 2
    :isosceles
    elsif compare.count(3) == 3
    :equilateral
    elsif compare.count(0) == 0
    :scalene
    end
  end
  
    class TriangleError < StandardError
        def message
          "Not a triangle"
        end
    end
  
end
