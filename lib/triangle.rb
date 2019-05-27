class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def equilateral?
    if @side1 == @side2 && @side1 == @side3
    end
      true
    else
      false
    end
  end
  
  def isosceles?
    if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      #elsif
        #@side1 == @side3
      #elsif
       # @side2 == @side3
    end
      true
      begin
    else
      false
    end
  end
  

  def scalene?
    if @side1 != @side2 && @side2 != @side3
    end
      true
    else
      false
    end
  end
  
  def valid?
    if scalene? == true
     

    
  end
  
  def kind(type)
  if valid? == false
     raise TriangleError
   elsif equilateral?
     :equilateral
   elsif isosceles?
     :isosceles
   elsif scalene?
     :scalene
   end
  end

    
    class TriangleError < StandardError
    end
end
