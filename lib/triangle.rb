class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    length_array = [length1, length2, length3]

    sides_length_test = length_array.all?{|side| side > 0}

    sides_sum_test = true
    if length1 + length2 <= length3
      sides_sum_test = false
    elsif length1 + length3 <= length2
      sides_sum_test = false
    elsif length2 + length3 <= length1
      sides_sum_test = false
    end

    if sides_length_test == false || sides_sum_test == false
      raise TriangleError
    else
      if length_array.uniq.length == 1
        :equilateral
      elsif length_array.uniq.length == 2
        :isosceles
      elsif length_array.uniq.length == 3
        :scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
