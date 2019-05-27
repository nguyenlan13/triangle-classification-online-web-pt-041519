class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  
  def initialize(side1, side2, side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end
  
  def equilateral?
    if @side1 == @side2 && @side1 == @side3
      true
      #begin
        #raise TriangleError
      #rescue TriangleError => error
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
      true
      #begin
       # raise TriangleError
      #rescue TriangleError => error
    else
      false
    end
  end
  

  def scalene?
    if @side1 != @side2 && @side2 != @side3
      true
      #begin
        #raise TriangleError
      #rescue TriangleError => error
    else
      false
    end
  end
  
  def valid?
    valid = true
   if @side1 + @side2 <= @side3
     valid = false
   elsif @side3 + @side1 <= @side2
     valid = false
   elsif @side3 + @side2 <= @side1
     valid = false
   elsif @side1 <= 0 && @side2 <= 0
     valid = false
   elsif @side3 <= 0
     valid = false
   end
    return valid
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
