class BoundingBox

  attr_reader :width, :left, :height, :bottom

  def initialize (left, bottom, width, height)
    @left = left
    @width = width
    @height = height
    @bottom = bottom
  end

  def right
    @left+@width
  end

  def top
    @bottom + @height
  end


  def contains_point?(x,y)
    x >= @left && x <= (@left+@width) && y >= @bottom && y <= (@bottom + @height)
  end

end
