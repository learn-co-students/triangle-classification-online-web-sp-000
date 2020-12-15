class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    x = @side_1
    y = @side_2
    z = @side_3

    if (x+y<=z || x+z<=y || y+z<=x)
      raise  TriangleError

    # I THINK this code down below spits out the error message correctly? I can't use it obviously because it fails the tests, but here you go.
    #  begin
    #    raise TriangleError
    #  rescue TriangleError => error
    #    puts error.message
    #  end
    end
    if (x==y && y==z)
      return :equilateral
    elsif (x==y || y==z || z==x)
      return :isosceles
    else (x!=y || y!=z || z!=x)
      return :scalene
    end

  end

  class TriangleError < StandardError
    def message
      puts "Fix the error, you FOOL."
    end
  end
end
