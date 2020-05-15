#sum of the lengths of any two sides of a triangle always exceeds the length of the third side

class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

#The sum of the lengths of any two sides of a triangle always exceeds the length of the third side
  def valid?
    sides = [@side_1, @side_2, @side_3]
    value_test = sides.all? {|side| side >0}
    value_test && (@side_1 + @side_2 > @side_3) && (@side_2 + @side_3 > @side_1) && (@side_1 + @side_3 > @side_2)
  end

  def kind
    if !valid?
      raise TriangleError
    elsif
      (@side_1 == @side_2) && (@side_2 == @side_3)
      :equilateral
    elsif
      (@side_1 == @side_2) || (@side_3 == @side_1) || (@side_2 == @side_3)
      :isosceles
    elsif
      (@side_1 != @side_2) && (@side_2 != @side_3)
      :scalene
    else
    end
  end

  class TriangleError < StandardError
    def message



    #   if
    # end

    end
  end
end
