class Triangle
  attr_accessor :e, :i, :s
  
  def initialize(e, i, s)
    @e = e
    @i = i
    @s = s
  end
  
  def kind
    validate
    if e == i && i == s
      :equilateral
    elsif i == s || e == s || e == i 
      :isosceles
    else 
      :scalene
      
    end
  end
  
  def validate
    real_triangle = [(e + i > s), (s + i > e), (e + s > i)]
    [e, i, s].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end

# class Person
#   attr_accessor :partner, :name

#   def initialize(name)
#     @name = name
#   end

#   def get_married(person)
#     self.partner = person
#     if person.class != Person
#     begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end
#   end
# class PartnerError < StandardError
#   def message
#     "you must give the get_married method an argument of an instance of the person class!"
#   end
#   end
# end