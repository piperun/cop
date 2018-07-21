module CG

  class Animation

    @@fade = 0

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

    def set_sprite(layer, value, x, y, z, switch)
      @sprites[layer].dispose() unless @sprites[layer].nil?
      disabled = !switch.nil? && !$game_switches[switch]
      return if value.empty? || disabled
      p('Cannot find sprite: ' + value) unless picture_exists?(value)
      sprite = Sprite.new
      sprite.bitmap = RPG::Cache.picture(value)
      sprite.ox = sprite.bitmap.width / 2
      sprite.oy = sprite.bitmap.height / 2
      sprite.x = @x + (x || 0)
      sprite.y = @y + (y || 0)
      sprite.z = z || 0
      @sprites[layer] = sprite
    end

    def tween(layer, props)
      return if @sprites[layer].nil?
      sprite = @sprites[layer]
      tween = Tween.new(sprite)
      duration = [props[:duration], 1].max
      from_x = @x + (props[:from_x] || (sprite.x - @x))
      from_y = @y + (props[:from_y] || (sprite.y - @y))
      to_x = @x + (props[:to_x] || (sprite.x - @x))
      to_y = @y + (props[:to_y] || (sprite.y - @y))
      sprite.x = from_x
      sprite.y = from_y
      tween.position(from_x, from_y, to_x, to_y, duration)
      @tweens.push(tween)
    end

    def play_sfx(props)
      volume = props[:volume] || 100
      pitch = props[:pitch] || 100
      Audio.se_play(props[:file], volume, pitch)
    end

    def update
      return unless @playing
      if @wait > 0
        @wait -= 1
        return
      end
      seek_to = nil
      fade_for = nil
      unless (frame = @frames[@current_frame]).nil?
        frame.each do |layer,props|
          fade_for = props[:fade] unless props[:fade].nil?
          set_sprite(layer, props[:file], props[:x], props[:y],
            props[:z], props[:switch]) unless props[:file].nil?
          @playing = props[:playing] unless props[:playing].nil?
          @wait = props[:wait] unless props[:wait].nil?
          seek_to = props[:seek] unless props[:seek].nil?
          CG.stop(props[:stop]) unless props[:stop].nil?
          CG.play(props[:play]) unless props[:play].nil?
          tween(layer, props[:tween]) unless props[:tween].nil?
          play_sfx(props[:sfx]) unless props[:sfx].nil?
        end
      end
      if fade_for.nil?
        if @@fade > 0
          Graphics.transition(@@fade)
          @@fade = 0
        end
      else
        @@fade = fade_for
        Graphics.freeze
      end
      while !@tweens.empty?
        @tweens.delete_if { |tween| tween.done? }
        Graphics.cg_update
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

    def picture_exists?(file)
      return FileTest.exists?("Graphics/Pictures/#{file}") ||
        FileTest.exists?("Graphics/Pictures/#{file}.png")
    end
  end
end
