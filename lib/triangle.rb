require 'pry'

class Triangle
  attr_accessor :length1, :length2, :length3, :is_valid


  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @is_valid = self.valid

  end

  def kind
    if !@is_valid
      raise TriangleError

      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    else
      if @length1 == @length2 && @length1 == @length3
        :equilateral
      elsif
        @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid
    sides = []
    sides << @length1
    sides << @length2
    sides << @length3
    sides.sort!
    # binding.pry
    (sides[0]+sides[1]-sides[2]) > 0 && @length1>0 && @length2>0 &&@length3 > 0

    # (@length1+@length2 > @length3 || @length1+@length3 > @length2 || @length2+@length3 > @length1) && (@length1>0 && @length2>0 &&@length3 > 0)
  end

  class TriangleError < StandardError
    # def message
    #   "Dat triangle ain't valid, yo"
    # end
  end

end
#
# test = Triangle.new(0,0,0)
# binding.pry
#
# puts test.valid
