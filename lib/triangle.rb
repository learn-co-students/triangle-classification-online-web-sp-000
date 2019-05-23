class Triangle
        def initialize(side_1,side_2,side_3)
             @triangle_sides = []
          @side_1 = side_1
          @side_2 = side_2
          @side_3 = side_3
        end

  def kind()
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end
end


  # def kosher_triangle
  #   side_1.positive? && side_2.positive? && side_3.positive?
  # end
  #
  # def kosher_triangle2
  #   side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
  # end
  class TriangleError < StandardError
    # triangle error code
  end


end
