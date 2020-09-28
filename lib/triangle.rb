class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    end
    
    if side1 >=(side2 + side3) || side2 >= (side1 + side3) || side3 >= (side1 + side2)
      raise TriangleError
    end
    
    if side1 == nil || side2 == nil || side3 == nil
      raise TriangleError
    end
  end
  
  
  def kind
    #if valid? 
      if @side1 == @side2 && @side1 == @side3
        return :equilateral
      elsif  @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        return :isosceles
      else
        return :scalene
      end
  end
end
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

