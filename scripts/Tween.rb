class Tween

  def initialize(target)
    @target = target
    @operations = []
  end

  def position(from_x, from_y, to_x, to_y, duration)
    @operations.push(Translate.new(from_x, from_y, to_x, to_y, duration))
  end

  def done?
    @operations.delete_if { |operation| operation.done?(@target) }
    return @operations.empty?
  end

  class Translate
    def initialize(from_x, from_y, to_x, to_y, duration)
      @from_x = from_x
      @from_y = from_y
      @to_x = to_x
      @to_y = to_y
      @frame = 0
      @duration = duration
    end

    def done?(target)
      @frame += 1
      dx = (@to_x - @from_x) / @duration
      dy = (@to_y - @from_y) / @duration
      if @frame < @duration
        target.x = @from_x + (dx * @frame)
        target.y = @from_y + (dy * @frame)
        return false
      end
      target.x = @to_x
      target.y = @to_y
      return true
    end
  end
end
