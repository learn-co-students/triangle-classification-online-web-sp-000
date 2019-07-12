class Triangle
  attr_accessor :a, :b, :c
def initialize (a,b,c)
  @a = a
  @b = b
  @c = c
end

  class TriangleError < StandardError
    puts "this is not a triangle!"
  end

  def valid_input                                               #=> validates the inputs for considering them as triangles.
    acceptable_array =  [((a+b)>c), ((a+c)>b), ((b+c)>a)]       #=> ensures a valid array with positive integers
    [a,b,c].each do |sides|                                     #=> runs each side to be valid
      acceptable_array << false if sides <= 0                   #=> pushes a false value into array if anything is less than 0
        raise TriangleError if acceptable_array.include?(false) #=> raises error if a false exists in the array
      end
    end

  def kind
    valid_input                                                 #=> validates the incoming data
    if @a == @b && @b == @c                                     #=> When all three sides match.
       :equilateral
    elsif @a == @b || @b == @c || @a == @c                      #=> When two sides match
      :isosceles
    else
      :scalene
    end
  end
end
