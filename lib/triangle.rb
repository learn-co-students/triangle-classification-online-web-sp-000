class Triangle
    attr_accessor :l1, :l2, :l3
    def initialize(l1, l2, l3)
      @l1 = l1
      @l2 = l2
      @l3 = l3
    end

    def kind
      if ( l1 <= 0 || l2 <= 0 || l3 <= 0 ) || ( l1 + l2 <= l3 ) || ( l1 + l3 <= l2 ) || ( l2 + l3 <= l1)
        raise TriangleError
      elsif ( l1 == l2 ) && ( l1 == l3 ) && ( l2 == l3 )
  	    return :equilateral
      elsif l1 == l3 || l2 == l3 || l1 == l2 
        return :isosceles
      else
        return :scalene
      end
    end

  class TriangleError < StandardError
    def message
    puts "All sides of a triangle must be more than zero.
          The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end
end
