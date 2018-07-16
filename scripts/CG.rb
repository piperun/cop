class CG

  JACKET = 1
  CAMISOLE = 2
  SKIRT = 3
  PANTY = 4

  @@animations = {}

  def self.update
    @@animations.each{ |k,animation| animation.update }
  end

  def self.play(name, x = nil, y = nil)
    unless (animation = @@animations[name]).nil?
      animation.dispose
    end
    @@animations[name] = Animation.new(name, x, y)
  end

  def self.stop(name = nil)
    if name.nil?
      @@animations.each{ |k,animation| animation.dispose }
      @@animations = {}
    else
      unless (animation = @@animations[name]).nil?
        animation.dispose
      end
      @@animations.delete(name)
    end
  end

  def self.continue(name = nil)
    if name.nil?
      @@animations.each{ |k,animation| animation.continue }
    else
      unless (animation = @@animations[name]).nil?
        animation.continue
      end
    end
  end

  def self.pause(name = nil)
    if name.nil?
      @@animations.each{ |k,animation| animation.pause }
    else
      unless (animation = @@animations[name]).nil?
        animation.pause
      end
    end
  end

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

  class Animation

    def initialize(name, x = nil, y = nil)
      @name = name
      @x = x || 320
      @y = y || 240
      @wait = 0
      @sprites = {}
      @tweens = []
      @current_frame = 0
      @playing = true
      @frames = []
      if CG.const_defined?(name)
        @frames = CG.const_get(name)
      else
        p("Animation #{name} not found")
      end
      update
    end

    def update
      return unless @playing
      if @wait > 0
        @wait -= 1
        return
      end
      seek_to = nil
      unless (frame = @frames[@current_frame]).nil?
        frame.each do |name,props|
          props.each do |prop,value|
            case prop
            when :file
              unless (sprite = @sprites[name]).nil?
                sprite.dispose()
              end
              disabled = (switch = props[:switch]) != nil && !$game_switches[switch]
              unless value.empty? || disabled
                if FileTest.exists?('Graphics/Pictures/' + value)
                  sprite = Sprite.new
                  sprite.bitmap = RPG::Cache.picture(value)
                  sprite.ox = sprite.bitmap.width / 2
                  sprite.oy = sprite.bitmap.height / 2
                  sprite.x = @x + (props[:x] || 0)
                  sprite.y = @y + (props[:y] || 0)
                  sprite.z = props[:z] || 0
                  @sprites[name] = sprite
                else
                  p('Cannot find sprite: ' + value)
                end
              end
            when :playing
              @playing = value
            when :play
              CG.play(value)
            when :stop
              CG.stop(value)
            when :seek
              seek_to = value
            when :wait
              @wait = value
            when :tween
              unless (sprite = @sprites[name]).nil?
                tween = Tween.new(sprite)
                duration = [value[:duration], 1].max
                from_x = @x + (value[:from_x] || (sprite.x - @x))
                from_y = @y + (value[:from_y] || (sprite.y - @y))
                to_x = @x + (value[:to_x] || (sprite.x - @x))
                to_y = @y + (value[:to_y] || (sprite.y - @y))
                sprite.x = from_x
                sprite.y = from_y
                tween.position(from_x, from_y, to_x, to_y, duration)
                @tweens.push(tween)
              end
            end
          end
        end
      end
      while !@tweens.empty?
        @tweens.delete_if { |tween| tween.done? }
        Graphics.graphics_update
      end
      if seek_to.nil?
        @current_frame += 1
      else
        @current_frame = seek_to
      end
      CG.stop(@name) if @playing && @current_frame >= @frames.size
    end

    def dispose
      @sprites.each{ |k,sprite| sprite.dispose unless sprite.nil? }
      @sprites = {}
    end

    def continue
      @playing = true
    end

    def pause
      @playing = false
    end
  end
end

module Graphics
  class << self
    alias_method :cg_update, :update
    def update
      CG.update
      cg_update
    end
  end
end
