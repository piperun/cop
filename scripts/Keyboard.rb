module Keyboard

  @@getkeyboardstate = Win32API.new('user32', 'GetKeyboardState', ['P'], 'V')
  @@state = nil
  @@prev_state = nil

  VK_BACK = 0x08
  VK_SPACE = 0x20
  VK_LEFT = 0x25
  VK_UP = 0x26
  VK_RIGHT = 0x27
  VK_DOWN = 0x28
  VK_0 = 0x30
  VK_1 = 0x31
  VK_2 = 0x32
  VK_3 = 0x33
  VK_4 = 0x34
  VK_5 = 0x35
  VK_6 = 0x36
  VK_7 = 0x37
  VK_8 = 0x38
  VK_9 = 0x39
  VK_C = 0x43
  VK_R = 0x52

  def self.press?(which)
    return false if @@state.nil?
    return (@@state[which] & 0x80) > 0
  end

  def self.trigger?(which)
    return false if @@state.nil?
    return (@@state[which] & 0x80) > 0 if @@prev_state.nil?
    return (@@state[which] & 0x80) > 0 && (@@prev_state[which] & 0x80) == 0
  end

  def self.repeat?(which)
    return false if @@state.nil? || @@prev_state.nil?
    return (@@state[which] & 0x80) > 0 && (@@prev_state[which] & 0x80) > 0
  end

  def self.update
    @@prev_state = @@state
    lpkeystate = ' ' * 256
    @@getkeyboardstate.call(lpkeystate)
    @@state = lpkeystate.unpack('C256')
  end

end

module Input
  class << self
    alias_method :keyboard_update, :update
    def update
      keyboard_update
      Keyboard.update
    end
  end
end
