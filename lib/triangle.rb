require 'pry'
class Triangle
  attr_accessor :s1, :s2, :s3, :kind
  
  KINDS = {
    equilateral: 1,
    isosceles: 2,
    scalene: 3
  }

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def sides
    [@s1, @s2, @s3]
  end
#check against inequality rule
  def legal?
    sum = sides.reduce(:+)
    self.sides.all? {|side| sum - side > side}
  end
#check for illegal side lengths
  def valid?
  sides.none?{|side| side <= 0} && legal?
  end

  def kind
    if self.valid? && self.legal?
      KINDS.key(sides.uniq.length)
    else
      raise TriangleError
    end
  end
#will return: equilateral, if unique sides == 1; isoceles, if unique sides == 2; scalene, if unique sides == 3

  class TriangleError < StandardError
    def message
      puts "The lengths that you entered do not equate to a triangle."
    end
  end
end
# binding.pry