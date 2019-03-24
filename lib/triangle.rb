class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one <= 0 || @side_two <=0 || @side_three <=0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side_one + @side_two < @side_three || @side_one + @side_three < @side_two || @side_three + @side_two < @side_one
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "That is not a valid triangle, try again."
    end
  end

end
