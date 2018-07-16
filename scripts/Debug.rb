module Debug

  @@text = nil
  @@y = 0

  def self.print(value)
    if @@text.nil?
      @@text = Sprite.new
      @@text.bitmap = Bitmap.new(640, 480)
      @@text.z = 999
    end
    @@text.bitmap.draw_text(0, @@y, 640, 20, value.to_s);
    @@y = [@@y + 20, 460].min
  end

  def self.update
    unless @@text.nil?
      @@text.update
      @@text.bitmap.clear
    end
    @@y = 0
  end
end

module Graphics
  class << self
    alias_method :debug_update, :update
    def update
      debug_update
      Debug.update
    end
  end
end
