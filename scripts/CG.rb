module CG

  JACKET = 1
  CAMISOLE = 2
  SKIRT = 3
  PANTY = 4
  PRISON = 5

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
