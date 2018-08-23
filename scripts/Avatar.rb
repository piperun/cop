class Avatar

  class Layer < Sprite

    attr_reader :condition

    def initialize(x, y, z)
      super()
      self.x = x
      self.y = y
      self.z = z
      @condition = nil
    end

    def set_sprite(file)
      self.bitmap.dispose() unless self.bitmap.nil?
      unless file.nil? || file.empty?
        if picture_exists?(file)
          self.bitmap = RPG::Cache.picture(file)
          self.ox = self.bitmap.width / 2
          self.oy = self.bitmap.height / 2
        else
          p('Cannot find sprite: ' + file)
        end
      end
    end

    def condition=(literal)
      @condition = literal.
        gsub(/switch\(([0-9]+)\)/, '$game_switches[\1]').
        gsub(/var\(([0-9]+)\)/, '$game_variables[\1]').
        gsub(/switch\(([^)]+)\)/) { |m| "$game_switches[Switch::#{$1.upcase}]" }.
        gsub(/attr\(([^)]+)\)/, '@attribs[:\1]')
    end

    protected

    def picture_exists?(file)
      return FileTest.exists?("Graphics/Pictures/#{file}") ||
        FileTest.exists?("Graphics/Pictures/#{file}.png")
    end
  end

  attr_reader :x
  attr_reader :y
  attr_reader :z

  def initialize(x = 0, y = 0, z = 0)
    @layers = {}
    @tweens = []
    @attribs = {}
    @x = x
    @y = y
    @z = z
  end

  def control(attribs)
    self.x = attribs[:x] unless attribs[:x].nil?
    self.y = attribs[:y] unless attribs[:y].nil?
    self.z = attribs[:z] unless attribs[:z].nil?
  end

  def layer(name, file, attribs)
    @layers[name] = Layer.new(@x, @y, @z + @layers.size) if @layers[name].nil?
    layer = @layers[name]
    layer.condition = "switch(#{attribs[:switch]})" unless attribs[:switch].nil?
    layer.condition = attribs[:if] unless attribs[:if].nil?
    layer.set_sprite(file)
    layer.x = attribs[:x] unless attribs[:x].nil?
    layer.y = attribs[:y] unless attribs[:y].nil?
    layer.z = attribs[:z] unless attribs[:z].nil?
    layer.visible = evaluate(layer.condition) unless layer.condition.nil?
  end

  def tween(attribs)
    tween = Tween.new(self)
    duration = [attribs[:duration], 1].max
    from_x = attribs[:from_x] || @x
    from_y = attribs[:from_y] || @y
    to_x = attribs[:to_x] || @x
    to_y = attribs[:to_y] || @y
    tween.position(from_x, from_y, to_x, to_y, duration)
    @tweens.push(tween)
  end

  def wait(duration)
    waited = 0
    while waited < duration
      Graphics.update
      waited += 1
    end
  end

  def wait_for(what)
    case what
    when :tween
      while !@tweens.empty?
        @tweens.delete_if { |tween| tween.done? }
        Graphics.update
      end
    else
      p("Unknown wait condition #{what}")
    end
  end

  def sfx(file, volume, pitch)
    Audio.se_play(file, volume, pitch)
  end

  def x=(value)
    delta = @x - value
    @x = value
    @layers.each { |name,layer| layer.x -= delta }
  end

  def y=(value)
    delta = @y - value
    @y = value
    @layers.each { |name,layer| layer.y -= delta }
  end

  def z=(value)
    delta = @z - value
    @z = value
    @layers.each { |name,layer| layer.z -= delta }
  end

  def clear
    @layers.each { |name,layer| layer.dispose }
    @layers = {}
    @tweens = []
    @attribs = {}
    return self
  end

  def set(attrib, value)
    @attribs[attrib] = value
    return update
  end

  def update
    @layers.each { |name,layer| layer.visible = evaluate(layer.condition) unless layer.condition.nil? }
    return self
  end

  protected

  def evaluate(condition)
    return eval(condition) == true
  end
end
