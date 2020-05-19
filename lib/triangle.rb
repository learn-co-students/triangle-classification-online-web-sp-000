require 'pry'
class Triangle
attr_accessor :one, :two, :three
  def initialize(one, two, three)
  @one = one
  @two = two
  @three = three
  end

  def kind
    if @one + @two <= @three || @one >= @two + @three || @one + @three <= @two
      raise TriangleError
    elsif @one <= 0 || @two <= 0 || @three <= 0
      raise TriangleError
    end
    array = [@one, @two, @three]
    array.sort!
    if @one == @two && @two == @three
      return :equilateral
  elsif array[0] == array[1] && array[1] != array[2] || array[0] != array[1] && array[1] == array[2]
      return :isosceles
  elsif array[0] != array[1] && array[1] != array[2] && array[0] != array[2]
    return :scalene
  end


end
class TriangleError < StandardError

end
  # def check_length
  #   if @one + @two < @three || @one > @two + @three || @one + @three < @two
  #     return false
  #   elsif @one <= 0 || @two <= 0 || @three <= 0
  #     return false
  #   end
  # end
  #
  # def kindy
  #   binding.pry
  #   array = [@one, @two, @three]
  #   array.each_with_index.sort {|i| i }
  #   binding.pry
  # end
end
