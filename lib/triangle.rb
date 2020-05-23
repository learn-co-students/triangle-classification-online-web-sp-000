class Triangle
  attr_accessor :left_side, :right_side, :middle, :equilateral, :isosceles, :scalene
  
  def initialize(attribute)
    attribute.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def kind
  end
end
