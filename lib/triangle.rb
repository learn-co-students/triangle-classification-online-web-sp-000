class Triangle
  attr_accessor :side_arr

  @side_arr = []

  def initialize (side1, side2, side3)
    @side_arr = [side1, side2, side3]
    @side_arr.sort!
  end


  def kind
    if @side_arr.any?{|side| side <= 0} || ((@side_arr[0] + @side_arr[1]) <= @side_arr[2])
      raise TriangleError
    elsif @side_arr.uniq.length == 1
      :equilateral
    elsif @side_arr.uniq.length == 2
      :isosceles
    else
      :scalene
    end
 end

  class TriangleError < StandardError
  end


end
