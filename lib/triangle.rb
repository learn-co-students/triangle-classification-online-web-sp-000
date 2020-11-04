class Triangle

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
    @len_array = [@l1,@l2,@l3]
  end

  def kind
    if (@l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l1 + @l3 <= @l2) || @len_array.all? {|l| l <=0}
      raise TriangleError
    elsif @len_array.uniq.size == 1
      :equilateral
    elsif @len_array.uniq.size == 3
      :scalene
    elsif @len_array.uniq.size == 2
      :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
