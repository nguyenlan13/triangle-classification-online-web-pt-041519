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
  end
  
  def isosceles?
    if @side1 == @side2
      elsif
        @side1 == @side3
      elsif
        @side2 == @side3
      end
    end
  end

  def scalene?
    if @side1 != @side2 && @side2 != @side3
    end
  end
  
  def valid?
    
  
  def kind(type)
    
    
  end
    
    
    class TriangleError < StandardError
    end
end
