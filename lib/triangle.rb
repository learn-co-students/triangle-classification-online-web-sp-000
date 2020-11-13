class Triangle
  # write code here
  def initialize(a,b,c)
    @side = [a, b, c]
  end
  
  def  kind 
    if @side.all?{|side| side >0 } && @side[0] + @side[1]> @side[2] && @side[0] + @side[2] > @side[1] && @side[1] + @side[2] > @side[0]
      if @side[0] == @side[1] && @side[1] == @side[2]
        :equilateral
      elsif @side[0] == @side[1] || @side[0] == @side[2] || @side[1]== @side[2]
        :isosceles
      else 
        :scalene
      end
    else 
      #begin
        raise TriangleError 
      #rescue TriangleError => error 
        #puts error.message
      #end  
      
    end
  end
  
  class TriangleError < StandardError 
    def message 
      puts "Check your triangle sides. They all need to be larger than 0 and follow inequality rule."
    end  
  end
end
