class Triangle
  def initialize(side1, side2, side3)
    @triangle_sides = []
    @triangle_sides << side1
    @triangle_sides << side2
    @triangle_sides << side3
  end
  
  def valid? 
    sum_1_2 = @triangle_sides[0] + @triangle_sides[1]
    sum_1_3 = @triangle_sides[0] + @triangle_sides[2]
    sum_2_3 = @triangle_sides[1] + @triangle_sides[2]
    
    if (@triangle_sides.none? {|side| side < 0}) && (sum_1_2 > @triangle_sides[2] && sum_1_3 > @triangle_sides[1] && sum_2_3 > @triangle_sides[0])
      return true
    else
      return false
    end
  end
  
  def kind
    if valid? 
      if @triangle_sides.uniq.length == 1 
        return :equilateral
      elsif  @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end
  
  class TriangleError < StandardError
  end

