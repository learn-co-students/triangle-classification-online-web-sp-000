  # write code here
class Triangle

#setup the inputs/outputs needed & define our error inside the class itself

  attr_accessor :sides

  class TriangleError < StandardError
  end

#Takes sides and puts them into a sorted array
#checks against invalid inputs

    def initialize(a, b, c)
      @sides = [a, b, c].sort
      invalid_input?
    end

    def kind
      case @sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
      end
    end


#error message raises the right kind (TriangleError)
#but seperating out messages into this method allows custom messages based on
#whichever input rules are broken

    def invalid_input?
      if @sides.any? { |x| x <= 0 }
        raise TriangleError, "How's a triangles side length gonna be less than 0? Try again."
      end

      if @sides[0] + @sides[1] <= @sides[2]
        raise TriangleError, "Would you quit messing around and give me some valid triagle side lengths to work with"
      end
    end
end
