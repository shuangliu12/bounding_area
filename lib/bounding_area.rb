class BoundingArea
  def initialize(area=[])
    @area = area
  end

 # it is false if the point is outside of all of the rects' do
 #      bottom_rect = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
 #      top_rect = BoundingBox.new(2.0, 1.0, 3.0, 4.0)

 #      area = BoundingArea.new([bottom_rect, top_rect])

 #      expect(area.contains_point?(0.0, 3.0)).to eq(false)
 #      expect(area.contains_point?(6.0, 4.0)).to eq(false)
 #    end


  def contains_point?(x,y)
      if @area.empty?
         return false
      else
          @area.each do |area|
            if area.contains_point?(x,y)
              return true
            end
          end
        return false
      end

  end


end
