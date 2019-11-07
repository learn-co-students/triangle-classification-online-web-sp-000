class Triangle
  # write code here

    attr_reader :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end

    def kind
      triangle_validation
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene
      end
    end

    def triangle_validation
      real_triangle = [(side1 + side2 > side3), (side1 + side3 > side2), side2 + side3 > side1]
      [side1, side2, side3].each do |side|
        real_triangle << false if side <= 0
          raise TriangleError if real_triangle.include?(false)
        end
    end

  class TriangleError < StandardError
  end
end
