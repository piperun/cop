#==============================================================================
# ** Window_SaveFile
#------------------------------------------------------------------------------
#  This window displays save files on the save and load screens.
#==============================================================================

class Window_SaveFile < Window_Base
  #--------------------------------------------------------------------------
  # * Public Instance Variables
  #--------------------------------------------------------------------------
  attr_reader   :filename                 # file name
  attr_reader   :selected                 # selected
  #--------------------------------------------------------------------------
  # * Object Initialization
  #     file_index : save file index (0-3)
  #     filename   : file name
  #--------------------------------------------------------------------------
  def initialize(file_index, filename)
    @file_index = file_index
    decide_y
    super(@x , 64 + @y, 320, 104)
    self.contents = Bitmap.new(width - 32, height - 32)
    @filename = "Save#{@file_index + 1}.rxdata"
    @time_stamp = Time.at(0)
    @file_exist = FileTest.exist?(@filename)
    if @file_exist
      file = File.open(@filename, "r")
      @time_stamp = file.mtime
      @characters = Marshal.load(file)
      @frame_count = Marshal.load(file)
      @game_system = Marshal.load(file)
      @game_switches = Marshal.load(file)
      @game_variables = Marshal.load(file)
      @total_sec = @frame_count / Graphics.frame_rate
      file.close
    end
    refresh
    @selected = false

    self.visible = false  #追加
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh
    self.contents.clear
    # Draw file number

    self.contents.font.color = system_color
    self.contents.font.italic = true
    name = "File　　　　"
    self.contents.draw_text(4, 0, 600, 32, name)

    self.contents.font.color = normal_color
    self.contents.font.italic = false
    self.contents.draw_text(56, 0, 600, 32, "#{@file_index + 1}")
    @name_width = contents.text_size(name).width
    # If save file exists
    if @file_exist
      # Draw play time
      hour = @total_sec / 60 / 60
      min = @total_sec / 60 % 60
      sec = @total_sec % 60
      time_string = sprintf("%02d:%02d:%02d", hour, min, sec)
      self.contents.font.color = normal_color
      self.contents.draw_text(4, 8, 280, 32, time_string, 2)
      # Draw timestamp
      self.contents.font.color = normal_color
      time_string = @time_stamp.strftime("%Y/%m/%d %H:%M")
      self.contents.draw_text(4, 40, 280, 32, time_string, 2)
    end
  end
  #--------------------------------------------------------------------------
  # * Set Selected
  #     selected : new selected (true = selected, false = unselected)
  #--------------------------------------------------------------------------
  def selected=(selected)
    @selected = selected
    update_cursor_rect
  end
  #--------------------------------------------------------------------------
  # * Cursor Rectangle Update
  #--------------------------------------------------------------------------
  def update_cursor_rect
    if @selected
      self.cursor_rect.set(0, 0, @name_width + 8, 32)
    else
      self.cursor_rect.empty
    end
  end
  #--------------------------------------------------------------------------
  # ● ｙ座標を決定
  #--------------------------------------------------------------------------
  def decide_y
    case @file_index
      when 0
        @x = 0
        @y = 0
      when 1
        @x = 0
        @y = 104
      when 2
        @x = 0
        @y = 208
      when 3
        @x = 0
        @y = 312
      when 4
        @x = 320
        @y = 0
      when 5
        @x = 320
        @y = 104
      when 6
        @x = 320
        @y = 208
      when 7
        @x = 320
        @y = 312
      when 8
        @x = 0
        @y = 0
      when 9
        @x = 0
        @y = 104
      when 10
        @x = 0
        @y = 208
      when 11
        @x = 0
        @y = 312
      when 12
        @x = 320
        @y = 0
      when 13
        @x = 320
        @y = 104
      when 14
        @x = 320
        @y = 208
      when 15
        @x = 320
        @y = 312
      when 16
        @x = 0
        @y = 0
      when 17
        @x = 0
        @y = 104
      when 18
        @x = 0
        @y = 208
      when 19
        @x = 0
        @y = 312
      when 20
        @x = 320
        @y = 0
      when 21
        @x = 320
        @y = 104
      when 22
        @x = 320
        @y = 208
      when 23
        @x = 320
        @y = 312
      when 24
        @x = 0
        @y = 0
      when 25
        @x = 0
        @y = 104
      when 26
        @x = 0
        @y = 208
      when 27
        @x = 0
        @y = 312
      when 28
        @x = 320
        @y = 0
      when 29
        @x = 320
        @y = 104
      when 30
        @x = 320
        @y = 208
      when 31
        @x = 320
        @y = 312
      when 32
        @x = 0
        @y = 0
      when 33
        @x = 0
        @y = 104
      when 34
        @x = 0
        @y = 208
      when 35
        @x = 0
        @y = 312
      when 36
        @x = 320
        @y = 0
      when 37
        @x = 320
        @y = 104
      when 38
        @x = 320
        @y = 208
      when 39
        @x = 320
        @y = 312
    end
  end

end
