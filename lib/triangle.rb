class Triangle
  # write code here
  attr_reader :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one == @side_two && @side_one == @side_three && @side_two == @side_three &&
        @side_one > 0 && @side_two > 0 && @side_three > 0
      :equilateral
       
    elsif (@side_one == @side_two && @side_three > 0 ||
          @side_one == @side_three && @side_two > 0 ||
          @side_two == @side_three && @side_one > 0) &&
          (@side_one + @side_two > @side_three) &&
          (@side_two + @side_three > @side_one) &&
          (@side_one + @side_three > @side_two)
          
          :isosceles
    elsif @side_one > 0 && @side_two > 0 && @side_three > 0 &&
          (@side_one + @side_two > @side_three) &&
          (@side_two + @side_three > @side_one) &&
          (@side_one + @side_three > @side_two)

          :scalene

    else
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
      #end
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "Illegal triangle error."
    end
  end
end
