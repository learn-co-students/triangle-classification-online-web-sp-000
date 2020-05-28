class Triangle
  attr_accessor :left, :right, :middle, :kind
  
  def initialize(left, right, middle)
    @left = left
    @right = right
    @middle = middle 
  end
  
  def kind
    if @left + @right <= @middle || @right + @middle <= @left || @middle + @left <= @right || @left * @right * @middle <= 0 
      raise TriangleError
    elsif @left == @middle && @middle == @right
      self.kind = :equilateral
    elsif @left == @middle || @middle == @right || @right == @left
      self.kind = :isosceles
    else
      self.kind = :scalene
      end
    end

  class TriangleError < StandardError
  end
end
