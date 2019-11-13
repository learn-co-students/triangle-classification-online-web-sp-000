class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    length_array = [length1, length2, length3]

    sides_length_test = length_array.all?(|side| side > 0)
    sides_sum = length_array.sum

    length_array.each_with_index do |val, index|
      

    end

    #if length1 == length2 && length2 == length3
    if length_array.uniq.length == 1
      :equilateral
    elsif length_array.uniq.length == 2
      :isosceles
    elsif length_array.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError

  end

end
