class Triangle

  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0 || self.side_1 + self.side_2 <= self.side_3 || self.side_1 + self.side_3 <= self.side_2 || self.side_2 + self.side_3 <= self.side_1)
      begin
        raise TriangleError
      #rescue TriangleError => error
          #puts error.message
      end
    else    
      if (self.side_1 == self.side_2 && self.side_2 == self.side_3 && self.side_1 == self.side_3)
        :equilateral
      elsif (self.side_1 != self.side_2 && self.side_2 != self.side_3 && self.side_1 != self.side_3)
        :scalene
      else
        :isosceles
      end
    end
  end

  class TriangleError < StandardError
    #def message
      #"Not a proper triangle."
    #end
  end
end