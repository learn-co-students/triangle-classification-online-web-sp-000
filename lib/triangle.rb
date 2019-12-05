require 'pry'
class Triangle
  # write code here

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind

    if side_1 <= 0 || side_2 <=0 || side_3 <= 0
      #begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end

    elsif side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
      raise TriangleError

    else
      if side_1 == side_2 && side_1 == side_3 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        :isosceles
        #binding.pry
      elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
        :scalene
      #  binding.pry
    end

    end

  end
  class TriangleError < StandardError

    # def message
    #   puts "Incorrect side measurement passed"
    # end

  end

end
