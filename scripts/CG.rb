module CG

  def self.control(attribs)
    return lambda { |target| target.control(attribs) }
  end

  def self.layer(name, file = nil, attribs = {})
    return lambda { |target| target.layer(name, file, attribs) }
  end

  def self.sfx(file, volume = 100, pitch = 100)
    return lambda { |target| target.sfx(file, volume, pitch) }
  end

  def self.wait(duration)
    return lambda { |target| target.wait(duration) }
  end

  def self.tween(attribs)
    return lambda { |target| target.tween(attribs) }
  end

end
