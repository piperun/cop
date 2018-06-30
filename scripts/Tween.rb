class Tween

  # TODO: Easing is not implemented, only linear transforms possible

  # Animations start one frame from the initial state, ending exactly at the final state.
  # This is intentionally so that chained animations (A -> B -> A) become fluid.
  # If the initial state is required, a single frame pause will suffice.

  class Translate
    def initialize(target, from, to, frames, easing)
      @target = target
      @from = from
      @to = to
      @frame = 0
      @frames = frames
      @easing = easing
    end

    def done
      @frame += 1
      dx = (@to.x - @from.x) / @frames
      dy = (@to.y - @from.y) / @frames
      @target.x = @from.x + (dx * @frame)
      @target.y = @from.y + (dx * @frame)
      return @frame >= @frames
    end
  end

  def initialize
    @operations = []
  end

  def position(target, from, to, frames, easing = 'linear')
    from = Point.new(from[0] || target.x, from[1] || target.y)
    to = Point.new(to[0] || target.x, to[1] || target.y)
    @operations.push(Translate.new(target, from, to, frames, easing))
    return self
  end

  def start
    while !@operations.empty?
      @operations.each_with_index { |operation, index|
        @operations.delete_if { |operation| operation.done() }
      }
      Graphics.update()
    end
  end
end
