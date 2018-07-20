class Log
  @@stream = nil
  @@prev_type = nil
  def self.write(type, message = nil)
    return if (type == 'frame') && (@@prev_type == 'frame')
    @@stream = File.open('CG.log', 'w') if @@stream.nil?
    @@stream << "#{type}: #{message}\n"
    @@prev_type = type
  end
end

class Interpreter
  alias_method :orig_command_101, :command_101
  def command_101
    res = orig_command_101
    Log.write('message', $game_temp.message_text.gsub("\n", ' '))
    return res
  end
end

module Graphics
  class << self
    alias_method :log_update, :update
    @@framecounter = 0
    def update
      Log.write('frame', @@framecounter)
      @@framecounter += 1
      return log_update
    end
  end
end

module Audio
  class << self
    alias_method :log_se_play, :se_play
    def se_play(filename, volume = 100, pitch = 100)
      Log.write('sfx', filename)
      return log_se_play(filename, volume, pitch)
    end
  end
end

module RPG
  module Cache
    class << self
      alias_method :log_picture, :picture
      def picture(filename)
        Log.write('picture', filename) unless filename.empty?
        return log_picture(filename)
      end
    end
  end
end
