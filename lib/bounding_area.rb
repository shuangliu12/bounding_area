class BoundingArea

  def initialize(area = [])
    @area = area
  end

  def contains_point?(x,y)
      if @area.empty?
         return false
      else
        # alternative method
        # return !@area.all?{|area| area.contains_point?(x,y)==false}
          @area.each do |area|
            if area.contains_point?(x,y)
              return true
            end
          end
        return false
      end
  end


end
