class Point

  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def self.from_array(values)
    return self.new(values[0], values[1])
  end
end
