class Yuuki < Avatar

  @@instance = Yuuki.new

  def initialize
    super()
    @pose = nil
  end

  def pose(which)
    clear # fixme
    @pose = which
    CG::POSES[which].each { |command| command.call(self) }
    return self
  end

  def self.pose(which)
    return @@instance.pose(which)
  end

  def face(which)
    CG::FACES[which].call(self)
    return self
  end

  def self.face(which)
    return @@instance.face(which)
  end

  def sweat(enabled)
    set(:sweat, enabled)
    return self
  end

  def self.sweat(enabled)
    return @@instance.sweat(enabled)
  end

  def blush(enabled)
    set(:red, enabled)
    return self
  end

  def self.blush(enabled)
    return @@instance.blush(enabled)
  end

  def slide(which = nil)
    which = @pose if which.nil?
    CG::SLIDES[which].each { |command| command.call(self); wait_for(:tween) }
    return self
  end

  def self.slide(which = nil)
    return @@instance.slide(which)
  end

  def shake(which = nil)
    which = @pose if which.nil?
    CG::SHAKES[which].each { |command| command.call(self) }
    return self
  end

  def self.shake(which = nil)
    return @@instance.shake
  end

  def self.clear
    return @@instance.clear
  end

  def self.update
    return @@instance.update
  end
end
