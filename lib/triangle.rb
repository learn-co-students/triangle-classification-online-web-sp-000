class Triangle

    attr_accessor :one, :two, :three

    def initialize(one, two, three)
       @one = one
       @two = two
       @three = three
    end

    def kind
        myarr = [@one, @two, @three].sort
        if (myarr[2] >= myarr[0] + myarr[1]) || (@one <= 0 || @two <= 0 || @three <= 0)
            begin
                raise TriangleError
            end
        elsif @one == @two && @two == @three
            return :equilateral
        elsif @one == @two || @one == @three || @two == @three
            return :isosceles
        elsif @one != @two && @two != @three
            return :scalene
        end
    end
    
    class TriangleError < StandardError
    end
end
