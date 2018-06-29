#-------------------------------------------------------------------------------
# MAWS - Modified Advanced Weather System
# Base Script: Ccoa, ForeverZer0
# Effects: Ccoa, ForeverZer0, Agckuu Coceg
# Color Schemes: Ccoa, Agckuu Coceg, ForeverZer0
# Version: 1.2
#-------------------------------------------------------------------------------
#      About this script:
#
#      What is the MAWS?
#
#      MAWS - MAWS is the improved weather system, created specially for the use
#    in the projects of RPG Maker XP. First script (AWS) has maded by Ccoa, but
#    it contained a few of effects, therefore I decided to create on it's
#    base for a addon, MAWS 1.0. After two versions I find a project of a
#    ForeverZer0, Advanced Weather, based on my MAWS and
#    which fully reorganized it. It pleased me, and I decided to use it as a new
#    base for MAWS, which you see on this version of script.
#
#     Instructions of using script:
#
#     1) Place anywhere below Spriteset_Map.
#     2) Weather can be still be changed with the script call:
#     $game_screen.weather(type, power, transition)
#   or:
#     $game_screen.weather(type, power, transition, variation) (if this weather
#   effects has a variations of color schemes)
#     If you omit the variation, it will be assumed to be 0 and the normal
#   default weather pattern will be used.
#
#      Examples:
#
#      To make a rain effect, you can use either of these script calls:
#
#     $game_screen.weather(1, 25, 40)
#     $game_screen.weather(1, 25, 40, 0)
#
#     ...If you would like to use the Ccoa's Blood Rain, use this script call:
#
#     $game_screen.weather(1, 25, 40, 1)
#
#     ...If you would like to use the my Oil Rain, use this script call:
#
#     $game_screen.weather(1, 25, 40, 2)
#
#     ...etc.
#
#      Additiions:
#
#      Realistic Storm and Realistic Rain used random volume and pitch for
#     the thunder, and also incorporates a quick screen shake. Also this system
#     is utillized in the effects of Rain with Thunder and Lightning (Agckuu
#     Coceg and ForeverZer0)
#
#       Credits:
#
#     1. Ccoa (base script, most default weather effects)
#     2. ForeverZer0 (editions of base script, color schemes and weather effects)
#     3. Agckuu Coceg (weather effects, color schemes)
#-------------------------------------------------------------------------------
# Weather Types (277 types):
#-------------------------------------------------------------------------------
#    Number after dot is a possible variation for the respective weather type.
#  The first item is the default, or 0, and the following are 1, 2, etc. in
#  order.
#
#   Weather Types:
#   1) Rain (Ccoa, Agckuu Coceg):
#   1.0 Normal rain
#   1.1 Chemical - Ferrum - Crimson blood rain
#   1.2 Chemical - Oil rain
#   1.3 Chemical - Acid rain
#   1.4 Chemical - Golden rain
#   1.5 Photo Effects - Sepia dark rain
#   1.6 Photo Effects - Old T'vision rain
#   1.7 Photo Effects - Sepia light rain
#   1.8 Silver rain
#   1.9 Chemical - Solution of muriatic and sulphuric acid - Milky white rain
#   1.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan rain
#   1.11 Chemical - Ferrum - Light red rain
#   1.12 Chemical - Blackened rain
#   1.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green rain
#   1.14 Biot - Microorganisms - Green evglena - Light green rain
#   1.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry rain
#   1.16 Lakes - Goksha - Color of centered water - Dark Blue rain
#   1.17 Lakes - Goksha - Color of coast water - Light Yellow rain
#   1.18 Lakes - Titikaka - Green-violet rain
#   1.19 Special Effects - Ultra-Violet rain
#   1.20 Special Effects - Ultra-Purple rain
#   1.21 Special Effects - Ultra-Lavender rain
#   1.22 Special Effects - Ultra-Flame rain
#   2) Storm (Ccoa, Agckuu Coceg):
#   2.0 Normal storm
#   2.1 Chemical - Ferrum - Crimson blood storm
#   2.2 Chemical - Oil storm
#   2.3 Chemical - Acid storm
#   2.4 Chemical - Golden storm
#   2.5 Photo Effects - Sepia dark storm
#   2.6 Photo Effects - Old T'vision storm
#   2.7 Photo Effects - Sepia light storm
#   2.8 Silver storm
#   2.9 Chemical - Solution of muriatic and sulphuric acid - Milky white storm
#   2.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan storm
#   2.11 Chemical - Ferrum - Light red storm
#   2.12 Chemical - Blackened storm
#   2.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green storm
#   2.14 Biot - Microorganisms - Green evglena - Light green storm
#   2.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry storm
#   2.16 Lakes - Goksha - Color of centered water - Dark Blue storm
#   2.17 Lakes - Goksha - Color of coast water - Light Yellow storm
#   2.18 Lakes - Titikaka - Green-violet storm
#   2.19 Special Effects - Ultra-Violet storm
#   2.20 Special Effects - Ultra-Purple storm
#   2.21 Special Effects - Ultra-Lavender storm
#   2.22 Special Effects - Ultra-Flame storm
#   3) Snow (Ccoa, Agckuu Coceg, ForeverZer0):
#   3.1 Normal Snow
#   3.2 Crimson Snow
#   4) Hail (Ccoa, Agckuu Coceg):
#   4.0 Normal hail
#   4.1 Chemical - Ferrum - Crimson blood hail
#   4.2 Chemical - Oil hail
#   4.3 Chemical - Acid hail
#   4.4 Chemical - Golden hail
#   4.5 Photo Effects - Sepia dark hail
#   4.6 Photo Effects - Old T'vision hail
#   4.7 Photo Effects - Sepia light hail
#   4.8 Silver hail
#   4.9 Chemical - Solution of muriatic and sulphuric acid - Milky white hail
#   4.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan hail
#   4.11 Chemical - Ferrum - Light red hail
#   4.12 Chemical - Blackened hail
#   4.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green hail
#   4.14 Biot - Microorganisms - Green evglena - Light green hail
#   4.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry hail
#   4.16 Lakes - Goksha - Color of centered water - Dark Blue hail
#   4.17 Lakes - Goksha - Color of coast water - Light Yellow hail
#   4.18 Lakes - Titikaka - Green-violet hail
#   4.19 Special Effects - Ultra-Violet hail
#   4.20 Special Effects - Ultra-Purple hail
#   4.21 Special Effects - Ultra-Lavender hail
#   4.22 Special Effects - Ultra-Flame hail
#   5) Rain with thunder & lightnings collection (Ccoa, Agckuu Coceg, ForeverZer0):
#   5.0 Normal rain
#   5.1 Chemical - Ferrum - Crimson blood rain
#   5.2 Chemical - Oil rain
#   5.3 Chemical - Acid rain
#   5.4 Chemical - Golden rain
#   5.5 Photo Effects - Sepia dark rain
#   5.6 Photo Effects - Old T'vision rain
#   5.7 Photo Effects - Sepia light rain
#   5.8 Silver rain
#   5.9 Chemical - Solution of muriatic and sulphuric acid - Milky white rain
#   5.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan rain
#   5.11 Chemical - Ferrum - Light red rain
#   5.12 Chemical - Blackened rain
#   5.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green rain
#   5.14 Biot - Microorganisms - Green evglena - Light green rain
#   5.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry rain
#   5.16 Lakes - Goksha - Color of centered water - Dark Blue rain
#   5.17 Lakes - Goksha - Color of coast water - Light Yellow rain
#   5.18 Lakes - Titikaka - Green-violet rain
#   5.19 Special Effects - Ultra-Violet rain
#   5.20 Special Effects - Ultra-Purple rain
#   5.21 Special Effects - Ultra-Lavender rain
#   5.22 Special Effects - Ultra-Flame rain
#   6) Falling Simple Leaves (Ccoa, Agckuu Coceg):
#   6.0 Green leaves
#   6.1 Yellow leaves
#   6.2 Red leaves
#   6.3 Autumn brown leaves
#   7) Blowing Simple Leaves (Ccoa, Agckuu Coceg):
#   7.0 Green leaves
#   7.1 Yellow leaves
#   7.2 Red leaves
#   7.3 Autumn Brown leaves
#   8) Swirling Simple Leaves (Ccoa, Agckuu Coceg):
#   8.0 Green leaves
#   8.1 Yellow leaves
#   8.2 Red leaves
#   8.3 Autumn brown leaves
#   9) Realistic Storm (Agckuu Coceg, ForeverZer0)
#   9.0 Realistic Storm
#   9.1 Chemical - Ferrum - Crimson Realistic Storm
#   9.2 Chemical - Oil Realistic Storm
#   9.3 Chemical - Acid Realistic Storm
#   9.4 Chemical - Golden Realisitic Storm
#   9.5 Photo Effects - Sepia dark Realistic storm
#   9.6 Photo Effects - Old T'vision Realstic Storm
#   9.7 Photo Effects - Sepia light Realistic Storm
#   9.8 Chemical - Silver Realistic Storm
#   9.9 Chemical - Solution of muriatic and sulphuric acid - Milky white
#   Realistic Storm
#   9.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan
#   Realistic Storm
#   9.11 Chemical - Ferrum - Light red Realistic Storm
#   9.12 Chemical - Blackened Realistic Storm
#   9.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green Realistic Storm
#   9.14 Biot - Microorganisms - Green evglena - Light green Realistic Storm
#   9.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry Realistic Storm
#   9.16 Lakes - Goksha - Color of centered water - Dark Blue Realistic Storm
#   9.17 Lakes - Goksha - Color of coast water - Light Yellow Realistic Storm
#   9.18 Lakes - Titikaka - Green-violet Realistic Storm
#   9.19 Special Effects - Ultra-Violet Realistic Storm
#   9.20 Special Effects - Ultra-Purple Realistic Storm
#   9.21 Special Effects - Ultra-Lavender Realistic Storm
#   9.22 Special Effects - Ultra-Flame Realistic Storm
#  10) Sakura Petals (Ccoa)
#  11) Petals (Ccoa, Agckuu Coceg, ForeverZer0):
#  11.0 Rose petals
#  11.1 Lavender petals
#  11.2 Tiger Lily petals
#  11.3 Pink petals
#  11.4 Blue petals
#  11.5 Green petals
#  11.6 Blue-Purple petals
#  11.7 Cherry petals
#  11.8 Tea rose Petals
#  11.9 Yellow rose Petals
#  11.10 Raspberry Petals
#  11.11 Dark Blue Petals
#  11.12 Violet Petals
#  11.13 Light Sepia Petals
#  11.14 Dark Sepia Petals
#  11.15 Old T'Vision Petals
#  12) Feathers (Ccoa)
#  13) Butterflies collection(ForeverZer0, Agckuu Coceg)
#  13.0 Violet
#  13.1 Red
#  13.2 Yellow
#  13.3 Aqua-blue
#  13.4 Green
#  13.5 White
#  13.6 Light cyan
#  13.7 Light green
#  13.8 Purple
#  13.9 Light Yellow
#  13.10 Lavender
#  13.11 Brown
#  13.12 Dark grey
#  13.13 Light Sepia
#  13.14 Dark Sepia
#  13.15 Old T'Vision
#  14) Sparkles (Ccoa, ForeverZer0, Agckuu Coceg)
#  14.0 Blue
#  14.1 Lavender
#  14.2 Pink
#  14.3 Green
#  14.4 White
#  14.5 Oil Brown
#  14.6 Raspberry
#  14.7 Flame Orange
#  14.8 Light Cyan
#  14.9 Green-Violet
#  14.10 Light red
#  15) User Defined types
#  16) Blowing Snow (Ccoa, Agckuu Coceg)
#  16.1 Normal blizzard
#  16.2 Crimson blizzard
#  17) Meteors (Ccoa, Agckuu Coceg, ForeverZer0)
#  17.0 Normal
#  17.1 Flame
#  17.2 Rock
#  18) Falling Ash (Ccoa)
#  19) Bubbles (Ccoa)
#  20) Bubbles 2 (Ccoa)
#  21) Uprising Sparkles (Ccoa, ForeverZer0, Agckuu Coceg)
#  21.0 Blue
#  21.1 Lavender
#  21.2 Pink
#  21.3 Green
#  21.4 White
#  21.5 Oil Brown
#  21.6 Raspberry
#  21.7 Flame Orange
#  21.8 Light Cyan
#  21.9 Green-Violet
#  21.10 Light red
#  22) Falling Rocks (ForeverZer0)
#  23) Arrows (ForeverZer0, Agckuu Coceg)
#  23.0 Arrows
#  23.1 Fired Arrows
#  24) Starburst-Burst (Agckuu Coceg)
#  25) Starburst-Up (Agckuu Coceg)
#  26) Starburst-Rain (Agckuu Coceg)
#  27) Monochromatic Starburst-Burst (Agckuu Coceg, ForeverZer0)
#  27.0 Yellow
#  27.1 Green
#  27.2 Aqua-blue
#  27.3 Blue
#  27.4 Violet
#  27.5 Red
#  27.6 Lavender
#  27.7 Grey
#  27.8 White
#  27.9 Dark Sepia
#  27.10 Light Sepia
#  28) Monochromatic Starburst-Up (Agckuu Coceg, ForeverZer0)
#  28.0 Yellow
#  28.1 Green
#  28.2 Aqua-blue
#  28.3 Blue
#  28.4 Violet
#  28.5 Red
#  28.6 Lavender
#  28.7 Grey
#  28.8 White
#  28.9 Dark Sepia
#  28.10 Light Sepia
#  29) Monochromatic Starburst-Down (Agckuu Coceg, ForeverZer0)
#  29.0 Yellow
#  29.1 Green
#  29.2 Aqua-blue
#  29.3 Blue
#  29.4 Violet
#  29.5 Red
#  29.6 Lavender
#  29.7 Grey
#  29.8 White
#  29.9 Dark Sepia
#  29.10 Light Sepia
#  30) Bombs (Agckuu Coceg)
#  30.0 Water
#  30.1 Ice
#  30.2 Flare
#  31) Birds (ForeverZer0, Agckuu Coceg)
#  31.0 White pigeons
#  31.1 Grey pigeons
#  31.2 Crows
#  31.3 Pink pigeons
#  31.4 Green Birds
#  31.5 Yellow Birds
#  32) Falling Maple Leaves (Agckuu Coceg)
#  32.0 Green maple leaves
#  32.1 Yellow maple leaves
#  32.2 Red maple leaves
#  32.3 Autumn brown maple leaves
#  33) Falling Maple Leaves (Agckuu Coceg)
#  33.0 Green maple leaves
#  33.1 Yellow maple leaves
#  33.2 Red maple leaves
#  33.3 Autumn brown maple leaves
#  34) Falling Maple Leaves (Agckuu Coceg)
#  34.0 Green maple leaves
#  34.1 Yellow maple leaves
#  34.2 Red maple leaves
#  34.3 Autumn brown maple leaves
#  35) Realistic rain (Agckuu Coceg):
#  35.0 Normal rain
#  35.1 Chemical - Ferrum - Crimson blood rain
#  35.2 Chemical - Oil rain
#  35.3 Chemical - Acid rain
#  35.4 Chemical - Golden rain
#  35.5 Photo Effects - Sepia dark rain
#  35.6 Photo Effects - Old T'vision rain
#  35.7 Photo Effects - Sepia light rain
#  35.8 Silver rain
#  35.9 Chemical - Solution of muriatic and sulphuric acid - Milky white rain
#  35.10 Chemical - Solution of muriatic and sulphuric acid - Light cyan rain
#  35.11 Chemical - Ferrum - Light red rain
#  35.12 Chemical - Blackened rain
#  35.13 Biot - Microorganisms - Cyanobacterias - Cyan-Green rain
#  35.14 Biot - Microorganisms - Green evglena - Light green rain
#  35.15 Biot - Microorganisms - Raspberry crawfishes - Raspberry rain
#  35.16 Lakes - Goksha - Color of centered water - Dark Blue rain
#  35.17 Lakes - Goksha - Color of coast water - Light Yellow rain
#  35.18 Lakes - Titikaka - Green-violet rain
#  35.19 Special Effects - Ultra-Violet rain
#  35.20 Special Effects - Ultra-Purple rain
#  35.21 Special Effects - Ultra-Lavender rain
#  35.22 Special Effects - Ultra-Flame rain
#-------------------------------------------------------------------------------
# CONFIGURATIONS
#-------------------------------------------------------------------------------

  WEATHER_TYPE_VARIABLE  = 4
  # ID of game variable. Will be equal to the "type" of weather.

  ADVERSE_WEATHER_SWITCH = 4
  # ID of the game switch. Will be true during bad weather. (see below)

  ADVERSE_WEATHER = [1, 2, 4, 5, 9, 16]
  # Include any effects you wish. Adverse weather switch will be true when
  # any of these weather patterns are occuring.

  THUNDER_RATE = 5
  # Adjust how constant the thunder is. Higher values will increase the delay
  # between thunder strikes. Weather power will still effect the rate, but this
  # will change the overall rate. 0 will result in constant, unending screen
  # flashes.

#-------------------------------------------------------------------------------
# END CONFIGURATIONS
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#  Weather Power:
#    An integer from 0-50.  0 = no weather, 50 = 500 sprites
#-------------------------------------------------------------------------------
#  Transition:
#    The number of frames to "transition" the weather in
#-------------------------------------------------------------------------------
#  Usage of user-defined weather:
#    Look at the following globals:
#-------------------------------------------------------------------------------
$WEATHER_UPDATE = false   # the $WEATHER_IMAGES array has changed, please update
$WEATHER_IMAGES = []      # the array of picture names to use
$WEATHER_X = 0            # the number of pixels the image should move horizontally (positive = right, negative = left)
$WEATHER_Y = 0            # the number of pizels the image should move vertically (positive = down, negative = up)
$WEATHER_FADE = 0         # how much the image should fade each update (0 = no fade, 255 = fade instantly)
$WEATHER_ANIMATED = false # whether or not the image should cycle through all the images
#-------------------------------------------------------------------------------

$modified_aws = 1.2

module RPG
class Weather
  def initialize(viewport = nil)
    $game_screen = Game_Screen.new if $game_screen == nil
    @type = @max = @ox = @oy = @count = 0
    @current_pose, @info, @countarray = [], [], []
    make_bitmaps

    (1..500).each {|i|
      sprite = Sprite.new(viewport)
      sprite.z = 1000
      sprite.visible = false
      sprite.opacity = 0
      @sprites.push(sprite)
      @current_pose.push(0)
      @info.push(rand(50))
      @countarray.push(rand(15))
    }
  end

  def dispose

    @sprites.each {|sprite| sprite.dispose}

   [@rain_bitmap, @storm_bitmap, @impact_bitmap, @meteor_bitmap,
    @sakura_bitmap, @hail_bitmap, @snow_bitmap, @bomb_bitmap,
    @arrow_bitmap].each {|bitmap| bitmap.dispose}

    @leaf_bitmaps.each {|image| image.dispose}
    @autumn_leaf_bitmaps.each {|image| image.dispose}
    @petal_bitmaps.each {|image| image.dispose}
    @feather_bitmaps.each {|image| image.dispose}
    @sparkle_bitmaps.each {|image| image.dispose}
    @starburst_bitmaps.each {|image| image.dispose}
    @monostarburst_bitmaps.each {|image| image.dispose}
    @fallingrocks_bitmaps.each {|image| image.dispose}
    @butterfly_bitmaps.each {|image| image.dispose}
    @bird_bitmaps.each {|image| image.dispose}
    @user_bitmaps.each {|image| image.dispose}

    $WEATHER_UPDATE = true

  end
#-------------------------------------------------------------------------------
  def type=(type)
    return if @type == type
    @type = type
    case @type
    when 1                                  # Rain
      bitmap = @rain_bitmap
    when 2                                  # Storm
      bitmap = @storm_bitmap
    when 3, 16                              # Snow
      bitmap = @snow_bitmap
    when 4                                  # Hail
      bitmap = @hail_bitmap
    when 5                                  # Rain w/ thunder and lightning
      bitmap = @rain_bitmap
      @thunder = true
    when 6, 7, 8                            # Leaves
      bitmap = @leaf_bitmaps[0]
    when 9                                  # Realistic storm
      bitmap = @storm_bitmap
      @realistic_thunder = true
    when 10                                 # Sakura petals
      bitmap = @sakura_bitmap
    when 11                                 # Flower petals
      bitmap = @petal_bitmaps[0]
    when 12                                 # Feathers
      bitmap = @feather_bitmaps[0]
    when 13                                 # Butterflies
      bitmap = @butterfly_bitmaps
    when 14                                 # Sparkles
      bitmap = @sparkle_bitmaps[0]
    when 15                                 # User-defined
      bitmap = @user_bitmaps[rand(@user_bitmaps.size)]
    when 17                                 # Meteors
      bitmap = @meteor_bitmap
    when 18                                 # Falling ash
      bitmap = @ash_bitmaps[rand(2)]
    when 19                                 # Bubbles
      bitmap = @bubble_bitmaps[rand(2)]
    when 20                                 # Bubbles 2
      bitmap = @bubble2_bitmaps[rand(4)]
    when 21                                 # Sparkles up
      bitmap = @sparkle_bitmaps[0]
    when 22                                 # Falling rocks
      bitmap = @fallingrocks_bitmaps
    when 23                                 # Arrows
      bitmap = @arrow_bitmap
    when 24, 25, 26                         # Starburst
      bitmap = @starburst_bitmaps[0]
    when 27, 28, 29                         # Mono-starburst
      bitmap = @monostarburst_bitmaps[0]
    when 30                                 # Bombs
      bitmap = @bomb_bitmap
    when 31                                 # Birds
      bitmap = @bird_bitmaps
    when 32, 33, 34                         # Autumn leaves
      bitmap = @autumn_leaf_bitmaps[0]
    when 35                                 # Realistic rain
      bitmap = @rain_bitmap
      @realistic_rain_thunder = true
    else                                    # No weather
      bitmap = nil
    end

    @thunder           = false if @type != 5
    @realistic_thunder = false if @type != 9
    @realistic_rain_thunder = false if  @type != 35
    # Operates the Adverse Weather Switch and Weather Type Variable
    if $game_switches != nil && $game_variables != nil
      $game_variables[WEATHER_TYPE_VARIABLE] = $game_screen.weather_type
      if ADVERSE_WEATHER.include?($game_screen.weather_type)
        $game_switches[ADVERSE_WEATHER_SWITCH] = true
      else
        $game_switches[ADVERSE_WEATHER_SWITCH] = false
      end
    end

    (1..500).each {|i|
      sprite = @sprites[i]
      if sprite != nil
        sprite.visible = (i <= @max)
        if @type == 19
          sprite.bitmap = @bubble_bitmaps[rand(@bubble_bitmaps.size)]
        elsif @type == 20
          sprite.bitmap = @bubble2_bitmaps[rand(@bubble2_bitmaps.size)]
        elsif @type == 3
          r = rand(@snow_bitmaps.size)
          @info[i] = r
          sprite.bitmap = @snow_bitmaps[r]
        elsif @type == 22
          r = rand(3)
          @info[i] = r
          sprite.bitmap = @fallingrocks_bitmaps[r]
        elsif @type == 13
          @current_pose[i] = rand(16)
          sprite.bitmap = @butterfly_bitmaps[@current_pose[i]]
        elsif @type == 31
          @current_pose[i] = rand(4)
          sprite.bitmap = @bird_bitmaps[@current_pose[i]]
        else
          sprite.bitmap = bitmap
        end
      end
    }
  end

  def ox=(ox)
    return if @ox == ox;
    @ox = ox
    @sprites.each {|sprite| sprite.ox = @ox}
  end

  def oy=(oy)
    return if @oy == oy;
    @oy = oy
    @sprites.each {|sprite| sprite.oy = @oy}
  end

  def max=(max)
    return if @max == max;
    @max = [[max, 0].max, 500].min
    (1..500).each {|i|
      sprite = @sprites[i]
      sprite.visible = (i <= @max) if sprite != nil
    }
  end

#-------------------------------------------------------------------------------
  def update
    return if @type == 0
    (1..@max).each {|i|
      sprite = @sprites[i]
      break if sprite == nil
    #----------------------------------------------------------------------
      if @type == 1 || @type == 5 || @type == 35  # Rain
        if sprite.opacity <= 150
          if @current_pose[i] == 0
            sprite.y += @rain_bitmap.height
            sprite.x -= @rain_bitmap.width
            if @type == 1 || @type == 5 || @type == 35
              sprite.bitmap = @rain_splash
            end
            @current_pose[i] = 1
          end
        else
          if @current_pose[i] == 1
            if @type == 1 || @type == 5 || @type == 35
              sprite.bitmap = @rain_bitmap
            end
            @current_pose[i] = 0
          end
          sprite.x -= 2
          sprite.y += 16
          if @thunder && (rand((THUNDER_RATE * 2000) - @max) == 0)
            case $game_screen.weather_variation
            when 0, 2, 3, 4, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 # All the rest rain effects
              $game_screen.start_flash(Color.new(255, 255, 255, 255), 5)
            when 1 # Blood
              $game_screen.start_flash(Color.new(141, 9, 9, 255), 5)
            when 5 # Dark Sepia
              $game_screen.start_flash(Color.new(169, 152, 142, 255), 5)
            when 6 # Old T'Vision
              $game_screen.start_flash(Color.new(118, 120, 123, 255), 5)
            when 7 # Light Sepia
              $game_screen.start_flash(Color.new(220, 195, 170, 255), 5)
            when 11 # Light Red
              $game_screen.start_flash(Color.new(255, 0, 0, 255), 5)
            end
            thundervolume = rand(50) + 50 # Random number 50-100
            thunderpitch = rand(100) + 50 # Random number 50-150
            Audio.se_play('Audio/SE/061-Thunderclap01', thundervolume, thunderpitch)
          end
        end
        sprite.opacity -= 8
      end
      if @realistic_thunder && (rand((THUNDER_RATE * 2000) - @max) == 0)
        thundervolume = rand(50) + 50 # Random number 50-100
        thunderpitch = rand(100) + 50 # Random number 50-150
        Audio.se_play('Audio/SE/061-Thunderclap01', thundervolume, thunderpitch)
        # Screen will not flash or shake unless the volume and pitch are high
        if thundervolume > 75 && thunderpitch > 100
          case $game_screen.weather_variation
          when 0, 2, 3, 4, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 # All the rest storm effects
          $game_screen.start_flash(Color.new(255, 255, 255, 255), 7)
          $game_screen.start_shake(9, 7, 5)
          when 1 # Blood
          $game_screen.start_flash(Color.new(141, 9, 9, 255), 5)
          $game_screen.start_shake(9, 7, 5)
          when 5 # Dark Sepia
          $game_screen.start_flash(Color.new(169, 152, 142, 255), 5)
          $game_screen.start_shake(9, 7, 5)
          when 6 # Old T'Vision
          $game_screen.start_flash(Color.new(118, 120, 123, 255), 5)
          $game_screen.start_shake(9, 7, 5)
          when 7 # Light Sepia
          $game_screen.start_flash(Color.new(220, 195, 170, 255), 5)
          $game_screen.start_shake(9, 7, 5)
          when 11 # Light Red
          $game_screen.start_flash(Color.new(255, 0, 0, 255), 5)
          $game_screen.start_shake(9, 7, 5)
          end
        end
      end
        if @realistic_rain_thunder && (rand((THUNDER_RATE * 2000) - @max) == 0)
        thundervolume = rand(50) + 50 # Random number 50-100
        thunderpitch = rand(100) + 50 # Random number 50-150
        Audio.se_play('Audio/SE/061-Thunderclap01', thundervolume, thunderpitch)
        # Screen will not flash or shake unless the volume and pitch are high
        if thundervolume > 75 && thunderpitch > 100
          case $game_screen.weather_variation
          when 0, 2, 3, 4, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 # All the rest storm effects
          $game_screen.start_flash(Color.new(255, 255, 255, 255), 7)
          $game_screen.start_shake(5, 7, 5)
          when 1 # Blood
          $game_screen.start_flash(Color.new(141, 9, 9, 255), 5)
          $game_screen.start_shake(5, 7, 5)
          when 5 # Dark Sepia
          $game_screen.start_flash(Color.new(169, 152, 142, 255), 5)
          $game_screen.start_shake(5, 7, 5)
          when 6 # Old T'Vision
          $game_screen.start_flash(Color.new(118, 120, 123, 255), 5)
          $game_screen.start_shake(5, 7, 5)
          when 7 # Light Sepia
          $game_screen.start_flash(Color.new(220, 195, 170, 255), 5)
          $game_screen.start_shake(5, 7, 5)
          when 11 # Light Red
          $game_screen.start_flash(Color.new(255, 0, 0, 255), 5)
          $game_screen.start_shake(5, 7, 5)
        end
      end
    end
    #----------------------------------------------------------------------
      if @type == 2 || @type == 9 # Storm
        sprite.x -= 8
        sprite.y += 16
        sprite.opacity -= 12
      end
    #----------------------------------------------------------------------
      if @type == 3 # Snow
        case @info[i]
        when 0
          sprite.y += 1
        when 1
          sprite.y += 3
        when 2
          sprite.y += 5
        when 3
          sprite.y += 7
        end
        sprite.opacity -= 3
      end
    #----------------------------------------------------------------------
      if @type == 4 # Hail
        sprite.x -= 1
        sprite.y += 18
        sprite.opacity -= 15
      end
    #----------------------------------------------------------------------
      if @type == 6 # Falling Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @leaf_bitmaps.size
        end
        sprite.y += 1
      end
    #----------------------------------------------------------------------
      if @type == 7 # Blowing Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @leaf_bitmaps.size
        end
        sprite.x -= 10
        sprite.y += (rand(4) - 2)
      end
    #----------------------------------------------------------------------
      if @type == 8 # Swirling Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @leaf_bitmaps.size
        end
        if @info[i] != 0
          if @info[i] >= 1 && @info[i] <= 10
            sprite.x -= 3
            sprite.y -= 1
          elsif @info[i] >= 11 && @info[i] <= 16
            sprite.x -= 1
            sprite.y -= 2
          elsif @info[i] >= 17 && @info[i] <= 20
            sprite.y -= 3
          elsif @info[i] >= 21 && @info[i] <= 30
            sprite.y -= 2
            sprite.x += 1
          elsif @info[i] >= 31 && @info[i] <= 36
            sprite.y -= 1
            sprite.x += 3
          elsif @info[i] >= 37 && @info[i] <= 40
            sprite.x += 5
          elsif @info[i] >= 41 && @info[i] <= 46
            sprite.y += 1
            sprite.x += 3
          elsif @info[i] >= 47 && @info[i] <= 58
            sprite.y += 2
            sprite.x += 1
          elsif @info[i] >= 59 && @info[i] <= 64
            sprite.y += 3
          elsif @info[i] >= 65 && @info[i] <= 70
            sprite.x -= 1
            sprite.y += 2
          elsif @info[i] >= 71 && @info[i] <= 81
            sprite.x -= 3
            sprite.y += 1
          elsif @info[i] >= 82 && @info[i] <= 87
            sprite.x -= 5
          end
          @info[i] = (@info[i] + 1) % 88
        else
          if rand(200) == 0
            @info[i] = 1
          end
          sprite.x -= 5
          sprite.y += 1
        end
      end
    #--------------------------------------------------------------------
     if @type == 32 # Falling Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @autumn_leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @autumn_leaf_bitmaps.size
        end
        sprite.y += 1
      end
    #----------------------------------------------------------------------
      if @type == 33 # Blowing Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @autumn_leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @autumn_leaf_bitmaps.size
        end
        sprite.x -= 10
        sprite.y += (rand(4) - 2)
      end
    #----------------------------------------------------------------------
      if @type == 34 # Swirling Leaves
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @autumn_leaf_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @autumn_leaf_bitmaps.size
        end
        if @info[i] != 0
          if @info[i] >= 1 && @info[i] <= 10
            sprite.x -= 3
            sprite.y -= 1
          elsif @info[i] >= 11 && @info[i] <= 16
            sprite.x -= 1
            sprite.y -= 2
          elsif @info[i] >= 17 && @info[i] <= 20
            sprite.y -= 3
          elsif @info[i] >= 21 && @info[i] <= 30
            sprite.y -= 2
            sprite.x += 1
          elsif @info[i] >= 31 && @info[i] <= 36
            sprite.y -= 1
            sprite.x += 3
          elsif @info[i] >= 37 && @info[i] <= 40
            sprite.x += 5
          elsif @info[i] >= 41 && @info[i] <= 46
            sprite.y += 1
            sprite.x += 3
          elsif @info[i] >= 47 && @info[i] <= 58
            sprite.y += 2
            sprite.x += 1
          elsif @info[i] >= 59 && @info[i] <= 64
            sprite.y += 3
          elsif @info[i] >= 65 && @info[i] <= 70
            sprite.x -= 1
            sprite.y += 2
          elsif @info[i] >= 71 && @info[i] <= 81
            sprite.x -= 3
            sprite.y += 1
          elsif @info[i] >= 82 && @info[i] <= 87
            sprite.x -= 5
          end
          @info[i] = (@info[i] + 1) % 88
        else
          if rand(200) == 0
            @info[i] = 1
          end
          sprite.x -= 5
          sprite.y += 1
        end
      end
    #----------------------------------------------------------------------
      if @type == 10 # Sakura Petals
        if @info[i] < 25
          sprite.x -= 1
        else
          sprite.x += 1
        end
        @info[i] = (@info[i] + 1) % 50
        sprite.y += 1
      end
    #----------------------------------------------------------------------
      if @type == 11 # Flower Petals
        @count = rand(20)
        if @count == 0
          sprite.bitmap = @petal_bitmaps[@current_pose[i]]
          @current_pose[i] = (@current_pose[i] + 1) % @petal_bitmaps.size
        end
        if @info[i] % 2 == 0
          if @info[i] < 10
            sprite.x -= 1
          elsif
            sprite.x += 1
          end
        end
        sprite.y += 1
      end
    #----------------------------------------------------------------------
      if @type == 12 # Feathers
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @feather_bitmaps.size
          sprite.bitmap = @feather_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        if rand(100) == 0
          sprite.x -= 1
        end
        if rand(100) == 0
          sprite.y -= 1
        end
        if @info[i] < 50
          if rand(2) == 0
            sprite.x -= 1
          else
            sprite.y -= 1
          end
        else
          if rand(2) == 0
            sprite.x += 1
          else
            sprite.y += 1
          end
        end
        @info[i] = (@info[i] + 1) % 100
      end
    #----------------------------------------------------------------------
      if @type == 13 # Butterflies
        @count = (@count += 1) % 5
        sprite.bitmap = @butterfly_bitmaps[@current_pose[i]]
        if @count == 0 || 3
          if @count == 0
            case @current_pose[i]
            when 0, 1, 2, 3
              @current_pose[i] = (@current_pose[i] += 1) % 4
            when 4, 5, 6, 7
              @current_pose[i] = ((@current_pose[i] += 1) % 4) + 4
            when 8, 9, 10, 11
              @current_pose[i] = ((@current_pose[i] += 1) % 4) + 8
            when 12, 13, 14, 15
              @current_pose[i] = ((@current_pose[i] += 1) % 4) + 12
            end
          end
          case @current_pose[i]
          when 0, 1, 2, 3
            sprite.y -= 1
            sprite.x -= 1 if @current_pose[i] == 0
            sprite.x += 1 if @current_pose[i] == 2
          when 4, 5, 6, 7
            sprite.y += 1
            sprite.x += 1 if @current_pose[i] == 4
            sprite.x -= 1 if @current_pose[i] == 6
          when 8, 9, 10, 11
            sprite.x -= 1
            sprite.y -= 1 if @current_pose[i] == 8
            sprite.y += 1 if @current_pose[i] == 10
          when 12, 13, 14, 15
            sprite.x += 1
            sprite.y -= 1 if @current_pose[i] == 12
            sprite.y += 1 if @current_pose[i] == 14
          end
        end
      end
    #----------------------------------------------------------------------
      if @type == 14 # Sparkles
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @sparkle_bitmaps.size
          sprite.bitmap = @sparkle_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y += 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 15 # User-Defined
        if $WEATHER_UPDATE
          update_user_defined
          $WEATHER_UPDATE = false
        end
        if $WEATHER_ANIMATED && @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @user_bitmaps.size
          sprite.bitmap = @user_bitmaps[@current_pose[i]]
        end
        sprite.x += $WEATHER_X
        sprite.y += $WEATHER_Y
        sprite.opacity -= $WEATHER_FADE
      end
    #----------------------------------------------------------------------
      if @type == 16 # Blowing Snow
        sprite.x -= 10
        sprite.y += 6
        sprite.opacity -= 4
      end
    #----------------------------------------------------------------------
      if @type == 17 # Meteors
        if @countarray[i] > 0
          if rand(20) == 0
            sprite.bitmap = @impact_bitmap
            @countarray[i] = -5
          else
            sprite.x -= 6
            sprite.y += 10
          end
        else
          @countarray[i] += 1
          if @countarray[i] == 0
            sprite.bitmap = @meteor_bitmap
            sprite.opacity = 0
            @count_array = 1
          end
        end
      end
    #----------------------------------------------------------------------
      if @type == 18 # Ash
        sprite.y += 2
        case @countarray[i] % 3
        when 0
          sprite.x -= 1
        when 1
          sprite.x += 1
        end
      end
    #----------------------------------------------------------------------
      if @type == 19 || @type == 20 # Bubbles
        switch = rand(75) + rand(75) + 1
        if @info[i] < switch / 2
          sprite.x -= 1
        else
          sprite.x += 1
        end
        @info[i] = (@info[i] + 1) % switch
        sprite.y -= 1
        if switch % 2 == 0
          sprite.opacity -= 1
        end
      end
    #----------------------------------------------------------------------
      if @type == 21 # Sparkles Up
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @sparkle_bitmaps.size
          sprite.bitmap = @sparkle_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y -= 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 22 # Falling Rocks
        case @info[i]
        when 0 # large
          sprite.y += 10
        when 1 # small
          sprite.y += 5
        when 2 # mid-size
          sprite.y += 7
        end
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 23 # Arrows
        sprite.y += 10
        sprite.x -= 7
      end
    #----------------------------------------------------------------------
       if @type == 24 # Starburst
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @starburst_bitmaps.size
          sprite.bitmap = @starburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y += 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 25 # Starburst up
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @starburst_bitmaps.size
          sprite.bitmap = @starburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y -= 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 26 # Starburst Rain
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @starburst_bitmaps.size
          sprite.bitmap = @starburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.x -= 2
        sprite.y += 8
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 27 # Monochromatic Starburst
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @monostarburst_bitmaps.size
          sprite.bitmap = @monostarburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y += 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 28 # Monochromatic Starburst Up
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @monostarburst_bitmaps.size
          sprite.bitmap = @monostarburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.y -= 1
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 29 # Monochromatic Starburst Rain
        if @countarray[i] == 0
          @current_pose[i] = (@current_pose[i] + 1) % @monostarburst_bitmaps.size
          sprite.bitmap = @monostarburst_bitmaps[@current_pose[i]]
        end
        @countarray[i] = (@countarray[i] + 1) % 15
        sprite.x -= 2
        sprite.y += 8
        sprite.opacity -= 1
      end
    #----------------------------------------------------------------------
      if @type == 30 # Bombs
        if @countarray[i] > 0
          if rand(20) == 0
            sprite.bitmap = @bomb_impact_bitmap
            @countarray[i] = -5
          else
            sprite.x -= 3
            sprite.y += 5
          end
        else
          @countarray[i] += 1
          if @countarray[i] == 0
            sprite.bitmap = @bomb_bitmap
            sprite.opacity = 0
            @count_array = 1
          end
        end
      end
      x = sprite.x - @ox
      y = sprite.y - @oy
      if sprite.opacity < 64 || x < -50 || x > 750 || y < -300 || y > 500
        sprite.x = rand(800) - 50 + @ox
        sprite.y = rand(800) - 200 + @oy
        sprite.opacity = 255
      end
    #----------------------------------------------------------------------
      if @type == 31 # Birds
        @count = (@count += 1) % 5
        if @count == 0
          @current_pose[i] = (@current_pose[i] += 1) % 4
        end
        sprite.bitmap = @bird_bitmaps[@current_pose[i]]
        sprite.x -= rand(2) + 3
        if @info[i] != 0 # Adds a little variation in the flight pattern
          sprite.y -= 1 if @info[i] < 20
          sprite.y += 1 if @info[i] < 40 && @info[i] >= 20
          sprite.y -= 1 if @info[i] < 70 && @info[i] >= 40
          sprite.y += 1 if @info[i] < 120 && @info[i] >= 70
        end
        @info[i] = (@info[i] += 1) % 120
      end
#-------------------------------------------------------------------------------
    }
  end
#-------------------------------------------------------------------------------
  def make_bitmaps

    # All the colors for each type are used only for their respective bitmaps
    # now, therefore the colors can be changed for one type without worrying
    # about messing up another that shares that color.

#-------------------------------------------------------------------------------
    # Rain Bitmap

    @rain_bitmap = Bitmap.new(7, 56)
    rain_color = case $game_screen.weather_variation
    when 1 then Color.new(141, 9, 9)            # Blood Rain
    when 2 then Color.new(33, 15, 3)            # Oil Rain
    when 3 then Color.new(76, 91, 43)           # Acid Rain
    when 4 then Color.new(218, 207, 36)         # Golden Rain
    when 5 then Color.new(100, 75, 63)          # Sepia Dark Rain
    when 6 then Color.new(143, 143, 143)        # Old T'Vision Rain
    when 7 then Color.new(230, 220, 209)        # Sepia Light Rain
    when 8 then Color.new(219, 219, 219)        # Silver Rain
    when 9 then Color.new(249, 249, 249)        # Milky White Rain
    when 10 then Color.new(83, 232, 232)        # Light Cyan Rain
    when 11 then Color.new(255, 9, 7)           # Light Red Rain
    when 12 then Color.new(3, 3, 3)             # Blackened Rain
    when 13 then Color.new(0, 216, 102)         # Cyan-Green Rain
    when 14 then Color.new(112, 238, 110)       # Light Green Rain
    when 15 then Color.new(177, 19, 20)         # Raspberry Rain
    when 16 then Color.new(5, 54, 253)          # Dark Blue Rain
    when 17 then Color.new(240, 235, 139)       # Light Yellow Rain
    when 18 then Color.new(56, 73, 227)         # Green-Violet Rain
    when 19 then Color.new(129, 22, 204)        # Ultra Violet Rain
    when 20 then Color.new(204, 23, 125)        # Ultra Purple Rain
    when 21 then Color.new(193, 180, 217)       # Ultra Lavender Rain
    when 22 then Color.new(245, 128, 43)        # Ultra Flame Rain
    else
      Color.new(198, 233, 240, 128)                  # Normal
    end

    (0..6).each {|i| @rain_bitmap.fill_rect(6-i, i*8, 1, 8, rain_color)}
#-------------------------------------------------------------------------------
    # Storm Bitmap

    @storm_bitmap = Bitmap.new(34, 64)
    case $game_screen.weather_variation
    when 1 # Blood
      storm_color1 = Color.new(141, 9, 9)
      storm_color2 = Color.new(141, 9, 9, 128)
    when 2 # Oil
      storm_color1 = Color.new(33, 15, 3)
      storm_color2 = Color.new(101, 67, 44, 128)
    when 3 # Acid
      storm_color1 = Color.new(105, 114, 66)
      storm_color2 = Color.new(76, 91, 43, 128)
    when 4 # Golden
      storm_color1 = Color.new(218, 207, 36)
      storm_color2 = Color.new(227, 217, 56, 128)
    when 5 # Sepia Dark
      storm_color1 = Color.new(167, 149, 139)
      storm_color2 = Color.new(100, 75, 63, 128)
    when 6  # Old T'Vision
      storm_color1 = Color.new(143, 143, 143)
      storm_color2 = Color.new(118, 120, 123, 128)
    when 7  # Sepia Light
      storm_color1 = Color.new(230, 220, 209)
      storm_color2 = Color.new(220, 195, 170, 128)
    when 8 # Silver
      storm_color1 = Color.new(219, 219, 219)
      storm_color2 = Color.new(225, 225, 226, 128)
    when 9 # Milky White
      storm_color1 = Color.new(249, 249, 249)
      storm_color2 = Color.new(255, 255, 255, 128)
    when 10 # Light Cyan
      storm_color1 = Color.new(83, 232, 232)
      storm_color2 = Color.new(40, 232, 232, 128)
    when 11 # Light Red
      storm_color1 = Color.new(255, 9, 7)
      storm_color2 = Color.new(255, 0, 0, 128)
    when 12 # Blackened
      storm_color1 = Color.new(3, 3, 3)
      storm_color2 = Color.new(0, 0, 0, 128)
    when 13 # Cyan-Green
      storm_color1 = Color.new(0, 216, 102)
      storm_color2 = Color.new(0, 230, 128, 128)
    when 14 # Light Green
      storm_color1 = Color.new(112, 238, 110)
      storm_color2 = Color.new(60, 255, 90, 128)
    when 15 # Raspberry
      storm_color1 = Color.new(177, 19, 20)
      storm_color2 = Color.new(215, 19, 20, 128)
    when 16 # Dark Blue
      storm_color1 = Color.new(5, 54, 253)
      storm_color2 = Color.new(0, 0, 255, 128)
    when 17 # Light Yellow
      storm_color1 = Color.new(240, 235, 139)
      storm_color2 = Color.new(240, 235, 105, 128)
    when 18 # Green-Violet
      storm_color1 = Color.new(56, 73, 227)
      storm_color2 = Color.new(45, 90, 145, 128)
    when 19 # Ultra Violet
      storm_color1 = Color.new(129, 22, 204)
      storm_color2 = Color.new(185, 20, 245, 128)
    when 20 # Ultra Purple
      storm_color1 = Color.new(204, 23, 125)
      storm_color2 = Color.new(235, 0, 190, 128)
    when 21 # Ultra Lavender
      storm_color1 = Color.new(193, 180, 217)
      storm_color2 = Color.new(193, 155, 255, 128)
    when 22 # Ultra Flame
      storm_color1 = Color.new(245, 128, 43)
      storm_color2 = Color.new(240, 235, 139, 128)
    else # Normal, Realistic (Default)
      storm_color1 = Color.new(198, 243, 240)
      storm_color2 = Color.new(198, 243, 240, 128)
    end

    (0..31).each {|i|
      @storm_bitmap.fill_rect(33-i, i*2, 1, 2, storm_color2)
      @storm_bitmap.fill_rect(32-i, i*2, 1, 2, storm_color1)
      @storm_bitmap.fill_rect(31-i, i*2, 1, 2, storm_color2)
    }
#-------------------------------------------------------------------------------
    # Splash Bitmap

    @rain_splash = Bitmap.new(8, 5)
    case $game_screen.weather_variation
    when 1 # Blood
      splash_color1 = Color.new(141, 9, 9)
      splash_color2 = Color.new(141, 9, 9, 128)
    when 2 # Oil
      splash_color1 = Color.new(33, 15, 3)
      splash_color2 = Color.new(101, 67, 44, 128)
    when 3 # Acid
      splash_color1 = Color.new(105, 114, 66)
      splash_color2 = Color.new(76, 91, 43, 128)
    when 4 # Golden
      splash_color1 = Color.new(218, 207, 36)
      splash_color2 = Color.new(227, 217, 56, 128)
    when 5 # Sepia Dark
      splash_color1 = Color.new(167, 149, 139)
      splash_color2 = Color.new(100, 75, 63, 128)
    when 6  # Old T'Vision
      splash_color1 = Color.new(143, 143, 143)
      splash_color2 = Color.new(118, 120, 123, 128)
    when 7  # Sepia Light
      splash_color1 = Color.new(230, 220, 209)
      splash_color2 = Color.new(220, 195, 170, 128)
    when 8 # Silver
      splash_color1 = Color.new(219, 219, 219)
      splash_color2 = Color.new(225, 225, 226, 128)
    when 9 # Milky White
      splash_color1 = Color.new(249, 249, 249)
      splash_color2 = Color.new(255, 255, 255, 128)
    when 10 # Light Cyan
      splash_color1 = Color.new(83, 232, 232)
      splash_color2 = Color.new(40, 232, 232, 128)
    when 11 # Light Red
      splash_color1 = Color.new(255, 9, 7)
      splash_color2 = Color.new(255, 0, 0, 128)
    when 12 # Blackened
      splash_color1 = Color.new(3, 3, 3)
      splash_color2 = Color.new(0, 0, 0, 128)
    when 13 # Cyan-Green
      splash_color1 = Color.new(0, 216, 102)
      splash_color2 = Color.new(0, 230, 128, 128)
    when 14 # Light Green
      splash_color1 = Color.new(112, 238, 110)
      splash_color2 = Color.new(60, 255, 90, 128)
    when 15 # Raspberry
      splash_color1 = Color.new(177, 19, 20)
      splash_color2 = Color.new(215, 19, 20, 128)
    when 16 # Dark Blue
      splash_color1 = Color.new(5, 54, 253)
      splash_color2 = Color.new(0, 0, 255, 128)
    when 17 # Light Yellow
      splash_color1 = Color.new(240, 235, 139)
      splash_color2 = Color.new(240, 235, 105, 128)
    when 18 # Green-Violet
      splash_color1 = Color.new(56, 73, 227)
      splash_color2 = Color.new(45, 90, 145, 128)
    when 19 # Ultra Violet
      splash_color1 = Color.new(129, 22, 204)
      splash_color2 = Color.new(185, 20, 245, 128)
    when 20 # Ultra Purple
      splash_color1 = Color.new(204, 23, 125)
      splash_color2 = Color.new(235, 0, 190, 128)
    when 21 # Ultra Lavender
      splash_color1 = Color.new(193, 180, 217)
      splash_color2 = Color.new(193, 155, 255, 128)
    when 22 # Ultra Flame
      splash_color1 = Color.new(245, 128, 43)
      splash_color2 = Color.new(240, 235, 139, 128)
    else # Normal (Default)
      splash_color1 = Color.new(198, 243, 240)
      splash_color2 = Color.new(198, 243, 240, 128)
    end

    @rain_splash.fill_rect(1, 0, 6, 1, splash_color2)
    @rain_splash.fill_rect(1, 4, 6, 1, splash_color2)
    @rain_splash.fill_rect(0, 1, 1, 3, splash_color2)
    @rain_splash.fill_rect(7, 1, 1, 3, splash_color2)
    @rain_splash.set_pixel(1, 0, splash_color1)
    @rain_splash.set_pixel(0, 1, splash_color1)
#-------------------------------------------------------------------------------
    # Snow Bitmaps

    case $game_screen.weather_variation
    when 1 # Crimson
      snow_color1 = Color.new(141, 9, 9)
      snow_color2 = Color.new(141, 9, 9, 128)
      snow_color3 = Color.new(141, 9, 9, 204)
    else # Normal (Default)
      snow_color1 = Color.new(255, 255, 255)
      snow_color2 = Color.new(255, 255, 255, 128)
      snow_color3 = Color.new(255, 255, 255, 204)
    end

    # Used for Blowing Snow
    @snow_bitmap = Bitmap.new(6, 6)
    @snow_bitmap.fill_rect(0, 1, 6, 4, snow_color2)
    @snow_bitmap.fill_rect(1, 0, 4, 6, snow_color2)
    @snow_bitmap.fill_rect(1, 2, 4, 2, snow_color1)
    @snow_bitmap.fill_rect(2, 1, 2, 4, snow_color1)

    # Used for Falling Snow
    @sprites = []
    @snow_bitmaps = []
    @snow_bitmaps[0] = Bitmap.new(3, 3)
    @snow_bitmaps[0].fill_rect(0, 0, 3, 3, snow_color2)
    @snow_bitmaps[0].fill_rect(0, 1, 3, 1, snow_color3)
    @snow_bitmaps[0].fill_rect(1, 0, 1, 3, snow_color3)
    @snow_bitmaps[0].set_pixel(1, 1, snow_color1)

    @snow_bitmaps[1] = Bitmap.new(4, 4)
    @snow_bitmaps[1].fill_rect(0, 1, 4, 2, snow_color2)
    @snow_bitmaps[1].fill_rect(1, 0, 2, 4, snow_color2)
    @snow_bitmaps[1].fill_rect(1, 1, 2, 2, snow_color1)

    @snow_bitmaps[2] = Bitmap.new(5, 5)
    @snow_bitmaps[2].fill_rect(0, 1, 5, 3, snow_color3)
    @snow_bitmaps[2].fill_rect(1, 0, 3, 5, snow_color3)
    @snow_bitmaps[2].fill_rect(1, 1, 3, 3, snow_color2)
    @snow_bitmaps[2].fill_rect(2, 1, 3, 1, snow_color1)
    @snow_bitmaps[2].fill_rect(1, 2, 1, 3, snow_color1)

    @snow_bitmaps[3] = Bitmap.new(7, 7)
    @snow_bitmaps[3].fill_rect(1, 1, 5, 5, snow_color3)
    @snow_bitmaps[3].fill_rect(2, 0, 7, 3, snow_color3)
    @snow_bitmaps[3].fill_rect(0, 2, 3, 7, snow_color3)
    @snow_bitmaps[3].fill_rect(2, 1, 5, 3, snow_color2)
    @snow_bitmaps[3].fill_rect(1, 2, 3, 5, snow_color2)
    @snow_bitmaps[3].fill_rect(2, 2, 3, 3, snow_color1)
    @snow_bitmaps[3].fill_rect(3, 1, 5, 1, snow_color1)
    @snow_bitmaps[3].fill_rect(1, 3, 1, 5, snow_color1)
#-------------------------------------------------------------------------------
    #Hail

    case $game_screen.weather_variation
    when 1 # Blood Hail
      hail_color1 = Color.new(141, 9, 9, 150)
      hail_color2 = Color.new(180, 9, 9, 150)
      hail_color3 = Color.new(165, 9, 9, 150)
      hail_color4 = Color.new(190, 9, 9, 150)
    when 2 # Oil Hail
      hail_color1 = Color.new(33, 15, 3, 150)
      hail_color2 = Color.new(65, 15, 15, 150)
      hail_color3 = Color.new(38, 36, 15, 150)
      hail_color4 = Color.new(101, 67, 44, 150)
    when 3 # Acid Hail
      hail_color1 = Color.new(76, 91, 43, 150)
      hail_color2 = Color.new(76, 112, 43, 150)
      hail_color3 = Color.new(40, 90, 40, 150)
      hail_color4 = Color.new(76, 91, 43, 150)
    when 4 # Golden Hail
      hail_color1 = Color.new(218, 207, 36, 150)
      hail_color2 = Color.new(220, 230, 25, 150)
      hail_color3 = Color.new(255, 220, 0, 150)
      hail_color4 = Color.new(227, 217, 56, 150)
    when 5 # Sepia Dark Hail
      hail_color1 = Color.new(100, 75, 63, 150)
      hail_color2 = Color.new(102, 89, 74, 150)
      hail_color3 = Color.new(133, 105, 40, 150)
      hail_color4 = Color.new(100, 75, 63, 150)
    when 6 # Old T'Vision Hail
      hail_color1 = Color.new(143, 143, 143, 150)
      hail_color2 = Color.new(104, 104, 104, 150)
      hail_color3 = Color.new(89, 89, 89, 150)
      hail_color4 = Color.new(118, 120, 123, 150)
    when 7 # Sepia Light Hail
      hail_color1 = Color.new(230, 220, 209, 150)
      hail_color2 = Color.new(240, 220, 209, 150)
      hail_color3 = Color.new(196, 181, 166, 150)
      hail_color4 = Color.new(220, 195, 170, 150)
    when 8 # Silver Hail
      hail_color1 = Color.new(219, 219, 219, 150)
      hail_color2 = Color.new(165, 179, 189, 150)
      hail_color3 = Color.new(166, 168, 171, 150)
      hail_color4 = Color.new(225, 225, 226, 150)
    when 9 # Milky White Hail
      hail_color1 = Color.new(249, 249, 249, 150)
      hail_color2 = Color.new(236, 236, 236, 150)
      hail_color3 = Color.new(252, 252, 252, 150)
      hail_color4 = Color.new(255, 255, 255, 150)
    when 10 # Light Cyan Hail
      hail_color1 = Color.new(83, 232, 232, 150)
      hail_color2 = Color.new(64, 245, 245, 150)
      hail_color3 = Color.new(41, 219, 209, 150)
      hail_color4 = Color.new(40, 232, 232, 150)
    when 11 # Light Red Hail
      hail_color1 = Color.new(255, 9, 7, 150)
      hail_color2 = Color.new(232, 4, 9, 150)
      hail_color3 = Color.new(255, 0, 9, 150)
      hail_color4 = Color.new(255, 0, 0, 150)
    when 12 # Blackened Hail
      hail_color1 = Color.new(3, 3, 3, 150)
      hail_color2 = Color.new(5, 5, 5, 150)
      hail_color3 = Color.new(2, 2, 2, 150)
      hail_color4 = Color.new(0, 0, 0, 150)
    when 13 # Cyan-green Hail
      hail_color1 = Color.new(0, 216, 102, 150)
      hail_color2 = Color.new(0, 227, 77, 150)
      hail_color3 = Color.new(0, 255, 77, 150)
      hail_color4 = Color.new(0, 230, 128, 150)
    when 14 # Light Green Hail
      hail_color1 = Color.new(112, 238, 110, 150)
      hail_color2 = Color.new(84, 234, 83, 150)
      hail_color3 = Color.new(37, 218, 36, 150)
      hail_color4 = Color.new(60, 255, 90, 150)
    when 15 # Raspberry Hail
      hail_color1 = Color.new(177, 19, 20, 150)
      hail_color2 = Color.new(189, 19, 10, 150)
      hail_color3 = Color.new(214, 5, 10, 150)
      hail_color4 = Color.new(215, 19, 20, 150)
    when 16 # Dark Blue Hail
      hail_color1 = Color.new(5, 54, 253, 150)
      hail_color2 = Color.new(5, 31, 207, 150)
      hail_color3 = Color.new(5, 0, 200, 150)
      hail_color4 = Color.new(0, 0, 255, 150)
    when 17 # Light Yellow Hail
      hail_color1 = Color.new(240, 235, 139, 150)
      hail_color2 = Color.new(240, 245, 78, 150)
      hail_color3 = Color.new(240, 255, 48, 150)
      hail_color4 = Color.new(240, 235, 105, 150)
    when 18 # Green-Violet Hail
      hail_color1 = Color.new(56, 73, 227, 150)
      hail_color2 = Color.new(71, 135, 214, 150)
      hail_color3 = Color.new(56, 181, 171, 150)
      hail_color4 = Color.new(45, 90, 145, 150)
    when 19 # Ultra-Violet Hail
      hail_color1 = Color.new(129, 22, 204, 150)
      hail_color2 = Color.new(74, 59, 232, 150)
      hail_color3 = Color.new(51, 59, 199, 150)
      hail_color4 = Color.new(85, 20, 245, 150)
    when 20 # Ultra-Purple Hail
      hail_color1 = Color.new(204, 23, 125, 150)
      hail_color2 = Color.new(224, 23, 186, 150)
      hail_color3 = Color.new(204, 15, 179, 150)
      hail_color4 = Color.new(235, 0, 190, 150)
    when 21 # Ultra Lavender Hail
      hail_color1 = Color.new(193, 180, 217, 150)
      hail_color2 = Color.new(201, 184, 230, 150)
      hail_color3 = Color.new(201, 168, 230, 150)
      hail_color4 = Color.new(193, 155, 255, 150)
    when 22 # Ultra Flame Hail
      hail_color1 = Color.new(245, 128, 43, 150)
      hail_color2 = Color.new(238, 206, 67, 150)
      hail_color3 = Color.new(233, 225, 82, 150)
      hail_color4 = Color.new(240, 235, 139, 150)
    else # Normal hail
      hail_color1 = Color.new(215, 227, 227, 150)
      hail_color2 = Color.new(214, 217, 217, 150)
      hail_color3 = Color.new(233, 233, 233, 250)
      hail_color4 = Color.new(222, 239, 243, 250)
    end

    @hail_bitmap = Bitmap.new(4, 4)
    @hail_bitmap.fill_rect(1, 0, 2, 1, hail_color1)
    @hail_bitmap.fill_rect(0, 1, 1, 2, hail_color1)
    @hail_bitmap.fill_rect(3, 1, 1, 2, hail_color2)
    @hail_bitmap.fill_rect(1, 3, 2, 1, hail_color2)
    @hail_bitmap.fill_rect(1, 1, 2, 2, hail_color3)
    @hail_bitmap.set_pixel(1, 1, hail_color4)
#-------------------------------------------------------------------------------
    #Sakura Petals

    sakura_color1 = Color.new(255, 167, 192, 255)
    sakura_color2 = Color.new(213, 106, 136, 255)

    @sakura_bitmap = Bitmap.new(4, 4)
    @sakura_bitmap.fill_rect(0, 3, 1, 1, sakura_color1)
    @sakura_bitmap.fill_rect(1, 2, 1, 1, sakura_color1)
    @sakura_bitmap.fill_rect(2, 1, 1, 1, sakura_color1)
    @sakura_bitmap.fill_rect(3, 0, 1, 1, sakura_color1)
    @sakura_bitmap.fill_rect(1, 3, 1, 1, sakura_color2)
    @sakura_bitmap.fill_rect(2, 2, 1, 1, sakura_color2)
    @sakura_bitmap.fill_rect(3, 1, 1, 1, sakura_color2)
#-------------------------------------------------------------------------------
    # Leaf Bitmaps

    @leaf_bitmaps = []
    case $game_screen.weather_variation
    when 1 # Yellow leaves
      leaf_color1 = Color.new(110, 104, 3)
      leaf_color2 = Color.new(205, 194, 23)
      leaf_color3 = Color.new(186, 176, 14)
      leaf_color4 = Color.new(218, 207, 36)
      leaf_color5 = Color.new(227, 217, 56)
    when 2 # Red leaves
      leaf_color1 = Color.new(255, 0, 0)
      leaf_color2 = Color.new(179, 17, 17)
      leaf_color3 = Color.new(141, 9, 9)
      leaf_color4 = Color.new(179, 17, 17)
      leaf_color5 = Color.new(141, 9, 9)
    when 3 # Brown leaves
      leaf_color1 = Color.new(248, 88, 0)
      leaf_color2 = Color.new(144, 80, 56)
      leaf_color3 = Color.new(152, 0, 0)
      leaf_color4 = Color.new(232, 160, 128)
      leaf_color5 = Color.new(72, 40, 0)
    else # Green (Default)
      leaf_color1 = Color.new(62, 76, 31)
      leaf_color2 = Color.new(76, 91, 43)
      leaf_color3 = Color.new(105, 114, 66)
      leaf_color4 = Color.new(128, 136, 88)
      leaf_color5 = Color.new(146, 154, 106)
    end

    # 1st leaf bitmap
    @leaf_bitmaps[0] = Bitmap.new(8, 8)
    @leaf_bitmaps[0].set_pixel(1, 0, leaf_color1)
    @leaf_bitmaps[0].set_pixel(1, 1, leaf_color2)
    @leaf_bitmaps[0].set_pixel(2, 1, leaf_color1)
    @leaf_bitmaps[0].set_pixel(2, 2, leaf_color3)
    @leaf_bitmaps[0].set_pixel(3, 2, leaf_color1)
    @leaf_bitmaps[0].set_pixel(4, 2, leaf_color3)
    @leaf_bitmaps[0].fill_rect(2, 3, 3, 1, leaf_color2)
    @leaf_bitmaps[0].set_pixel(5, 3, leaf_color3)
    @leaf_bitmaps[0].fill_rect(2, 4, 2, 1, leaf_color2)
    @leaf_bitmaps[0].set_pixel(4, 4, leaf_color1)
    @leaf_bitmaps[0].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[0].set_pixel(6, 4, leaf_color3)
    @leaf_bitmaps[0].set_pixel(3, 5, leaf_color2)
    @leaf_bitmaps[0].set_pixel(4, 5, leaf_color1)
    @leaf_bitmaps[0].set_pixel(5, 5, leaf_color3)
    @leaf_bitmaps[0].set_pixel(6, 5, leaf_color4)
    @leaf_bitmaps[0].set_pixel(4, 6, leaf_color2)
    @leaf_bitmaps[0].set_pixel(5, 6, leaf_color1)
    @leaf_bitmaps[0].set_pixel(6, 6, leaf_color4)
    @leaf_bitmaps[0].set_pixel(6, 7, leaf_color3)

    # 2nd leaf bitmap
    @leaf_bitmaps[1] = Bitmap.new(8, 8)
    @leaf_bitmaps[1].fill_rect(1, 1, 1, 2, leaf_color2)
    @leaf_bitmaps[1].fill_rect(2, 2, 2, 1, leaf_color3)
    @leaf_bitmaps[1].set_pixel(4, 2, leaf_color4)
    @leaf_bitmaps[1].fill_rect(2, 3, 2, 1, leaf_color1)
    @leaf_bitmaps[1].fill_rect(4, 3, 2, 1, leaf_color4)
    @leaf_bitmaps[1].set_pixel(2, 4, leaf_color2)
    @leaf_bitmaps[1].set_pixel(3, 4, leaf_color1)
    @leaf_bitmaps[1].set_pixel(4, 4, leaf_color3)
    @leaf_bitmaps[1].fill_rect(5, 4, 2, 1, leaf_color4)
    @leaf_bitmaps[1].set_pixel(3, 5, leaf_color2)
    @leaf_bitmaps[1].set_pixel(4, 5, leaf_color1)
    @leaf_bitmaps[1].set_pixel(5, 5, leaf_color3)
    @leaf_bitmaps[1].set_pixel(6, 5, leaf_color4)
    @leaf_bitmaps[1].set_pixel(5, 6, leaf_color1)
    @leaf_bitmaps[1].fill_rect(6, 6, 2, 1, leaf_color3)

    # 3rd leaf bitmap
    @leaf_bitmaps[2] = Bitmap.new(8, 8)
    @leaf_bitmaps[2].set_pixel(1, 1, leaf_color1)
    @leaf_bitmaps[2].fill_rect(1, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[2].set_pixel(2, 3, leaf_color2)
    @leaf_bitmaps[2].set_pixel(3, 3, leaf_color1)
    @leaf_bitmaps[2].set_pixel(4, 3, leaf_color2)
    @leaf_bitmaps[2].fill_rect(2, 4, 2, 1, leaf_color2)
    @leaf_bitmaps[2].set_pixel(4, 4, leaf_color1)
    @leaf_bitmaps[2].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[2].set_pixel(3, 5, leaf_color2)
    @leaf_bitmaps[2].set_pixel(4, 5, leaf_color1)
    @leaf_bitmaps[2].fill_rect(5, 5, 2, 1, leaf_color3)
    @leaf_bitmaps[2].fill_rect(4, 6, 2, 1, leaf_color2)
    @leaf_bitmaps[2].set_pixel(6, 6, leaf_color4)
    @leaf_bitmaps[2].set_pixel(6, 7, leaf_color3)

    # 4th leaf bitmap
    @leaf_bitmaps[3] = Bitmap.new(8, 8)
    @leaf_bitmaps[3].fill_rect(0, 3, 1, 2, leaf_color1)
    @leaf_bitmaps[3].set_pixel(1, 4, leaf_color2)
    @leaf_bitmaps[3].set_pixel(2, 4, leaf_color3)
    @leaf_bitmaps[3].set_pixel(3, 4, leaf_color4)
    @leaf_bitmaps[3].set_pixel(4, 4, leaf_color1)
    @leaf_bitmaps[3].set_pixel(7, 4, leaf_color2)
    @leaf_bitmaps[3].set_pixel(1, 5, leaf_color1)
    @leaf_bitmaps[3].set_pixel(2, 5, leaf_color2)
    @leaf_bitmaps[3].set_pixel(3, 5, leaf_color4)
    @leaf_bitmaps[3].set_pixel(4, 5, leaf_color5)
    @leaf_bitmaps[3].set_pixel(5, 5, leaf_color4)
    @leaf_bitmaps[3].set_pixel(6, 5, leaf_color3)
    @leaf_bitmaps[3].set_pixel(7, 5, leaf_color2)
    @leaf_bitmaps[3].fill_rect(2, 6, 2, 1, leaf_color2)
    @leaf_bitmaps[3].set_pixel(4, 6, leaf_color4)
    @leaf_bitmaps[3].set_pixel(5, 6, leaf_color3)
    @leaf_bitmaps[3].set_pixel(6, 6, leaf_color2)

    # 5th leaf bitmap
    @leaf_bitmaps[4] = Bitmap.new(8, 8)
    @leaf_bitmaps[4].set_pixel(6, 2, leaf_color2)
    @leaf_bitmaps[4].set_pixel(7, 2, leaf_color1)
    @leaf_bitmaps[4].fill_rect(4, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[4].set_pixel(6, 3, leaf_color3)
    @leaf_bitmaps[4].set_pixel(2, 4, leaf_color1)
    @leaf_bitmaps[4].fill_rect(3, 4, 2, 1, leaf_color3)
    @leaf_bitmaps[4].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[4].set_pixel(6, 4, leaf_color3)
    @leaf_bitmaps[4].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[4].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[4].set_pixel(3, 5, leaf_color4)
    @leaf_bitmaps[4].set_pixel(4, 5, leaf_color5)
    @leaf_bitmaps[4].set_pixel(5, 5, leaf_color2)
    @leaf_bitmaps[4].set_pixel(2, 6, leaf_color1)
    @leaf_bitmaps[4].fill_rect(3, 6, 2, 1, leaf_color2)

    # 6th leaf bitmap
    @leaf_bitmaps[5] = Bitmap.new(8, 8)
    @leaf_bitmaps[5].fill_rect(6, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[5].fill_rect(4, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[5].set_pixel(6, 3, leaf_color3)
    @leaf_bitmaps[5].set_pixel(3, 4, leaf_color2)
    @leaf_bitmaps[5].set_pixel(4, 4, leaf_color3)
    @leaf_bitmaps[5].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[5].set_pixel(6, 4, leaf_color5)
    @leaf_bitmaps[5].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[5].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[5].fill_rect(3, 5, 2, 1, leaf_color5)
    @leaf_bitmaps[5].set_pixel(5, 5, leaf_color4)
    @leaf_bitmaps[5].set_pixel(2, 6, leaf_color2)
    @leaf_bitmaps[5].set_pixel(3, 6, leaf_color3)
    @leaf_bitmaps[5].set_pixel(4, 6, leaf_color4)

    # 7th leaf bitmap
    @leaf_bitmaps[6] = Bitmap.new(8, 8)
    @leaf_bitmaps[6].fill_rect(6, 1, 1, 2, leaf_color2)
    @leaf_bitmaps[6].fill_rect(4, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[6].fill_rect(6, 2, 1, 2, leaf_color1)
    @leaf_bitmaps[6].fill_rect(3, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[6].set_pixel(5, 3, leaf_color3)
    @leaf_bitmaps[6].set_pixel(2, 4, leaf_color2)
    @leaf_bitmaps[6].set_pixel(3, 4, leaf_color3)
    @leaf_bitmaps[6].set_pixel(4, 4, leaf_color4)
    @leaf_bitmaps[6].set_pixel(5, 4, leaf_color2)
    @leaf_bitmaps[6].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[6].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[6].fill_rect(3, 5, 2, 1, leaf_color2)
    @leaf_bitmaps[6].set_pixel(1, 6, leaf_color1)
    @leaf_bitmaps[6].set_pixel(2, 6, leaf_color2)

    # 8th leaf bitmap
    @leaf_bitmaps[7] = Bitmap.new(8, 8)
    @leaf_bitmaps[7].set_pixel(6, 1, leaf_color2)
    @leaf_bitmaps[7].fill_rect(4, 2, 3, 2, leaf_color2)
    @leaf_bitmaps[7].set_pixel(3, 3, leaf_color1)
    @leaf_bitmaps[7].set_pixel(2, 4, leaf_color1)
    @leaf_bitmaps[7].set_pixel(3, 4, leaf_color2)
    @leaf_bitmaps[7].fill_rect(4, 4, 2, 1, leaf_color3)
    @leaf_bitmaps[7].set_pixel(1, 5, leaf_color1)
    @leaf_bitmaps[7].set_pixel(2, 5, leaf_color2)
    @leaf_bitmaps[7].fill_rect(3, 5, 2, 1, leaf_color4)
    @leaf_bitmaps[7].set_pixel(2, 6, leaf_color2)
    @leaf_bitmaps[7].set_pixel(3, 6, leaf_color4)

    # 9th leaf bitmap
    @leaf_bitmaps[8] = Bitmap.new(8, 8)
    @leaf_bitmaps[8].fill_rect(6, 1, 1, 2, leaf_color2)
    @leaf_bitmaps[8].fill_rect(4, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[8].fill_rect(6, 2, 1, 2, leaf_color1)
    @leaf_bitmaps[8].fill_rect(3, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[8].set_pixel(5, 3, leaf_color3)
    @leaf_bitmaps[8].set_pixel(2, 4, leaf_color2)
    @leaf_bitmaps[8].set_pixel(3, 4, leaf_color3)
    @leaf_bitmaps[8].set_pixel(4, 4, leaf_color4)
    @leaf_bitmaps[8].set_pixel(5, 4, leaf_color2)
    @leaf_bitmaps[8].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[8].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[8].fill_rect(3, 5, 2, 1, leaf_color2)
    @leaf_bitmaps[8].set_pixel(1, 6, leaf_color1)
    @leaf_bitmaps[8].set_pixel(2, 6, leaf_color2)

    # 10th leaf bitmap
    @leaf_bitmaps[9] = Bitmap.new(8, 8)
    @leaf_bitmaps[9].fill_rect(6, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[9].fill_rect(4, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[9].set_pixel(6, 3, leaf_color3)
    @leaf_bitmaps[9].set_pixel(3, 4, leaf_color2)
    @leaf_bitmaps[9].set_pixel(4, 4, leaf_color3)
    @leaf_bitmaps[9].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[9].set_pixel(6, 4, leaf_color5)
    @leaf_bitmaps[9].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[9].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[9].fill_rect(3, 5, 2, 1, leaf_color5)
    @leaf_bitmaps[9].set_pixel(5, 5, leaf_color4)
    @leaf_bitmaps[9].set_pixel(2, 6, leaf_color2)
    @leaf_bitmaps[9].set_pixel(3, 6, leaf_color3)
    @leaf_bitmaps[9].set_pixel(4, 6, leaf_color4)

    # 11th leaf bitmap
    @leaf_bitmaps[10] = Bitmap.new(8, 8)
    @leaf_bitmaps[10].set_pixel(6, 2, leaf_color2)
    @leaf_bitmaps[10].set_pixel(7, 2, leaf_color1)
    @leaf_bitmaps[10].fill_rect(4, 3, 2, 1, leaf_color2)
    @leaf_bitmaps[10].set_pixel(6, 3, leaf_color3)
    @leaf_bitmaps[10].set_pixel(2, 4, leaf_color1)
    @leaf_bitmaps[10].fill_rect(3, 4, 2, 1, leaf_color3)
    @leaf_bitmaps[10].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[10].set_pixel(6, 4, leaf_color3)
    @leaf_bitmaps[10].set_pixel(1, 5, leaf_color2)
    @leaf_bitmaps[10].set_pixel(2, 5, leaf_color3)
    @leaf_bitmaps[10].set_pixel(3, 5, leaf_color4)
    @leaf_bitmaps[10].set_pixel(4, 5, leaf_color5)
    @leaf_bitmaps[10].set_pixel(5, 5, leaf_color2)
    @leaf_bitmaps[10].set_pixel(2, 6, leaf_color1)
    @leaf_bitmaps[10].fill_rect(3, 6, 2, 1, leaf_color2)

    # 12th leaf bitmap
    @leaf_bitmaps[11] = Bitmap.new(8, 8)
    @leaf_bitmaps[11].fill_rect(0, 3, 1, 2, leaf_color1)
    @leaf_bitmaps[11].set_pixel(1, 4, leaf_color2)
    @leaf_bitmaps[11].set_pixel(2, 4, leaf_color3)
    @leaf_bitmaps[11].set_pixel(3, 4, leaf_color4)
    @leaf_bitmaps[11].set_pixel(4, 4, leaf_color1)
    @leaf_bitmaps[11].set_pixel(7, 4, leaf_color2)
    @leaf_bitmaps[11].set_pixel(1, 5, leaf_color1)
    @leaf_bitmaps[11].set_pixel(2, 5, leaf_color2)
    @leaf_bitmaps[11].set_pixel(3, 5, leaf_color4)
    @leaf_bitmaps[11].set_pixel(4, 5, leaf_color5)
    @leaf_bitmaps[11].set_pixel(5, 5, leaf_color4)
    @leaf_bitmaps[11].set_pixel(6, 5, leaf_color3)
    @leaf_bitmaps[11].set_pixel(7, 5, leaf_color2)
    @leaf_bitmaps[11].fill_rect(2, 6, 2, 1, leaf_color2)
    @leaf_bitmaps[11].set_pixel(4, 6, leaf_color4)
    @leaf_bitmaps[11].set_pixel(5, 6, leaf_color3)
    @leaf_bitmaps[11].set_pixel(6, 6, leaf_color2)

    # 13th leaf bitmap
    @leaf_bitmaps[12] = Bitmap.new(8, 8)
    @leaf_bitmaps[12].set_pixel(1, 1, leaf_color1)
    @leaf_bitmaps[12].fill_rect(1, 2, 2, 1, leaf_color2)
    @leaf_bitmaps[12].set_pixel(2, 3, leaf_color2)
    @leaf_bitmaps[12].set_pixel(3, 3, leaf_color1)
    @leaf_bitmaps[12].set_pixel(4, 3, leaf_color2)
    @leaf_bitmaps[12].fill_rect(2, 4, 2, 1, leaf_color2)
    @leaf_bitmaps[12].set_pixel(4, 4, leaf_color1)
    @leaf_bitmaps[12].set_pixel(5, 4, leaf_color4)
    @leaf_bitmaps[12].set_pixel(3, 5, leaf_color2)
    @leaf_bitmaps[12].set_pixel(4, 5, leaf_color1)
    @leaf_bitmaps[12].fill_rect(5, 5, 2, 1, leaf_color3)
    @leaf_bitmaps[12].fill_rect(4, 6, 2, 1, leaf_color2)
    @leaf_bitmaps[12].set_pixel(6, 6, leaf_color4)
    @leaf_bitmaps[12].set_pixel(6, 7, leaf_color3)
#-------------------------------------------------------------------------------
    #Autumn leaves

    @autumn_leaf_bitmaps = []
    case $game_screen.weather_variation
    when 1 # Yellow autumn
      autumn_leaf_color1 = Color.new(110, 104, 3)
      autumn_leaf_color2 = Color.new(205, 194, 23)
      autumn_leaf_color3 = Color.new(186, 176, 14)
      autumn_leaf_color4 = Color.new(218, 207, 36)
      autumn_leaf_color5 = Color.new(227, 217, 56)
    when 2 # Red Maple leaves
      autumn_leaf_color1 = Color.new(255, 0, 0)
      autumn_leaf_color2 = Color.new(179, 17, 17)
      autumn_leaf_color3 = Color.new(141, 9, 9)
      autumn_leaf_color4 = Color.new(179, 17, 17)
      autumn_leaf_color5 = Color.new(141, 9, 9)
    when 3 # Brown autumn leaves
      autumn_leaf_color1 = Color.new(248, 88, 0)
      autumn_leaf_color2 = Color.new(144, 80, 56)
      autumn_leaf_color3 = Color.new(152, 0, 0)
      autumn_leaf_color4 = Color.new(232, 160, 128)
      autumn_leaf_color5 = Color.new(72, 40, 0)
    else # Autumn leaves
      autumn_leaf_color1 = Color.new(62, 76, 31)
      autumn_leaf_color2 = Color.new(76, 91, 43)
      autumn_leaf_color3 = Color.new(105, 114, 66)
      autumn_leaf_color4 = Color.new(128, 136, 88)
      autumn_leaf_color5 = Color.new(146, 154, 106)
    end

    @autumn_leaf_bitmaps.push(Bitmap.new(8, 8))
    # 1st of the autumn leaves bitmaps
    @autumn_leaf_bitmaps[0].set_pixel(5, 1, autumn_leaf_color2)
    @autumn_leaf_bitmaps[0].set_pixel(6, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].set_pixel(7, 1, autumn_leaf_color4)
    @autumn_leaf_bitmaps[0].set_pixel(3, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[0].fill_rect(4, 2, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].set_pixel(6, 2, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].set_pixel(2, 3, autumn_leaf_color2)
    @autumn_leaf_bitmaps[0].set_pixel(3, 3, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].fill_rect(4, 3, 2, 1, autumn_leaf_color4)
    @autumn_leaf_bitmaps[0].set_pixel(1, 4, autumn_leaf_color2)
    @autumn_leaf_bitmaps[0].set_pixel(2, 4, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].set_pixel(3, 4, autumn_leaf_color4)
    @autumn_leaf_bitmaps[0].set_pixel(1, 5, autumn_leaf_color1)
    @autumn_leaf_bitmaps[0].set_pixel(2, 5, autumn_leaf_color4)
    @autumn_leaf_bitmaps[0].set_pixel(0, 6, autumn_leaf_color2)
    @autumn_leaf_bitmaps[0].set_pixel(1, 6, autumn_leaf_color4)
    @autumn_leaf_bitmaps[0].set_pixel(0, 7, autumn_leaf_color4)

    # 2nd of the autumn leaves bitmaps
    @autumn_leaf_bitmaps.push(Bitmap.new(8, 8))
    @autumn_leaf_bitmaps[1].set_pixel(3, 0, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(7, 0, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(3, 1, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].set_pixel(4, 1, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].set_pixel(6, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(0, 2, autumn_leaf_color4)
    @autumn_leaf_bitmaps[1].set_pixel(1, 2, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(2, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].set_pixel(3, 2, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].set_pixel(4, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].set_pixel(5, 2, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].fill_rect(1, 3, 3, 1, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].fill_rect(4, 3, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(6, 3, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].set_pixel(2, 4, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].fill_rect(3, 4, 3, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(6, 4, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].set_pixel(7, 4, autumn_leaf_color5)
    @autumn_leaf_bitmaps[1].set_pixel(1, 5, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].fill_rect(2, 5, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(4, 5, autumn_leaf_color2)
    @autumn_leaf_bitmaps[1].set_pixel(5, 5, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].fill_rect(1, 6, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].fill_rect(4, 6, 2, 1, autumn_leaf_color3)
    @autumn_leaf_bitmaps[1].set_pixel(0, 7, autumn_leaf_color1)
    @autumn_leaf_bitmaps[1].set_pixel(5, 7, autumn_leaf_color5)

    # 3rd of the autumn leaves bitmaps
    @autumn_leaf_bitmaps.push(Bitmap.new(8, 8))
    @autumn_leaf_bitmaps[2].set_pixel(7, 1, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(6, 2, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(7, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[2].set_pixel(5, 3, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(6, 3, autumn_leaf_color1)
    @autumn_leaf_bitmaps[2].set_pixel(4, 4, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(5, 4, autumn_leaf_color1)
    @autumn_leaf_bitmaps[2].set_pixel(6, 4, autumn_leaf_color2)
    @autumn_leaf_bitmaps[2].fill_rect(2, 5, 2, 1, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(4, 5, autumn_leaf_color1)
    @autumn_leaf_bitmaps[2].set_pixel(5, 5, autumn_leaf_color2)
    @autumn_leaf_bitmaps[2].set_pixel(1, 6, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].fill_rect(2, 6, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[2].set_pixel(4, 6, autumn_leaf_color2)
    @autumn_leaf_bitmaps[2].set_pixel(0, 7, autumn_leaf_color4)
    @autumn_leaf_bitmaps[2].set_pixel(1, 7, autumn_leaf_color1)
    @autumn_leaf_bitmaps[2].set_pixel(2, 7, autumn_leaf_color2)

    # 4th of the autumn leaves bitmaps
    @autumn_leaf_bitmaps.push(Bitmap.new(8, 8))
    @autumn_leaf_bitmaps[3].set_pixel(3, 0, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(7, 0, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(3, 1, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].set_pixel(4, 1, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].set_pixel(6, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(0, 2, autumn_leaf_color4)
    @autumn_leaf_bitmaps[3].set_pixel(1, 2, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(2, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].set_pixel(3, 2, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].set_pixel(4, 2, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].set_pixel(5, 2, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].fill_rect(1, 3, 3, 1, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].fill_rect(4, 3, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(6, 3, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].set_pixel(2, 4, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].fill_rect(3, 4, 3, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(6, 4, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].set_pixel(7, 4, autumn_leaf_color5)
    @autumn_leaf_bitmaps[3].set_pixel(1, 5, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].fill_rect(2, 5, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(4, 5, autumn_leaf_color2)
    @autumn_leaf_bitmaps[3].set_pixel(5, 5, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].fill_rect(1, 6, 2, 1, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].fill_rect(4, 6, 2, 1, autumn_leaf_color3)
    @autumn_leaf_bitmaps[3].set_pixel(0, 7, autumn_leaf_color1)
    @autumn_leaf_bitmaps[3].set_pixel(5, 7, autumn_leaf_color5)
#-------------------------------------------------------------------------------
    # Petals

    @petal_bitmaps = []
    case $game_screen.weather_variation
    when 1 # Lavender
      petal_color1 = Color.new(213, 80, 254)
      petal_color2 = Color.new(176, 92, 201)
      petal_color3 = Color.new(154, 86, 175)
    when 2 # Tiger Lily
      petal_color1 = Color.new(254, 154, 40)
      petal_color2 = Color.new(254, 162, 65)
      petal_color3 = Color.new(254, 135, 71)
    when 3 # Pink
      petal_color1 = Color.new(247, 80, 119)
      petal_color2 = Color.new(247, 101, 138)
      petal_color3 = Color.new(244, 105, 165)
    when 4 # Blue
      petal_color1 = Color.new(109, 126, 238)
      petal_color2 = Color.new(128, 143, 240)
      petal_color3 = Color.new(129, 165, 236)
    when 5 # Green
      petal_color1 = Color.new(136, 217, 135)
      petal_color2 = Color.new(153, 221, 152)
      petal_color3 = Color.new(170, 221, 154)
    when 6 # Blue-Purple
      petal_color1 = Color.new(94, 44, 170)
      petal_color2 = Color.new(105, 62, 170)
      petal_color3 = Color.new(78, 60, 168)
    when 7 # Cherry Petals
      petal_color1 = Color.new(250, 250, 250)
      petal_color2 = Color.new(243, 243, 243)
      petal_color3 = Color.new(253, 253, 253)
    when 8 # Tea Rose Petals
      petal_color1 = Color.new(238, 231, 109)
      petal_color2 = Color.new(233, 225, 82)
      petal_color3 = Color.new(242, 238, 168)
    when 9 # Yellow Rose Petals
      petal_color1 = Color.new(253, 253, 5)
      petal_color2 = Color.new(255, 245, 110)
      petal_color3 = Color.new(255, 242, 0)
    when 10 # Raspberry Petals
      petal_color1 = Color.new(211, 45, 45)
      petal_color2 = Color.new(187, 25, 23)
      petal_color3 = Color.new(206, 37, 32)
    when 11 # Dark Blue Petals
      petal_color1 = Color.new(23, 40, 204)
      petal_color2 = Color.new(4, 17, 137)
      petal_color3 = Color.new(36, 53, 217)
    when 12 # Violet Petals
      petal_color1 = Color.new(129, 22, 204)
      petal_color2 = Color.new(99, 8, 163)
      petal_color3 = Color.new(156, 56, 227)
    when 13 # Light Sepia Petals
      petal_color1 = Color.new(160, 148, 135)
      petal_color2 = Color.new(163, 152, 140)
      petal_color3 = Color.new(187, 183, 178)
    when 14 # Dark Sepia Petals
      petal_color1 = Color.new(150, 133, 115)
      petal_color2 = Color.new(137, 108, 78)
      petal_color3 = Color.new(160, 148, 135)
    when 15 # Old T'Vision Petals
      petal_color1 = Color.new(130, 130, 130)
      petal_color2 = Color.new(94, 94, 94)
      petal_color3 = Color.new(110, 110, 110)
    else # Rose
      petal_color1 = Color.new(255, 0, 0)
      petal_color2 = Color.new(179, 17, 17)
      petal_color3 = Color.new(141, 9, 9)
    end

    # 1st petal bitmap
    @petal_bitmaps[0] = Bitmap.new(3, 3)
    @petal_bitmaps[0].fill_rect(1, 0, 2, 1, petal_color1)
    @petal_bitmaps[0].fill_rect(0, 1, 1, 2, petal_color1)
    @petal_bitmaps[0].fill_rect(1, 1, 2, 2, petal_color2)
    @petal_bitmaps[0].set_pixel(2, 2, petal_color3)

    # 2nd petal bitmap
    @petal_bitmaps[1] = Bitmap.new(3, 3)
    @petal_bitmaps[1].set_pixel(0, 1, petal_color2)
    @petal_bitmaps[1].set_pixel(1, 1, petal_color1)
    @petal_bitmaps[1].fill_rect(1, 2, 1, 2, petal_color2)
#-------------------------------------------------------------------------------
    #Feathers

    @feather_bitmaps = []
    feather_color1 = Color.new(255, 255, 255)
    feather_color2 = Color.new(214, 217, 217, 150)

    # 1st feather bitmap
    @feather_bitmaps[0] = Bitmap.new(3, 3)
    @feather_bitmaps[0].set_pixel(0, 2, feather_color1)
    @feather_bitmaps[0].set_pixel(1, 2, feather_color2)
    @feather_bitmaps[0].set_pixel(2, 1, feather_color2)

    # 2nd feather bitmap
    @feather_bitmaps[0] = Bitmap.new(3, 3)
    @feather_bitmaps[0].set_pixel(0, 0, feather_color1)
    @feather_bitmaps[0].set_pixel(0, 1, feather_color2)
    @feather_bitmaps[0].set_pixel(1, 2, feather_color2)

    # 3rd feather bitmap
    @feather_bitmaps[0] = Bitmap.new(3, 3)
    @feather_bitmaps[0].set_pixel(2, 0, feather_color1)
    @feather_bitmaps[0].set_pixel(1, 0, feather_color2)
    @feather_bitmaps[0].set_pixel(0, 1, feather_color2)

    # 4th feather bitmap
    @feather_bitmaps[0] = Bitmap.new(3, 3)
    @feather_bitmaps[0].set_pixel(2, 2, feather_color1)
    @feather_bitmaps[0].set_pixel(2, 1, feather_color2)
    @feather_bitmaps[0].set_pixel(1, 0, feather_color2)
#-------------------------------------------------------------------------------
    # Sparkle bitmaps

    @sparkle_bitmaps = []
    case $game_screen.weather_variation
    when 1 # Lavender
      sparkle_color1 = Color.new(197, 181, 255)
      sparkle_color2 = Color.new(171, 126, 234)
      sparkle_color3 = Color.new(187 , 77, 234)
      sparkle_color4 = Color.new(255, 255, 255)
    when 2 # Pink
      sparkle_color1 = Color.new(255, 181, 234)
      sparkle_color2 = Color.new(232, 125, 178)
      sparkle_color3 = Color.new(232, 76, 110)
      sparkle_color4 = Color.new(255, 255, 255)
    when 3 # Green
      sparkle_color1 = Color.new(222, 255, 181)
      sparkle_color2 = Color.new(157, 226, 122)
      sparkle_color3 = Color.new(85, 226, 74)
      sparkle_color4 = Color.new(255, 255, 255)
    when 4 # White
      sparkle_color1 = Color.new(236, 236, 236)
      sparkle_color2 = Color.new(218, 218, 218)
      sparkle_color3 = Color.new(210, 210, 210)
      sparkle_color4 = Color.new(255, 255, 255)
    when 5 # Oil Brown
      sparkle_color1 = Color.new(25, 10, 3)
      sparkle_color2 = Color.new(25, 5, 3)
      sparkle_color3 = Color.new(15, 15, 3)
      sparkle_color4 = Color.new(33, 15, 3)
    when 6 # Raspberry
      sparkle_color1 = Color.new(201, 15, 20)
      sparkle_color2 = Color.new(191, 0, 0)
      sparkle_color3 = Color.new(148, 0, 5)
      sparkle_color4 = Color.new(177, 19, 20)
    when 7 # Orange Flame
      sparkle_color1 = Color.new(255, 242, 0)
      sparkle_color2 = Color.new(245, 128, 43)
      sparkle_color3 = Color.new(235, 130, 0)
      sparkle_color4 = Color.new(253, 184, 39)
    when 8 # Light Cyan
      sparkle_color1 = Color.new(92, 224, 232)
      sparkle_color2 = Color.new(90, 201, 255)
      sparkle_color3 = Color.new(51, 189, 232)
      sparkle_color4 = Color.new(83, 232, 232)
    when 9 # Green-Violet
      sparkle_color1 = Color.new(92, 97, 212)
      sparkle_color2 = Color.new(84, 64, 181)
      sparkle_color3 = Color.new(46, 46, 207)
      sparkle_color4 = Color.new(129, 22, 204)
    when 10 # Light red
      sparkle_color1 = Color.new(230, 0, 0)
      sparkle_color2 = Color.new(205, 0, 0)
      sparkle_color3 = Color.new(165, 0, 0)
      sparkle_color4 = Color.new(255, 0, 0)
    else # Blue
      sparkle_color1 = Color.new(181, 244, 255)
      sparkle_color2 = Color.new(126, 197, 235)
      sparkle_color3 = Color.new(77, 136, 225)
      sparkle_color4 = Color.new(255, 255, 255)
    end

    # 1st sparkle bitmap
    @sparkle_bitmaps[0] = Bitmap.new(7, 7)
    @sparkle_bitmaps[0].set_pixel(3, 3, sparkle_color3)

    # 2nd sparkle bitmap
    @sparkle_bitmaps[1] = Bitmap.new(7, 7)
    @sparkle_bitmaps[1].fill_rect(3, 2, 1, 3, sparkle_color3)
    @sparkle_bitmaps[1].fill_rect(2, 3, 3, 1, sparkle_color3)
    @sparkle_bitmaps[1].set_pixel(3, 3, sparkle_color2)

    # 3rd sparkle bitmap
    @sparkle_bitmaps[2] = Bitmap.new(7, 7)
    @sparkle_bitmaps[2].set_pixel(1, 1, sparkle_color3)
    @sparkle_bitmaps[2].set_pixel(5, 1, sparkle_color3)
    @sparkle_bitmaps[2].set_pixel(2, 2, sparkle_color2)
    @sparkle_bitmaps[2].set_pixel(4, 2, sparkle_color2)
    @sparkle_bitmaps[2].set_pixel(3, 3, sparkle_color1)
    @sparkle_bitmaps[2].set_pixel(2, 4, sparkle_color2)
    @sparkle_bitmaps[2].set_pixel(4, 4, sparkle_color2)
    @sparkle_bitmaps[2].set_pixel(1, 5, sparkle_color3)
    @sparkle_bitmaps[2].set_pixel(5, 5, sparkle_color3)

    # 4th sparkle bitmap
    @sparkle_bitmaps[3] = Bitmap.new(7, 7)
    @sparkle_bitmaps[3].fill_rect(3, 1, 1, 5, sparkle_color3)
    @sparkle_bitmaps[3].fill_rect(1, 3, 5, 1, sparkle_color3)
    @sparkle_bitmaps[3].fill_rect(3, 2, 1, 3, sparkle_color2)
    @sparkle_bitmaps[3].fill_rect(2, 3, 3, 1, sparkle_color2)
    @sparkle_bitmaps[3].set_pixel(3, 3, sparkle_color1)

    # 5th sparkle bitmap
    @sparkle_bitmaps[4] = Bitmap.new(7, 7)
    @sparkle_bitmaps[4].fill_rect(2, 2, 3, 3, sparkle_color2)
    @sparkle_bitmaps[4].fill_rect(3, 2, 1, 3, sparkle_color3)
    @sparkle_bitmaps[4].fill_rect(2, 3, 3, 1, sparkle_color3)
    @sparkle_bitmaps[4].set_pixel(3, 3, sparkle_color1)
    @sparkle_bitmaps[4].set_pixel(1, 1, sparkle_color3)
    @sparkle_bitmaps[4].set_pixel(5, 1, sparkle_color3)
    @sparkle_bitmaps[4].set_pixel(1, 5, sparkle_color3)
    @sparkle_bitmaps[4].set_pixel(5, 1, sparkle_color3)

    # 6th sparkle bitmap
    @sparkle_bitmaps[5] = Bitmap.new(7, 7)
    @sparkle_bitmaps[5].fill_rect(2, 1, 3, 5, sparkle_color3)
    @sparkle_bitmaps[5].fill_rect(1, 2, 5, 3, sparkle_color3)
    @sparkle_bitmaps[5].fill_rect(2, 2, 3, 3, sparkle_color2)
    @sparkle_bitmaps[5].fill_rect(3, 1, 1, 5, sparkle_color2)
    @sparkle_bitmaps[5].fill_rect(1, 3, 5, 1, sparkle_color2)
    @sparkle_bitmaps[5].fill_rect(3, 2, 1, 3, sparkle_color1)
    @sparkle_bitmaps[5].fill_rect(2, 3, 3, 1, sparkle_color1)
    @sparkle_bitmaps[5].set_pixel(3, 3, sparkle_color4)

    # 7th sparkle bitmap
    @sparkle_bitmaps[6] = Bitmap.new(7, 7)
    @sparkle_bitmaps[6].fill_rect(2, 1, 3, 5, sparkle_color2)
    @sparkle_bitmaps[6].fill_rect(1, 2, 5, 3, sparkle_color2)
    @sparkle_bitmaps[6].fill_rect(3, 0, 1, 7, sparkle_color3)
    @sparkle_bitmaps[6].fill_rect(0, 3, 7, 1, sparkle_color3)
    @sparkle_bitmaps[6].fill_rect(2, 2, 3, 3, sparkle_color1)
    @sparkle_bitmaps[6].fill_rect(3, 2, 1, 3, sparkle_color2)
    @sparkle_bitmaps[6].fill_rect(2, 3, 3, 1, sparkle_color2)
    @sparkle_bitmaps[6].set_pixel(3, 3, sparkle_color4)
#-------------------------------------------------------------------------------
    # Meteor bitmap

    case $game_screen.weather_variation
    when 1 # Flame Meteor
      meteor_color1 = Color.new(248, 88, 0)
      meteor_color2 = Color.new(205, 194, 23)
      meteor_color3 = Color.new(218, 207, 36)
    when 2 # Rock Meteor
      meteor_color1 = Color.new(60, 60, 60)
      meteor_color2 = Color.new(248, 88, 0)
      meteor_color3 = Color.new(218, 207, 36)
    else # Normal Meteor
      meteor_color1 = Color.new(232, 160, 128)
      meteor_color2 = Color.new(248, 88, 0)
      meteor_color3 = Color.new(179, 17, 17)
    end

    @meteor_bitmap = Bitmap.new(14, 12)
    @meteor_bitmap.fill_rect(0, 8, 5, 4, meteor_color1)
    @meteor_bitmap.fill_rect(1, 7, 6, 4, meteor_color1)
    @meteor_bitmap.set_pixel(7, 8, meteor_color1)
    @meteor_bitmap.fill_rect(1, 8, 2, 2, meteor_color2)
    @meteor_bitmap.set_pixel(2, 7, meteor_color2)
    @meteor_bitmap.fill_rect(3, 6, 2, 1, meteor_color2)
    @meteor_bitmap.set_pixel(3, 8, meteor_color2)
    @meteor_bitmap.set_pixel(3, 10, meteor_color2)
    @meteor_bitmap.set_pixel(4, 9, meteor_color2)
    @meteor_bitmap.fill_rect(5, 5, 1, 5, meteor_color2)
    @meteor_bitmap.fill_rect(6, 4, 1, 5, meteor_color2)
    @meteor_bitmap.fill_rect(7, 3, 1, 5, meteor_color2)
    @meteor_bitmap.fill_rect(8, 6, 1, 2, meteor_color2)
    @meteor_bitmap.set_pixel(9, 5, meteor_color2)
    @meteor_bitmap.set_pixel(3, 8, meteor_color3)
    @meteor_bitmap.fill_rect(4, 7, 1, 2, meteor_color3)
    @meteor_bitmap.set_pixel(4, 5, meteor_color3)
    @meteor_bitmap.set_pixel(5, 4, meteor_color3)
    @meteor_bitmap.set_pixel(5, 6, meteor_color3)
    @meteor_bitmap.set_pixel(6, 5, meteor_color3)
    @meteor_bitmap.set_pixel(6, 7, meteor_color3)
    @meteor_bitmap.fill_rect(7, 4, 1, 3, meteor_color3)
    @meteor_bitmap.fill_rect(8, 3, 1, 3, meteor_color3)
    @meteor_bitmap.fill_rect(9, 2, 1, 3, meteor_color3)
    @meteor_bitmap.fill_rect(10, 1, 1, 3, meteor_color3)
    @meteor_bitmap.fill_rect(11, 0, 1, 3, meteor_color3)
    @meteor_bitmap.fill_rect(12, 0, 1, 2, meteor_color3)
    @meteor_bitmap.set_pixel(13, 0, meteor_color3)

    # Impact bitmap
    @impact_bitmap = Bitmap.new(22, 11)
    @impact_bitmap.fill_rect(0, 5, 1, 2, meteor_color2)
    @impact_bitmap.set_pixel(1, 4, meteor_color2)
    @impact_bitmap.set_pixel(1, 6, meteor_color2)
    @impact_bitmap.set_pixel(2, 3, meteor_color2)
    @impact_bitmap.set_pixel(2, 7, meteor_color2)
    @impact_bitmap.set_pixel(3, 2, meteor_color3)
    @impact_bitmap.set_pixel(3, 7, meteor_color3)
    @impact_bitmap.set_pixel(4, 2, meteor_color2)
    @impact_bitmap.set_pixel(4, 8, meteor_color2)
    @impact_bitmap.set_pixel(5, 2, meteor_color3)
    @impact_bitmap.fill_rect(5, 8, 3, 1, meteor_color2)
    @impact_bitmap.set_pixel(6, 1, meteor_color3)
    @impact_bitmap.fill_rect(7, 1, 8, 1, meteor_color2)
    @impact_bitmap.fill_rect(7, 9, 8, 1, meteor_color3)
#-------------------------------------------------------------------------------
    # Ash bitmaps

    ash_color1 = Color.new(210, 210, 210, 250)
    ash_color2 = Color.new(255, 255, 255)
    ash_color3 = Color.new(214, 217, 217, 150)

    @ash_bitmaps = []
    @ash_bitmaps[0] = Bitmap.new(3, 3)
    @ash_bitmaps[0].fill_rect(0, 1, 1, 3, ash_color1)
    @ash_bitmaps[0].fill_rect(1, 0, 3, 1, ash_color1)
    @ash_bitmaps[0].set_pixel(1, 1, ash_color2)
    @ash_bitmaps[1] = Bitmap.new(3, 3)
    @ash_bitmaps[1].fill_rect(0, 1, 1, 3, ash_color3)
    @ash_bitmaps[1].fill_rect(1, 0, 3, 1, ash_color3)
    @ash_bitmaps[1].set_pixel(1, 1, ash_color1)
#-------------------------------------------------------------------------------
    # Bubble bitmaps

    @bubble_bitmaps = []
    bubble_color1 = Color.new(77, 136, 225, 160)
    bubble_color2 = Color.new(197, 253, 254, 160)
    bubble_color3 = Color.new(225, 190, 244, 160)
    bubble_color4 = Color.new(255, 255, 255)

    # first bubble bitmap
    @bubble_bitmaps[0] = Bitmap.new(24, 24)
    @bubble_bitmaps[0].fill_rect(0, 9, 24, 5, bubble_color1)
    @bubble_bitmaps[0].fill_rect(1, 6, 22, 11, bubble_color1)
    @bubble_bitmaps[0].fill_rect(2, 5, 20, 13, bubble_color1)
    @bubble_bitmaps[0].fill_rect(3, 4, 18, 15, bubble_color1)
    @bubble_bitmaps[0].fill_rect(4, 3, 16, 17, bubble_color1)
    @bubble_bitmaps[0].fill_rect(5, 2, 14, 19, bubble_color1)
    @bubble_bitmaps[0].fill_rect(6, 1, 12, 21, bubble_color1)
    @bubble_bitmaps[0].fill_rect(9, 0, 5, 24, bubble_color1)
    @bubble_bitmaps[0].fill_rect(2, 11, 20, 4, bubble_color2)
    @bubble_bitmaps[0].fill_rect(3, 7, 18, 10, bubble_color2)
    @bubble_bitmaps[0].fill_rect(4, 6, 16, 12, bubble_color2)
    @bubble_bitmaps[0].fill_rect(5, 5, 14, 14, bubble_color2)
    @bubble_bitmaps[0].fill_rect(6, 4, 12, 16, bubble_color2)
    @bubble_bitmaps[0].fill_rect(9, 2, 4, 20, bubble_color2)
    @bubble_bitmaps[0].fill_rect(5, 10, 1, 7, bubble_color3)
    @bubble_bitmaps[0].fill_rect(6, 14, 1, 5, bubble_color3)
    @bubble_bitmaps[0].fill_rect(7, 15, 1, 4, bubble_color3)
    @bubble_bitmaps[0].fill_rect(8, 16, 1, 4, bubble_color3)
    @bubble_bitmaps[0].fill_rect(9, 17, 1, 3, bubble_color3)
    @bubble_bitmaps[0].fill_rect(10, 18, 4, 3, bubble_color3)
    @bubble_bitmaps[0].fill_rect(14, 18, 1, 2, bubble_color3)
    @bubble_bitmaps[0].fill_rect(13, 5, 4, 4, bubble_color4)
    @bubble_bitmaps[0].fill_rect(14, 4, 2, 1, bubble_color4)
    @bubble_bitmaps[0].set_pixel(17, 6, bubble_color4)

    # second bubble bitmap
    @bubble_bitmaps[1] = Bitmap.new(14, 15)
    @bubble_bitmaps[1].fill_rect(0, 4, 14, 7, bubble_color1)
    @bubble_bitmaps[1].fill_rect(1, 3, 12, 9, bubble_color1)
    @bubble_bitmaps[1].fill_rect(2, 2, 10, 11, bubble_color1)
    @bubble_bitmaps[1].fill_rect(3, 1, 8, 13, bubble_color1)
    @bubble_bitmaps[1].fill_rect(5, 0, 4, 15, bubble_color1)
    @bubble_bitmaps[1].fill_rect(1, 5, 12, 4, bubble_color2)
    @bubble_bitmaps[1].fill_rect(2, 4, 10, 6, bubble_color2)
    @bubble_bitmaps[1].fill_rect(3, 3, 8, 8, bubble_color2)
    @bubble_bitmaps[1].fill_rect(4, 2, 6, 10, bubble_color2)
    @bubble_bitmaps[1].fill_rect(1, 5, 12, 4, bubble_color2)
    @bubble_bitmaps[1].fill_rect(3, 9, 1, 2, bubble_color3)
    @bubble_bitmaps[1].fill_rect(4, 10, 1, 2, bubble_color3)
    @bubble_bitmaps[1].fill_rect(5, 11, 4, 1, bubble_color3)
    @bubble_bitmaps[1].fill_rect(6, 12, 2, 1, bubble_color4)
    @bubble_bitmaps[1].fill_rect(8, 3, 2, 2, bubble_color4)
    @bubble_bitmaps[1].set_pixel(7, 4, bubble_color4)
    @bubble_bitmaps[1].set_pixel(8, 5, bubble_color4)

    # Other option for bubbles
    @bubble2_bitmaps = Array.new
    bubble2_color1 = Color.new(145, 150, 155, 160)
    bubble2_color2 = Color.new(180, 180, 185, 160)
    bubble2_color3 = Color.new(225, 225, 235, 160)
    bubble2_color4 = Color.new(145, 145, 165, 160)
    bubble2_color5 = Color.new(165, 170, 180, 160)
    bubble2_color6 = Color.new(255, 255, 255, 160)

    # first bubble 2 bitmap
    @bubble2_bitmaps[0] = Bitmap.new(6, 6)
    @bubble2_bitmaps[0].fill_rect(0, 0, 6, 6, bubble2_color1)
    @bubble2_bitmaps[0].fill_rect(0, 2, 6, 2, bubble2_color2)
    @bubble2_bitmaps[0].fill_rect(2, 0, 2, 6, bubble2_color2)
    @bubble2_bitmaps[0].fill_rect(2, 2, 2, 2, bubble2_color3)

    # second bubble 2 bitmap
    @bubble2_bitmaps[1] = Bitmap.new(8, 8)
    @bubble2_bitmaps[1].fill_rect(0, 2, 2, 4, bubble2_color4)
    @bubble2_bitmaps[1].fill_rect(2, 0, 4, 2, bubble2_color1)
    @bubble2_bitmaps[1].fill_rect(6, 2, 2, 2, bubble2_color1)
    @bubble2_bitmaps[1].fill_rect(2, 6, 2, 2, bubble2_color1)
    @bubble2_bitmaps[1].fill_rect(6, 4, 2, 2, bubble2_color2)
    @bubble2_bitmaps[1].fill_rect(4, 6, 2, 2, bubble2_color2)
    @bubble2_bitmaps[1].fill_rect(4, 4, 2, 2, bubble2_color5)
    @bubble2_bitmaps[1].fill_rect(2, 4, 2, 2, bubble2_color3)
    @bubble2_bitmaps[1].fill_rect(4, 2, 2, 2, bubble2_color3)
    @bubble2_bitmaps[1].fill_rect(2, 2, 2, 2, bubble2_color6)

    # third bubble 2 bitmap
    @bubble2_bitmaps[2] = Bitmap.new(8, 10)
    @bubble2_bitmaps[2].fill_rect(8, 2, 2, 4, bubble2_color4)
    @bubble2_bitmaps[2].fill_rect(2, 0, 8, 2, bubble2_color1)
    @bubble2_bitmaps[2].fill_rect(2, 6, 8, 2, bubble2_color1)
    @bubble2_bitmaps[2].fill_rect(4, 0, 2, 2, bubble2_color2)
    @bubble2_bitmaps[2].fill_rect(4, 6, 2, 2, bubble2_color2)
    @bubble2_bitmaps[2].fill_rect(0, 2, 2, 2, bubble2_color2)
    @bubble2_bitmaps[2].fill_rect(0, 4, 2, 2, bubble2_color5)
    @bubble2_bitmaps[2].fill_rect(2, 2, 6, 4, bubble2_color3)
    @bubble2_bitmaps[2].fill_rect(2, 2, 4, 2, bubble2_color6)
    @bubble2_bitmaps[2].fill_rect(4, 4, 2, 2, bubble2_color6)

    # fourth bubble 2 bitmap
    @bubble2_bitmaps[3] = Bitmap.new(14, 14)
    @bubble2_bitmaps[3].fill_rect(4, 0, 4, 2, bubble2_color4)
    @bubble2_bitmaps[3].fill_rect(0, 4, 2, 4, bubble2_color4)
    @bubble2_bitmaps[3].fill_rect(12, 4, 2, 4, bubble2_color4)
    @bubble2_bitmaps[3].fill_rect(8, 0, 2, 2, bubble2_color1)
    @bubble2_bitmaps[3].fill_rect(0, 6, 2, 2, bubble2_color1)
    @bubble2_bitmaps[3].fill_rect(12, 6, 2, 2, bubble2_color1)
    @bubble2_bitmaps[3].fill_rect(4, 12, 6, 2, bubble2_color1)
    @bubble2_bitmaps[3].fill_rect(8, 0, 2, 2, bubble2_color1)
    @bubble2_bitmaps[3].fill_rect(2, 2, 10, 10, bubble2_color2)
    @bubble2_bitmaps[3].fill_rect(6, 12, 2, 2, bubble2_color2)
    @bubble2_bitmaps[3].fill_rect(2, 4, 10, 6, bubble2_color3)
    @bubble2_bitmaps[3].fill_rect(4, 2, 2, 2, bubble2_color3)
    @bubble2_bitmaps[3].fill_rect(6, 10, 4, 2, bubble2_color3)
    @bubble2_bitmaps[3].fill_rect(6, 4, 2, 2, bubble2_color6)
    @bubble2_bitmaps[3].fill_rect(4, 6, 2, 2, bubble2_color6)
#-------------------------------------------------------------------------------
    # Bomb bitmap

    case $game_screen.weather_variation
    when 1 # Flare
      bomb_color1 = Color.new(205, 194, 23)
      bomb_color2 = Color.new(248, 88, 0)
    when 2 # Ice
      bomb_color1 = Color.new(181, 244, 255)
      bomb_color2 = Color.new(181, 244, 255)
    else   # Water
      bomb_color1 = Color.new(197, 253, 254, 160)
      bomb_color2 = Color.new(197, 253, 254, 160)
    end

    @bomb_bitmap = Bitmap.new(8, 8)
    @bomb_bitmap.fill_rect(0, 2, 2, 4, bomb_color1)
    @bomb_bitmap.fill_rect(2, 0, 4, 2, bomb_color1)
    @bomb_bitmap.fill_rect(6, 2, 2, 2, bomb_color1)
    @bomb_bitmap.fill_rect(2, 6, 2, 2, bomb_color2)
    @bomb_bitmap.fill_rect(6, 4, 2, 2, bomb_color2)
    @bomb_bitmap.fill_rect(4, 6, 2, 2, bomb_color1)
    @bomb_bitmap.fill_rect(4, 4, 2, 2, bomb_color2)
    @bomb_bitmap.fill_rect(2, 4, 2, 2, bomb_color1)
    @bomb_bitmap.fill_rect(4, 2, 2, 2, bomb_color1)
    @bomb_bitmap.fill_rect(2, 2, 2, 2, bomb_color1)

    # Bomb impact bitmap
    @bomb_impact_bitmap = Bitmap.new(8, 5)
    @bomb_impact_bitmap.fill_rect(1, 0, 6, 1, bomb_color2)
    @bomb_impact_bitmap.fill_rect(1, 4, 6, 1, bomb_color2)
    @bomb_impact_bitmap.fill_rect(0, 1, 1, 3, bomb_color1)
    @bomb_impact_bitmap.fill_rect(7, 1, 1, 3, bomb_color1)
    @bomb_impact_bitmap.set_pixel(1, 0, bomb_color1)
    @bomb_impact_bitmap.set_pixel(0, 1, bomb_color1)
#-------------------------------------------------------------------------------
    # Starburst bitmaps (prismatic)

    @starburst_bitmaps = []
    starburst_color1 = Color.new(233, 210, 142)
    starburst_color2 = Color.new(219, 191, 95)
    starburst_color3 = Color.new(242, 229, 190)
    starburst_color4 = Color.new(241, 185, 187)
    starburst_color5 = Color.new(196, 55, 84)
    starburst_color6 = Color.new(178, 15, 56)
    starburst_color7 = Color.new(189, 225, 242)
    starburst_color8 = Color.new(102, 181, 221)
    starburst_color9 = Color.new(5, 88, 168)
    starburst_color10 = Color.new(205, 246, 205)
    starburst_color11 = Color.new(88, 221, 89)
    starburst_color12 = Color.new(44, 166, 0)
    starburst_color13 = Color.new(216, 197, 255)
    starburst_color14 = Color.new(155, 107, 255)
    starburst_color15 = Color.new(71, 0, 222)
    starburst_color16 = Color.new(255, 220, 177)
    starburst_color17 = Color.new(255, 180, 85)
    starburst_color18 = Color.new(222, 124, 0)

    # 1st starburst bitmap
    @starburst_bitmaps[0] = Bitmap.new(8, 8)
    @starburst_bitmaps[0].set_pixel(3, 3, starburst_color3)

    # 2nd starburst bitmap
    @starburst_bitmaps[1] = Bitmap.new(8, 8)
    @starburst_bitmaps[1].fill_rect(3, 2, 1, 3, starburst_color1)
    @starburst_bitmaps[1].fill_rect(2, 3, 3, 1, starburst_color1)
    @starburst_bitmaps[1].set_pixel(3, 3, starburst_color3)

    # 3rd starburst bitmap
    @starburst_bitmaps[2] = Bitmap.new(7, 7)
    @starburst_bitmaps[2].set_pixel(1, 1, starburst_color1)
    @starburst_bitmaps[2].set_pixel(5, 1, starburst_color1)
    @starburst_bitmaps[2].set_pixel(2, 2, starburst_color2)
    @starburst_bitmaps[2].set_pixel(4, 2, starburst_color1)
    @starburst_bitmaps[2].set_pixel(3, 3, starburst_color3)
    @starburst_bitmaps[2].set_pixel(2, 4, starburst_color2)
    @starburst_bitmaps[2].set_pixel(4, 4, starburst_color2)
    @starburst_bitmaps[2].set_pixel(1, 5, starburst_color1)
    @starburst_bitmaps[2].set_pixel(5, 5, starburst_color1)

    # 4th starburst bitmap
    @starburst_bitmaps[3] = Bitmap.new(7, 7)
    @starburst_bitmaps[3].fill_rect(3, 1, 1, 5, starburst_color1)
    @starburst_bitmaps[3].fill_rect(1, 3, 5, 1, starburst_color2)
    @starburst_bitmaps[3].fill_rect(3, 2, 1, 3, starburst_color1)
    @starburst_bitmaps[3].fill_rect(2, 3, 3, 1, starburst_color2)
    @starburst_bitmaps[3].set_pixel(3, 3, starburst_color3)

    # 5th starburst bitmap
    @starburst_bitmaps[4] = Bitmap.new(7, 7)
    @starburst_bitmaps[4].fill_rect(2, 2, 3, 3, starburst_color1)
    @starburst_bitmaps[4].fill_rect(3, 2, 1, 3, starburst_color1)
    @starburst_bitmaps[4].fill_rect(2, 3, 3, 1, starburst_color2)
    @starburst_bitmaps[4].set_pixel(3, 3, starburst_color3)
    @starburst_bitmaps[4].set_pixel(1, 1, starburst_color1)
    @starburst_bitmaps[4].set_pixel(5, 1, starburst_color1)
    @starburst_bitmaps[4].set_pixel(1, 5, starburst_color2)
    @starburst_bitmaps[4].set_pixel(5, 1, starburst_color2)

    # 6th starburst bitmap
    @starburst_bitmaps[5] = Bitmap.new(8, 8)
    @starburst_bitmaps[5].fill_rect(3, 2, 1, 3, starburst_color1)
    @starburst_bitmaps[5].fill_rect(2, 3, 3, 1, starburst_color1)
    @starburst_bitmaps[5].set_pixel(3, 3, starburst_color3)

    # 7th starburst bitmap
    @starburst_bitmaps[6] = Bitmap.new(8, 8)
    @starburst_bitmaps[6].fill_rect(3, 2, 1, 3, starburst_color11)
    @starburst_bitmaps[6].fill_rect(2, 3, 3, 1, starburst_color11)
    @starburst_bitmaps[6].set_pixel(3, 3, starburst_color10)

    # 8th starburst bitmap
    @starburst_bitmaps[7] = Bitmap.new(7, 7)
    @starburst_bitmaps[7].set_pixel(1, 1, starburst_color12)
    @starburst_bitmaps[7].set_pixel(5, 1, starburst_color12)
    @starburst_bitmaps[7].set_pixel(2, 2, starburst_color12)
    @starburst_bitmaps[7].set_pixel(4, 2, starburst_color12)
    @starburst_bitmaps[7].set_pixel(3, 3, starburst_color11)
    @starburst_bitmaps[7].set_pixel(2, 4, starburst_color11)
    @starburst_bitmaps[7].set_pixel(4, 4, starburst_color11)
    @starburst_bitmaps[7].set_pixel(1, 5, starburst_color11)
    @starburst_bitmaps[7].set_pixel(5, 5, starburst_color10)

    # 9th starburst bitmap
    @starburst_bitmaps[8] = Bitmap.new(7, 7)
    @starburst_bitmaps[8].fill_rect(3, 1, 1, 5, starburst_color12)
    @starburst_bitmaps[8].fill_rect(1, 3, 5, 1, starburst_color12)
    @starburst_bitmaps[8].fill_rect(3, 2, 1, 3, starburst_color11)
    @starburst_bitmaps[8].fill_rect(2, 3, 3, 1, starburst_color11)
    @starburst_bitmaps[8].set_pixel(3, 3, starburst_color10)

    # 10th starburst bitmap
    @starburst_bitmaps[9] = Bitmap.new(7, 7)
    @starburst_bitmaps[9].fill_rect(2, 1, 3, 5, starburst_color12)
    @starburst_bitmaps[9].fill_rect(1, 2, 5, 3, starburst_color12)
    @starburst_bitmaps[9].fill_rect(2, 2, 3, 3, starburst_color11)
    @starburst_bitmaps[9].fill_rect(3, 1, 1, 5, starburst_color11)
    @starburst_bitmaps[9].fill_rect(1, 3, 5, 1, starburst_color11)
    @starburst_bitmaps[9].fill_rect(3, 2, 1, 3, starburst_color10)
    @starburst_bitmaps[9].fill_rect(2, 3, 3, 1, starburst_color10)
    @starburst_bitmaps[9].set_pixel(3, 3, starburst_color10)

    # 11th starburst bitmap
    @starburst_bitmaps[10] = Bitmap.new(7, 7)
    @starburst_bitmaps[10].fill_rect(2, 2, 3, 3, starburst_color12)
    @starburst_bitmaps[10].fill_rect(3, 2, 1, 3, starburst_color12)
    @starburst_bitmaps[10].fill_rect(2, 3, 3, 1, starburst_color11)
    @starburst_bitmaps[10].set_pixel(3, 3, starburst_color10)
    @starburst_bitmaps[10].set_pixel(1, 1, starburst_color11)
    @starburst_bitmaps[10].set_pixel(5, 1, starburst_color11)
    @starburst_bitmaps[10].set_pixel(1, 5, starburst_color12)
    @starburst_bitmaps[10].set_pixel(5, 1, starburst_color12)

    # 12th starburst bitmap
    @starburst_bitmaps[11] = Bitmap.new(8, 8)
    @starburst_bitmaps[11].fill_rect(3, 2, 1, 3, starburst_color11)
    @starburst_bitmaps[11].fill_rect(2, 3, 3, 1, starburst_color11)
    @starburst_bitmaps[11].set_pixel(3, 3, starburst_color10)

    # 13th starburst bitmap
    @starburst_bitmaps[12] = Bitmap.new(8, 8)
    @starburst_bitmaps[12].fill_rect(3, 2, 1, 3, starburst_color8)
    @starburst_bitmaps[12].fill_rect(2, 3, 3, 1, starburst_color8)
    @starburst_bitmaps[12].set_pixel(3, 3, starburst_color7)

    # 14th starburst bitmap
    @starburst_bitmaps[13] = Bitmap.new(7, 7)
    @starburst_bitmaps[13].set_pixel(1, 1, starburst_color9)
    @starburst_bitmaps[13].set_pixel(5, 1, starburst_color9)
    @starburst_bitmaps[13].set_pixel(2, 2, starburst_color9)
    @starburst_bitmaps[13].set_pixel(4, 2, starburst_color9)
    @starburst_bitmaps[13].set_pixel(3, 3, starburst_color8)
    @starburst_bitmaps[13].set_pixel(2, 4, starburst_color8)
    @starburst_bitmaps[13].set_pixel(4, 4, starburst_color8)
    @starburst_bitmaps[13].set_pixel(1, 5, starburst_color8)
    @starburst_bitmaps[13].set_pixel(5, 5, starburst_color7)

    # 15th starburst bitmap
    @starburst_bitmaps[14] = Bitmap.new(7, 7)
    @starburst_bitmaps[14].fill_rect(3, 1, 1, 5, starburst_color9)
    @starburst_bitmaps[14].fill_rect(1, 3, 5, 1, starburst_color9)
    @starburst_bitmaps[14].fill_rect(3, 2, 1, 3, starburst_color8)
    @starburst_bitmaps[14].fill_rect(2, 3, 3, 1, starburst_color8)
    @starburst_bitmaps[14].set_pixel(3, 3, starburst_color7)

    # 16th starburst bitmap
    @starburst_bitmaps[15] = Bitmap.new(7, 7)
    @starburst_bitmaps[15].fill_rect(2, 1, 3, 5, starburst_color9)
    @starburst_bitmaps[15].fill_rect(1, 2, 5, 3, starburst_color9)
    @starburst_bitmaps[15].fill_rect(2, 2, 3, 3, starburst_color8)
    @starburst_bitmaps[15].fill_rect(3, 1, 1, 5, starburst_color8)
    @starburst_bitmaps[15].fill_rect(1, 3, 5, 1, starburst_color8)
    @starburst_bitmaps[15].fill_rect(3, 2, 1, 3, starburst_color7)
    @starburst_bitmaps[15].fill_rect(2, 3, 3, 1, starburst_color7)
    @starburst_bitmaps[15].set_pixel(3, 3, starburst_color7)

    # 17th starburst bitmap
    @starburst_bitmaps[16] = Bitmap.new(8, 8)
    @starburst_bitmaps[16].fill_rect(3, 2, 1, 3, starburst_color8)
    @starburst_bitmaps[16].fill_rect(2, 3, 3, 1, starburst_color8)
    @starburst_bitmaps[16].set_pixel(3, 3, starburst_color7)

    # 18th starburst bitmap
    @starburst_bitmaps[17] = Bitmap.new(8, 8)
    @starburst_bitmaps[17].fill_rect(3, 2, 1, 3, starburst_color14)
    @starburst_bitmaps[17].fill_rect(2, 3, 3, 1, starburst_color14)
    @starburst_bitmaps[17].set_pixel(3, 3, starburst_color13)

    # 19th starburst bitmap
    @starburst_bitmaps[18] = Bitmap.new(7, 7)
    @starburst_bitmaps[18].set_pixel(1, 1, starburst_color15)
    @starburst_bitmaps[18].set_pixel(5, 1, starburst_color15)
    @starburst_bitmaps[18].set_pixel(2, 2, starburst_color15)
    @starburst_bitmaps[18].set_pixel(4, 2, starburst_color15)
    @starburst_bitmaps[18].set_pixel(3, 3, starburst_color14)
    @starburst_bitmaps[18].set_pixel(2, 4, starburst_color14)
    @starburst_bitmaps[18].set_pixel(4, 4, starburst_color14)
    @starburst_bitmaps[18].set_pixel(1, 5, starburst_color14)
    @starburst_bitmaps[18].set_pixel(5, 5, starburst_color13)

    # 20th starburst bitmap
    @starburst_bitmaps[19] = Bitmap.new(7, 7)
    @starburst_bitmaps[19].fill_rect(3, 1, 1, 5, starburst_color15)
    @starburst_bitmaps[19].fill_rect(1, 3, 5, 1, starburst_color15)
    @starburst_bitmaps[19].fill_rect(3, 2, 1, 3, starburst_color14)
    @starburst_bitmaps[19].fill_rect(2, 3, 3, 1, starburst_color14)
    @starburst_bitmaps[19].set_pixel(3, 3, starburst_color14)

    # 21st starburst bitmap
    @starburst_bitmaps[20] = Bitmap.new(7, 7)
    @starburst_bitmaps[20].fill_rect(2, 1, 3, 5, starburst_color15)
    @starburst_bitmaps[20].fill_rect(1, 2, 5, 3, starburst_color15)
    @starburst_bitmaps[20].fill_rect(2, 2, 3, 3, starburst_color14)
    @starburst_bitmaps[20].fill_rect(3, 1, 1, 5, starburst_color14)
    @starburst_bitmaps[20].fill_rect(1, 3, 5, 1, starburst_color14)
    @starburst_bitmaps[20].fill_rect(3, 2, 1, 3, starburst_color13)
    @starburst_bitmaps[20].fill_rect(2, 3, 3, 1, starburst_color13)
    @starburst_bitmaps[20].set_pixel(3, 3, starburst_color13)

    # 22nd starburst bitmap
    @starburst_bitmaps[21] = Bitmap.new(7, 7)
    @starburst_bitmaps[21].fill_rect(2, 1, 3, 5, starburst_color14)
    @starburst_bitmaps[21].fill_rect(1, 2, 5, 3, starburst_color14)
    @starburst_bitmaps[21].fill_rect(3, 0, 1, 7, starburst_color15)
    @starburst_bitmaps[21].fill_rect(0, 3, 7, 1, starburst_color15)
    @starburst_bitmaps[21].fill_rect(2, 2, 3, 3, starburst_color13)
    @starburst_bitmaps[21].fill_rect(3, 2, 1, 3, starburst_color14)
    @starburst_bitmaps[21].fill_rect(2, 3, 3, 1, starburst_color14)
    @starburst_bitmaps[21].set_pixel(3, 3, starburst_color13)

    # 23rd starburst bitmap
    @starburst_bitmaps[22] = Bitmap.new(8, 8)
    @starburst_bitmaps[22].fill_rect(3, 2, 1, 3, starburst_color14)
    @starburst_bitmaps[22].fill_rect(2, 3, 3, 1, starburst_color14)
    @starburst_bitmaps[22].set_pixel(3, 3, starburst_color13)

    # 24th starburst bitmap
    @starburst_bitmaps[23] = Bitmap.new(8, 8)
    @starburst_bitmaps[23].fill_rect(3, 2, 1, 3, starburst_color5)
    @starburst_bitmaps[23].fill_rect(2, 3, 3, 1, starburst_color5)
    @starburst_bitmaps[23].set_pixel(3, 3, starburst_color4)

    # 25th starburst bitmap
    @starburst_bitmaps[24] = Bitmap.new(7, 7)
    @starburst_bitmaps[24].set_pixel(1, 1, starburst_color6)
    @starburst_bitmaps[24].set_pixel(5, 1, starburst_color6)
    @starburst_bitmaps[24].set_pixel(2, 2, starburst_color6)
    @starburst_bitmaps[24].set_pixel(4, 2, starburst_color6)
    @starburst_bitmaps[24].set_pixel(3, 3, starburst_color5)
    @starburst_bitmaps[24].set_pixel(2, 4, starburst_color5)
    @starburst_bitmaps[24].set_pixel(4, 4, starburst_color5)
    @starburst_bitmaps[24].set_pixel(1, 5, starburst_color5)
    @starburst_bitmaps[24].set_pixel(5, 5, starburst_color4)

    # 26th starburst bitmap
    @starburst_bitmaps[25] = Bitmap.new(7, 7)
    @starburst_bitmaps[25].fill_rect(3, 1, 1, 5, starburst_color6)
    @starburst_bitmaps[25].fill_rect(1, 3, 5, 1, starburst_color6)
    @starburst_bitmaps[25].fill_rect(3, 2, 1, 3, starburst_color5)
    @starburst_bitmaps[25].fill_rect(2, 3, 3, 1, starburst_color5)
    @starburst_bitmaps[25].set_pixel(3, 3, starburst_color4)

    # 27th starburst bitmap
    @starburst_bitmaps[26] = Bitmap.new(7, 7)
    @starburst_bitmaps[26].fill_rect(2, 1, 3, 5, starburst_color6)
    @starburst_bitmaps[26].fill_rect(1, 2, 5, 3, starburst_color6)
    @starburst_bitmaps[26].fill_rect(2, 2, 3, 3, starburst_color5)
    @starburst_bitmaps[26].fill_rect(3, 1, 1, 5, starburst_color5)
    @starburst_bitmaps[26].fill_rect(1, 3, 5, 1, starburst_color5)
    @starburst_bitmaps[26].fill_rect(3, 2, 1, 3, starburst_color4)
    @starburst_bitmaps[26].fill_rect(2, 3, 3, 1, starburst_color4)
    @starburst_bitmaps[26].set_pixel(3, 3, starburst_color4)

    # 28th starburst bitmap
    @starburst_bitmaps[27] = Bitmap.new(7, 7)
    @starburst_bitmaps[27].fill_rect(2, 1, 3, 5, starburst_color5)
    @starburst_bitmaps[27].fill_rect(1, 2, 5, 3, starburst_color5)
    @starburst_bitmaps[27].fill_rect(3, 0, 1, 7, starburst_color6)
    @starburst_bitmaps[27].fill_rect(0, 3, 7, 1, starburst_color6)
    @starburst_bitmaps[27].fill_rect(2, 2, 3, 3, starburst_color4)
    @starburst_bitmaps[27].fill_rect(3, 2, 1, 3, starburst_color5)
    @starburst_bitmaps[27].fill_rect(2, 3, 3, 1, starburst_color5)
    @starburst_bitmaps[27].set_pixel(3, 3, starburst_color4)

    # 29th starburst bitmap
    @starburst_bitmaps[28] = Bitmap.new(8, 8)
    @starburst_bitmaps[28].fill_rect(3, 2, 1, 3, starburst_color5)
    @starburst_bitmaps[28].fill_rect(2, 3, 3, 1, starburst_color5)
    @starburst_bitmaps[28].set_pixel(3, 3, starburst_color4)

    # 30th starburst bitmap
    @starburst_bitmaps[29] = Bitmap.new(8, 8)
    @starburst_bitmaps[29].fill_rect(3, 2, 1, 3, starburst_color17)
    @starburst_bitmaps[29].fill_rect(2, 3, 3, 1, starburst_color17)
    @starburst_bitmaps[29].set_pixel(3, 3, starburst_color16)

    # 31st starburst bitmap
    @starburst_bitmaps[30] = Bitmap.new(7, 7)
    @starburst_bitmaps[30].set_pixel(1, 1, starburst_color18)
    @starburst_bitmaps[30].set_pixel(5, 1, starburst_color18)
    @starburst_bitmaps[30].set_pixel(2, 2, starburst_color18)
    @starburst_bitmaps[30].set_pixel(4, 2, starburst_color18)
    @starburst_bitmaps[30].set_pixel(3, 3, starburst_color17)
    @starburst_bitmaps[30].set_pixel(2, 4, starburst_color17)
    @starburst_bitmaps[30].set_pixel(4, 4, starburst_color17)
    @starburst_bitmaps[30].set_pixel(1, 5, starburst_color17)
    @starburst_bitmaps[30].set_pixel(5, 5, starburst_color16)

    # 32nd starburst bitmap
    @starburst_bitmaps[31] = Bitmap.new(7, 7)
    @starburst_bitmaps[31].fill_rect(3, 1, 1, 5, starburst_color18)
    @starburst_bitmaps[31].fill_rect(1, 3, 5, 1, starburst_color18)
    @starburst_bitmaps[31].fill_rect(3, 2, 1, 3, starburst_color17)
    @starburst_bitmaps[31].fill_rect(2, 3, 3, 1, starburst_color17)
    @starburst_bitmaps[31].set_pixel(3, 3, starburst_color16)

    # 33rd starburst bitmap
    @starburst_bitmaps[32] = Bitmap.new(7, 7)
    @starburst_bitmaps[32].fill_rect(2, 1, 3, 5, starburst_color18)
    @starburst_bitmaps[32].fill_rect(1, 2, 5, 3, starburst_color18)
    @starburst_bitmaps[32].fill_rect(2, 2, 3, 3, starburst_color17)
    @starburst_bitmaps[32].fill_rect(3, 1, 1, 5, starburst_color17)
    @starburst_bitmaps[32].fill_rect(1, 3, 5, 1, starburst_color17)
    @starburst_bitmaps[32].fill_rect(3, 2, 1, 3, starburst_color16)
    @starburst_bitmaps[32].fill_rect(2, 3, 3, 1, starburst_color16)
    @starburst_bitmaps[32].set_pixel(3, 3, starburst_color16)

    # 34th starburst bitmap
    @starburst_bitmaps[33] = Bitmap.new(7, 7)
    @starburst_bitmaps[33].fill_rect(2, 1, 3, 5, starburst_color17)
    @starburst_bitmaps[33].fill_rect(1, 2, 5, 3, starburst_color17)
    @starburst_bitmaps[33].fill_rect(3, 0, 1, 7, starburst_color18)
    @starburst_bitmaps[33].fill_rect(0, 3, 7, 1, starburst_color18)
    @starburst_bitmaps[33].fill_rect(2, 2, 3, 3, starburst_color16)
    @starburst_bitmaps[33].fill_rect(3, 2, 1, 3, starburst_color17)
    @starburst_bitmaps[33].fill_rect(2, 3, 3, 1, starburst_color17)
    @starburst_bitmaps[33].set_pixel(3, 3, starburst_color16)

    # 35th starburst bitmap
    @starburst_bitmaps[34] = Bitmap.new(8, 8)
    @starburst_bitmaps[34].fill_rect(3, 2, 1, 3, starburst_color17)
    @starburst_bitmaps[34].fill_rect(2, 3, 3, 1, starburst_color17)
    @starburst_bitmaps[34].set_pixel(3, 3, starburst_color16)

    # 36th starburst bitmap
    @starburst_bitmaps[35] = Bitmap.new(8, 8)
    @starburst_bitmaps[35].set_pixel(3, 3, starburst_color16)
#-------------------------------------------------------------------------------
    # Monochrome starburst bitmaps

    @monostarburst_bitmaps = []
    case $game_screen.weather_variation
    when 1 # Green
      monostarburst_color1 = Color.new(159, 232, 141)
      monostarburst_color2 = Color.new(198, 239, 189)
      monostarburst_color3 = Color.new(115, 216, 95)
    when 2 # Aqua-blue
      monostarburst_color1 = Color.new(139, 229, 217)
      monostarburst_color2 = Color.new(189, 237, 231)
      monostarburst_color3 = Color.new(94, 214, 202)
    when 3 # Blue
      monostarburst_color1 = Color.new(138, 153, 226)
      monostarburst_color2 = Color.new(187, 195, 234)
      monostarburst_color3 = Color.new(93, 108, 211)
    when 4 # Violet
      monostarburst_color1 = Color.new(205, 139, 224)
      monostarburst_color2 = Color.new(221, 185, 232)
      monostarburst_color3 = Color.new(189, 94, 209)
    when 5 # Red
      monostarburst_color1 = Color.new(221, 139, 161)
      monostarburst_color2 = Color.new(229, 183, 196)
      monostarburst_color3 = Color.new(206, 92, 117)
    when 6 # Lavender
      monostarburst_color1 = Color.new(193, 180, 217)
      monostarburst_color2 = Color.new(227, 117, 254)
      monostarburst_color3 = Color.new(152, 88, 163)
    when 7 # Grey
      monostarburst_color1 = Color.new(167, 166, 162)
      monostarburst_color2 = Color.new(217, 225, 231)
      monostarburst_color3 = Color.new(99, 100, 103)
    when 8 # White
      monostarburst_color1 = Color.new(234, 235, 235)
      monostarburst_color2 = Color.new(249, 249, 249)
      monostarburst_color3 = Color.new(229, 230, 230)
    when 9 # Dark Sepia
      monostarburst_color1 = Color.new(167, 149, 139)
      monostarburst_color2 = Color.new(179, 153, 150)
      monostarburst_color3 = Color.new(100, 76, 63)
    when 10 # Light Sepia
      monostarburst_color1 = Color.new(230, 220, 209)
      monostarburst_color2 = Color.new(235, 240, 224)
      monostarburst_color3 = Color.new(220, 195, 170)
    else # Yellow (Default)
      monostarburst_color1 = Color.new(233, 210, 142)
      monostarburst_color2 = Color.new(242, 229, 190)
      monostarburst_color3 = Color.new(219, 191, 95)
     end

    # 1st starburst bitmap
    @monostarburst_bitmaps[0] = Bitmap.new(8, 8)
    @monostarburst_bitmaps[0].set_pixel(3, 3, monostarburst_color2)

    # 2nd starburst bitmap
    @monostarburst_bitmaps[1] = Bitmap.new(8, 8)
    @monostarburst_bitmaps[1].fill_rect(3, 2, 1, 3, monostarburst_color1)
    @monostarburst_bitmaps[1].fill_rect(2, 3, 3, 1, monostarburst_color1)
    @monostarburst_bitmaps[1].set_pixel(3, 3, monostarburst_color2)

    # 3d starburst bitmap
    @monostarburst_bitmaps[2] = Bitmap.new(7, 7)
    @monostarburst_bitmaps[2].set_pixel(1, 1, monostarburst_color3)
    @monostarburst_bitmaps[2].set_pixel(5, 1, monostarburst_color3)
    @monostarburst_bitmaps[2].set_pixel(2, 2, monostarburst_color3)
    @monostarburst_bitmaps[2].set_pixel(4, 2, monostarburst_color3)
    @monostarburst_bitmaps[2].set_pixel(3, 3, monostarburst_color1)
    @monostarburst_bitmaps[2].set_pixel(2, 4, monostarburst_color1)
    @monostarburst_bitmaps[2].set_pixel(4, 4, monostarburst_color1)
    @monostarburst_bitmaps[2].set_pixel(1, 5, monostarburst_color1)
    @monostarburst_bitmaps[2].set_pixel(5, 5, monostarburst_color2)

    # 4th starburst bitmap
    @monostarburst_bitmaps[3] = Bitmap.new(7, 7)
    @monostarburst_bitmaps[3].fill_rect(3, 1, 1, 5, monostarburst_color3)
    @monostarburst_bitmaps[3].fill_rect(1, 3, 5, 1, monostarburst_color3)
    @monostarburst_bitmaps[3].fill_rect(3, 2, 1, 3, monostarburst_color1)
    @monostarburst_bitmaps[3].fill_rect(2, 3, 3, 1, monostarburst_color1)
    @monostarburst_bitmaps[3].set_pixel(3, 3, monostarburst_color2)

    # 5th starburst bitmap
    @monostarburst_bitmaps[4] = Bitmap.new(7, 7)
    @monostarburst_bitmaps[4].fill_rect(2, 1, 3, 5, monostarburst_color3)
    @monostarburst_bitmaps[4].fill_rect(1, 2, 5, 3, monostarburst_color3)
    @monostarburst_bitmaps[4].fill_rect(2, 2, 3, 3, monostarburst_color1)
    @monostarburst_bitmaps[4].fill_rect(3, 1, 1, 5, monostarburst_color1)
    @monostarburst_bitmaps[4].fill_rect(1, 3, 5, 1, monostarburst_color1)
    @monostarburst_bitmaps[4].fill_rect(3, 2, 1, 3, monostarburst_color2)
    @monostarburst_bitmaps[4].fill_rect(2, 3, 3, 1, monostarburst_color2)
    @monostarburst_bitmaps[4].set_pixel(3, 3, monostarburst_color2)

    # 6th starburst bitmap
    @monostarburst_bitmaps[5] = Bitmap.new(7, 7)
    @monostarburst_bitmaps[5].fill_rect(2, 1, 3, 5, monostarburst_color1)
    @monostarburst_bitmaps[5].fill_rect(1, 2, 5, 3, monostarburst_color1)
    @monostarburst_bitmaps[5].fill_rect(3, 0, 1, 7, monostarburst_color3)
    @monostarburst_bitmaps[5].fill_rect(0, 3, 7, 1, monostarburst_color3)
    @monostarburst_bitmaps[5].fill_rect(2, 2, 3, 3, monostarburst_color2)
    @monostarburst_bitmaps[5].fill_rect(3, 2, 1, 3, monostarburst_color1)
    @monostarburst_bitmaps[5].fill_rect(2, 3, 3, 1, monostarburst_color1)
    @monostarburst_bitmaps[5].set_pixel(3, 3, monostarburst_color2)

    # 7th starburst bitmap
    @monostarburst_bitmaps[6] = Bitmap.new(8, 8)
    @monostarburst_bitmaps[6].fill_rect(3, 2, 1, 3, monostarburst_color1)
    @monostarburst_bitmaps[6].fill_rect(2, 3, 3, 1, monostarburst_color1)
    @monostarburst_bitmaps[6].set_pixel(3, 3, monostarburst_color2)

    # 8th starburst bitmap
    @monostarburst_bitmaps[7] = Bitmap.new(8, 8)
    @monostarburst_bitmaps[7].set_pixel(3, 3, monostarburst_color2)
#-------------------------------------------------------------------------------
    # Falling rock bitmaps

    @fallingrocks_bitmaps = []
    rock_color1 = Color.new(173, 145, 127)
    rock_color2 = Color.new(195, 159, 153)
    rock_color3 = Color.new(128, 120, 112)
    rock_color4 = Color.new(99, 92, 116)
    rock_color5 = Color.new(107, 89, 79)
    rock_color6 = Color.new(130, 110, 97)
    rock_color7 = Color.new(214, 181, 150)
    rock_color8 = Color.new(155, 129, 112)
    rock_color9 = Color.new(193, 177, 180)
    rock_color10 = Color.new(180, 180, 180)

    # 1st falling rock bitmap
    @fallingrocks_bitmaps[0] = Bitmap.new(10, 7)
    @fallingrocks_bitmaps[0].fill_rect(3, 0, 3, 1, rock_color1)
    @fallingrocks_bitmaps[0].fill_rect(1, 1, 2, 1, rock_color1)
    @fallingrocks_bitmaps[0].set_pixel(3, 1, rock_color10)
    @fallingrocks_bitmaps[0].fill_rect(4, 1, 1, 3, rock_color9)
    @fallingrocks_bitmaps[0].set_pixel(5, 1, rock_color2)
    @fallingrocks_bitmaps[0].set_pixel(6, 1, rock_color1)
    @fallingrocks_bitmaps[0].set_pixel(0, 2, rock_color1)
    @fallingrocks_bitmaps[0].fill_rect(1, 2, 3, 1, rock_color7)
    @fallingrocks_bitmaps[0].set_pixel(5, 2, rock_color9)
    @fallingrocks_bitmaps[0].set_pixel(6, 2, rock_color2)
    @fallingrocks_bitmaps[0].set_pixel(7, 2, rock_color3)
    @fallingrocks_bitmaps[0].fill_rect(8, 2, 2, 3, rock_color4)
    @fallingrocks_bitmaps[0].set_pixel(0, 3, rock_color3)
    @fallingrocks_bitmaps[0].set_pixel(1, 3, rock_color10)
    @fallingrocks_bitmaps[0].set_pixel(2, 3, rock_color7)
    @fallingrocks_bitmaps[0].set_pixel(3, 3, rock_color10)
    @fallingrocks_bitmaps[0].set_pixel(5, 3, rock_color2)
    @fallingrocks_bitmaps[0].set_pixel(6, 3, rock_color1)
    @fallingrocks_bitmaps[0].set_pixel(7, 3, rock_color5)
    @fallingrocks_bitmaps[0].fill_rect(0, 4, 2, 1, rock_color5)
    @fallingrocks_bitmaps[0].set_pixel(2, 4, rock_color3)
    @fallingrocks_bitmaps[0].set_pixel(3, 4, rock_color9)
    @fallingrocks_bitmaps[0].set_pixel(4, 4, rock_color2)
    @fallingrocks_bitmaps[0].set_pixel(5, 4, rock_color1)
    @fallingrocks_bitmaps[0].set_pixel(6, 4, rock_color8)
    @fallingrocks_bitmaps[0].set_pixel(7, 4, rock_color3)
    @fallingrocks_bitmaps[0].set_pixel(1, 5, rock_color4)
    @fallingrocks_bitmaps[0].fill_rect(2, 5, 2, 1, rock_color5)
    @fallingrocks_bitmaps[0].fill_rect(4, 5, 2, 1, rock_color3)
    @fallingrocks_bitmaps[0].fill_rect(6, 5, 2, 1, rock_color5)
    @fallingrocks_bitmaps[0].set_pixel(8, 5, rock_color4)
    @fallingrocks_bitmaps[0].fill_rect(3, 6, 5, 1, rock_color4)

    # 2nd falling rock bitmap
    @fallingrocks_bitmaps[1] = Bitmap.new(5, 4)
    @fallingrocks_bitmaps[1].set_pixel(1, 0, rock_color8)
    @fallingrocks_bitmaps[1].set_pixel(2, 0, rock_color1)
    @fallingrocks_bitmaps[1].set_pixel(3, 0, rock_color6)
    @fallingrocks_bitmaps[1].set_pixel(0, 1, rock_color6)
    @fallingrocks_bitmaps[1].set_pixel(1, 1, rock_color1)
    @fallingrocks_bitmaps[1].set_pixel(2, 1, rock_color2)
    @fallingrocks_bitmaps[1].set_pixel(3, 1, rock_color1)
    @fallingrocks_bitmaps[1].set_pixel(4, 1, rock_color5)
    @fallingrocks_bitmaps[1].fill_rect(0, 2, 1, 2, rock_color4)
    @fallingrocks_bitmaps[1].fill_rect(1, 2, 2, 1, rock_color6)
    @fallingrocks_bitmaps[1].set_pixel(3, 2, rock_color5)
    @fallingrocks_bitmaps[1].fill_rect(1, 3, 3, 1, rock_color4)

    # 3rd falling rock bitmap
    @fallingrocks_bitmaps[2] = Bitmap.new(7, 6)
    @fallingrocks_bitmaps[2].set_pixel(2, 0, rock_color4)
    @fallingrocks_bitmaps[2].set_pixel(3, 0, rock_color3)
    @fallingrocks_bitmaps[2].set_pixel(4, 0, rock_color8)
    @fallingrocks_bitmaps[2].set_pixel(5, 0, rock_color6)
    @fallingrocks_bitmaps[2].set_pixel(1, 1, rock_color3)
    @fallingrocks_bitmaps[2].set_pixel(2, 1, rock_color8)
    @fallingrocks_bitmaps[2].set_pixel(3, 1, rock_color2)
    @fallingrocks_bitmaps[2].fill_rect(4, 1, 1, 2, rock_color9)
    @fallingrocks_bitmaps[2].set_pixel(5, 1, rock_color8)
    @fallingrocks_bitmaps[2].fill_rect(6, 1, 1, 3, rock_color4)
    @fallingrocks_bitmaps[2].set_pixel(0, 2, rock_color3)
    @fallingrocks_bitmaps[2].set_pixel(1, 2, rock_color8)
    @fallingrocks_bitmaps[2].set_pixel(2, 2, rock_color2)
    @fallingrocks_bitmaps[2].fill_rect(3, 2, 1, 2, rock_color9)
    @fallingrocks_bitmaps[2].set_pixel(5, 2, rock_color6)
    @fallingrocks_bitmaps[2].set_pixel(0, 3, rock_color6)
    @fallingrocks_bitmaps[2].set_pixel(1, 3, rock_color2)
    @fallingrocks_bitmaps[2].set_pixel(2, 3, rock_color7)
    @fallingrocks_bitmaps[2].set_pixel(4, 3, rock_color6)
    @fallingrocks_bitmaps[2].fill_rect(5, 3, 1, 2, rock_color4)
    @fallingrocks_bitmaps[2].set_pixel(0, 4, rock_color5)
    @fallingrocks_bitmaps[2].set_pixel(1, 4, rock_color6)
    @fallingrocks_bitmaps[2].set_pixel(2, 4, rock_color9)
    @fallingrocks_bitmaps[2].set_pixel(3, 4, rock_color6)
    @fallingrocks_bitmaps[2].fill_rect(4, 4, 1, 2, rock_color4)
    @fallingrocks_bitmaps[2].set_pixel(0, 5, rock_color6)
    @fallingrocks_bitmaps[2].fill_rect(1, 5, 2, 1, rock_color5)
    @fallingrocks_bitmaps[2].set_pixel(3, 5, rock_color4)
#-------------------------------------------------------------------------------
    # Arrows

    case $game_screen.weather_variation
    when 1 # Fired Arrows
    arrow_color1 = Color.new(255, 128, 43)
    arrow_color2 = Color.new(255, 242, 0)
    arrow_color3 = Color.new(80, 50, 20)
    arrow_color4 = Color.new(255, 255, 255)
    arrow_color5 = Color.new(180, 180, 180)
  else
    arrow_color1 = Color.new(38, 0, 0)
    arrow_color2 = Color.new(73, 10, 42)
    arrow_color3 = Color.new(80, 50, 20)
    arrow_color4 = Color.new(255, 255, 255)
    arrow_color5 = Color.new(180, 180, 180)
  end

    @arrow_bitmap = Bitmap.new(23, 23)
    @arrow_bitmap.fill_rect(19, 0, 1, 3, arrow_color4)
    @arrow_bitmap.fill_rect(20, 0, 1, 2, arrow_color5)
    @arrow_bitmap.set_pixel(22, 0, arrow_color3)
    @arrow_bitmap.fill_rect(18, 1, 1, 3, arrow_color5)
    @arrow_bitmap.set_pixel(21, 1, arrow_color3)
    @arrow_bitmap.fill_rect(17, 2, 1, 3, arrow_color4)
    @arrow_bitmap.set_pixel(20, 2, arrow_color3)
    @arrow_bitmap.fill_rect(21, 2, 2, 1, arrow_color5)
    @arrow_bitmap.set_pixel(19, 3, arrow_color3)
    @arrow_bitmap.fill_rect(20, 3, 3, 1, arrow_color4)
    @arrow_bitmap.set_pixel(18, 4, arrow_color3)
    @arrow_bitmap.fill_rect(19, 4, 3, 1, arrow_color5)
    @arrow_bitmap.set_pixel(17, 5, arrow_color3)
    @arrow_bitmap.fill_rect(18, 5, 3, 1, arrow_color4)
    @arrow_bitmap.set_pixel(16, 6, arrow_color3)
    @arrow_bitmap.set_pixel(15, 7, arrow_color3)
    @arrow_bitmap.set_pixel(14, 8, arrow_color3)
    @arrow_bitmap.set_pixel(13, 9, arrow_color3)
    @arrow_bitmap.set_pixel(12, 10, arrow_color3)
    @arrow_bitmap.set_pixel(11, 11, arrow_color3)
    @arrow_bitmap.set_pixel(10, 12, arrow_color3)
    @arrow_bitmap.set_pixel(9, 13, arrow_color3)
    @arrow_bitmap.set_pixel(8, 14, arrow_color3)
    @arrow_bitmap.set_pixel(7, 15, arrow_color3)
    @arrow_bitmap.set_pixel(6, 16, arrow_color3)
    @arrow_bitmap.set_pixel(5, 17, arrow_color3)
    @arrow_bitmap.set_pixel(4, 18, arrow_color3)
    @arrow_bitmap.fill_rect(1, 19, 3, 1, arrow_color1)
    @arrow_bitmap.fill_rect(0, 20, 1, 3, arrow_color1)
    @arrow_bitmap.set_pixel(1, 20, arrow_color2)
    @arrow_bitmap.set_pixel(2, 20, arrow_color5)
    @arrow_bitmap.fill_rect(3, 20, 1, 2, arrow_color1)
    @arrow_bitmap.set_pixel(1, 21, arrow_color5)
    @arrow_bitmap.set_pixel(2, 21, arrow_color2)
    @arrow_bitmap.fill_rect(1, 22, 2, 1, arrow_color1)
#-------------------------------------------------------------------------------
    # Butterflies

    @butterfly_bitmaps = []
    case $game_screen.weather_variation
    when 1
      # Red butterflies
      butterfly_color1 = Color.new(204, 53, 55)
      butterfly_color2 = Color.new(206, 76, 74)
      butterfly_color3 = Color.new(252, 131, 137)
      butterfly_color4 = Color.new(255, 178, 163)
      butterfly_color5 = Color.new(175, 35, 49)
    when 2
      # Yellow butterflies
      butterfly_color1 = Color.new(209, 190, 75)
      butterfly_color2 = Color.new(254, 228, 131)
      butterfly_color3 = Color.new(205, 178, 52)
      butterfly_color4 = Color.new(255, 255, 162)
      butterfly_color5 = Color.new(177, 141, 34)
    when 3
      # Aqua-blue butterflies
      butterfly_color1 = Color.new(53, 204, 201)
      butterfly_color2 = Color.new(73, 204, 204)
      butterfly_color3 = Color.new(129, 249, 243)
      butterfly_color4 = Color.new(163, 241, 255)
      butterfly_color5 = Color.new(34, 173, 159)
    when 4
      # Green butterflies
      butterfly_color1 = Color.new(63, 204, 53)
      butterfly_color2 = Color.new(77, 204, 73)
      butterfly_color3 = Color.new(138, 247, 128)
      butterfly_color4 = Color.new(163, 255, 173)
      butterfly_color5 = Color.new(54, 170, 34)
    when 5
      # White butterflies
      butterfly_color1 = Color.new(180, 180, 180)
      butterfly_color2 = Color.new(198, 198, 198)
      butterfly_color3 = Color.new(249, 249, 249)
      butterfly_color4 = Color.new(231, 231, 231)
      butterfly_color5 = Color.new(255, 255, 255)
    when 6
      # Light cyan butterflies
      butterfly_color1 = Color.new(26, 230, 230)
      butterfly_color2 = Color.new(19, 171, 171)
      butterfly_color3 = Color.new(108, 239, 239)
      butterfly_color4 = Color.new(135, 242, 242)
      butterfly_color5 = Color.new(135, 242, 242)
    when 7
      # Light green butterflies
      butterfly_color1 = Color.new(23, 171, 19)
      butterfly_color2 = Color.new(32, 230, 26)
      butterfly_color3 = Color.new(138, 242, 135)
      butterfly_color4 = Color.new(112, 239, 108)
      butterfly_color5 = Color.new(138, 242, 135)
    when 8
      # Purple butterflies
      butterfly_color1 = Color.new(176, 15, 108)
      butterfly_color2 = Color.new(236, 20, 145)
      butterfly_color3 = Color.new(243, 104, 185)
      butterfly_color4 = Color.new(245, 132, 198)
      butterfly_color5 = Color.new(243, 104, 185)
    when 9
      # Light yellow butterflies
      butterfly_color1 = Color.new(204, 193, 51)
      butterfly_color2 = Color.new(217, 209, 102)
      butterfly_color3 = Color.new(234, 229, 169)
      butterfly_color4 = Color.new(239, 236, 191)
      butterfly_color5 = Color.new(234, 229, 169)
    when 10
      # Lavender butterflies
      butterfly_color1 = Color.new(154, 129, 201)
      butterfly_color2 = Color.new(179, 160, 214)
      butterfly_color3 = Color.new(212, 202, 232)
      butterfly_color4 = Color.new(224, 216, 218)
      butterfly_color5 = Color.new(212, 202, 232)
    when 11
      # Brown butterflies
      butterfly_color1 = Color.new(129, 78, 43)
      butterfly_color2 = Color.new(176, 107, 59)
      butterfly_color3 = Color.new(207, 150, 110)
      butterfly_color4 = Color.new(213, 163, 129)
      butterfly_color5 = Color.new(207, 150, 110)
   when 12
      # Dark Grey butterflies
      butterfly_color1 = Color.new(42, 42, 42)
      butterfly_color2 = Color.new(57, 57, 57)
      butterfly_color3 = Color.new(77, 77, 77)
      butterfly_color4 = Color.new(83, 83, 83)
      butterfly_color5 = Color.new(77, 77, 77)
   when 13
      # Light Sepia butterflies
      butterfly_color1 = Color.new(163, 152, 140)
      butterfly_color2 = Color.new(191, 187, 183)
      butterfly_color3 = Color.new(231, 230, 230)
      butterfly_color4 = Color.new(245, 245, 245)
      butterfly_color5 = Color.new(231, 230, 230)
    when 14
      # Dark Sepia butterflies
      butterfly_color1 = Color.new(179, 154, 127)
      butterfly_color2 = Color.new(205, 179, 151)
      butterfly_color3 = Color.new(224, 210, 196)
      butterfly_color4 = Color.new(234, 225, 216)
      butterfly_color5 = Color.new(224, 210, 196)
    when 15
      # Old T'vision butterflies
      butterfly_color1 = Color.new(126, 126, 126)
      butterfly_color2 = Color.new(162, 162, 162)
      butterfly_color3 = Color.new(217, 217, 217)
      butterfly_color4 = Color.new(240, 240, 240)
      butterfly_color5 = Color.new(217, 217, 217)
    else
      # Violet butterflies
      butterfly_color1 = Color.new(163, 53, 204)
      butterfly_color2 = Color.new(173, 73, 204)
      butterfly_color3 = Color.new(209, 128, 242)
      butterfly_color4 = Color.new(247, 163, 255)
      butterfly_color5 = Color.new(121, 33, 165)
    end

    # Butterfly up 1
    @butterfly_bitmaps[0] = Bitmap.new(9, 6)
    @butterfly_bitmaps[0].fill_rect(1, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[0].fill_rect(6, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[0].fill_rect(0, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(1, 1, butterfly_color2)
    @butterfly_bitmaps[0].fill_rect(2, 1, 1, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(3, 1, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(5, 1, butterfly_color1)
    @butterfly_bitmaps[0].fill_rect(6, 1, 1, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(7, 1, butterfly_color2)
    @butterfly_bitmaps[0].fill_rect(8, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(1, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(4, 2, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(5, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(7, 2, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(1, 3, butterfly_color5)
    @butterfly_bitmaps[0].fill_rect(2, 3, 2, 1, butterfly_color2)
    @butterfly_bitmaps[0].set_pixel(4, 3, butterfly_color5)
    @butterfly_bitmaps[0].fill_rect(5, 3, 2, 1, butterfly_color2)
    @butterfly_bitmaps[0].set_pixel(7, 3, butterfly_color5)
    @butterfly_bitmaps[0].fill_rect(1, 4, 1, 2, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(2, 4, butterfly_color4)
    @butterfly_bitmaps[0].set_pixel(3, 4, butterfly_color5)
    @butterfly_bitmaps[0].set_pixel(5, 4, butterfly_color5)
    @butterfly_bitmaps[0].set_pixel(6, 4, butterfly_color4)
    @butterfly_bitmaps[0].fill_rect(7, 4, 1, 2, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(2, 5, butterfly_color1)
    @butterfly_bitmaps[0].set_pixel(6, 5, butterfly_color1)

    # Butterfly up 2
    @butterfly_bitmaps[1] = Bitmap.new(9, 6)
    @butterfly_bitmaps[1].fill_rect(2, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[1].fill_rect(5, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[1].fill_rect(0, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[1].fill_rect(1, 1, 3, 1, butterfly_color4)
    @butterfly_bitmaps[1].fill_rect(4, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[1].fill_rect(5, 1, 3, 1, butterfly_color4)
    @butterfly_bitmaps[1].fill_rect(8, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[1].fill_rect(1, 2, 2, 1, butterfly_color4)
    @butterfly_bitmaps[1].set_pixel(3, 2, butterfly_color2)
    @butterfly_bitmaps[1].set_pixel(5, 2, butterfly_color2)
    @butterfly_bitmaps[1].fill_rect(6, 2, 2, 1, butterfly_color4)
    @butterfly_bitmaps[1].set_pixel(1, 3, butterfly_color5)
    @butterfly_bitmaps[1].fill_rect(2, 3, 2, 1, butterfly_color1)
    @butterfly_bitmaps[1].set_pixel(4, 3, butterfly_color5)
    @butterfly_bitmaps[1].fill_rect(5, 3, 2, 1, butterfly_color1)
    @butterfly_bitmaps[1].set_pixel(7, 3, butterfly_color5)
    @butterfly_bitmaps[1].set_pixel(1, 4, butterfly_color1)
    @butterfly_bitmaps[1].set_pixel(2, 4, butterfly_color2)
    @butterfly_bitmaps[1].set_pixel(3, 4, butterfly_color5)
    @butterfly_bitmaps[1].set_pixel(5, 4, butterfly_color5)
    @butterfly_bitmaps[1].set_pixel(6, 4, butterfly_color2)
    @butterfly_bitmaps[1].set_pixel(7, 4, butterfly_color1)
    @butterfly_bitmaps[1].set_pixel(2, 5, butterfly_color1)
    @butterfly_bitmaps[1].set_pixel(6, 5, butterfly_color1)

    # Butterfly up 3
    @butterfly_bitmaps[2] = Bitmap.new(9, 6)
    @butterfly_bitmaps[2].fill_rect(1, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[2].fill_rect(6, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[2].fill_rect(0, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(1, 1, butterfly_color2)
    @butterfly_bitmaps[2].fill_rect(2, 1, 1, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(3, 1, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(5, 1, butterfly_color1)
    @butterfly_bitmaps[2].fill_rect(6, 1, 1, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(7, 1, butterfly_color2)
    @butterfly_bitmaps[2].fill_rect(8, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(1, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(4, 2, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(5, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(7, 2, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(1, 3, butterfly_color5)
    @butterfly_bitmaps[2].fill_rect(2, 3, 2, 1, butterfly_color2)
    @butterfly_bitmaps[2].set_pixel(4, 3, butterfly_color5)
    @butterfly_bitmaps[2].fill_rect(5, 3, 2, 1, butterfly_color2)
    @butterfly_bitmaps[2].set_pixel(7, 3, butterfly_color5)
    @butterfly_bitmaps[2].fill_rect(1, 4, 1, 2, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(2, 4, butterfly_color4)
    @butterfly_bitmaps[2].set_pixel(3, 4, butterfly_color5)
    @butterfly_bitmaps[2].set_pixel(5, 4, butterfly_color5)
    @butterfly_bitmaps[2].set_pixel(6, 4, butterfly_color4)
    @butterfly_bitmaps[2].fill_rect(7, 4, 1, 2, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(2, 5, butterfly_color1)
    @butterfly_bitmaps[2].set_pixel(6, 5, butterfly_color1)

    # Butterfly up 4
    @butterfly_bitmaps[3] = Bitmap.new(7, 6)
    @butterfly_bitmaps[3].fill_rect(1, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[3].fill_rect(4, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[3].fill_rect(0, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[3].fill_rect(1, 1, 2, 2, butterfly_color4)
    @butterfly_bitmaps[3].fill_rect(4, 1, 2, 2, butterfly_color4)
    @butterfly_bitmaps[3].fill_rect(6, 1, 1, 2, butterfly_color1)
    @butterfly_bitmaps[3].fill_rect(3, 2, 1, 2, butterfly_color1)
    @butterfly_bitmaps[3].set_pixel(1, 3, butterfly_color5)
    @butterfly_bitmaps[3].fill_rect(2, 3, 1, 2, butterfly_color2)
    @butterfly_bitmaps[3].fill_rect(4, 3, 1, 2, butterfly_color2)
    @butterfly_bitmaps[3].set_pixel(5, 3, butterfly_color5)
    @butterfly_bitmaps[3].set_pixel(1, 4, butterfly_color2)
    @butterfly_bitmaps[3].set_pixel(3, 4, butterfly_color5)
    @butterfly_bitmaps[3].set_pixel(5, 4, butterfly_color2)
    @butterfly_bitmaps[3].set_pixel(1, 5, butterfly_color1)
    @butterfly_bitmaps[3].set_pixel(2, 5, butterfly_color5)
    @butterfly_bitmaps[3].set_pixel(4, 5, butterfly_color5)
    @butterfly_bitmaps[3].set_pixel(5, 5, butterfly_color1)

    # Butterfly down 1
    @butterfly_bitmaps[4] = Bitmap.new(9, 6)
    @butterfly_bitmaps[4].fill_rect(1, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[4].fill_rect(6, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(1, 1, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(2, 1, butterfly_color4)
    @butterfly_bitmaps[4].set_pixel(3, 1, butterfly_color5)
    @butterfly_bitmaps[4].set_pixel(5, 1, butterfly_color5)
    @butterfly_bitmaps[4].set_pixel(6, 1, butterfly_color4)
    @butterfly_bitmaps[4].set_pixel(7, 1, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[4].fill_rect(2, 2, 2, 1, butterfly_color2)
    @butterfly_bitmaps[4].set_pixel(4, 2, butterfly_color5)
    @butterfly_bitmaps[4].fill_rect(5, 2, 2, 1, butterfly_color2)
    @butterfly_bitmaps[4].set_pixel(7, 2, butterfly_color5)
    @butterfly_bitmaps[4].fill_rect(0, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[4].fill_rect(1, 3, 3, 1, butterfly_color4)
    @butterfly_bitmaps[4].set_pixel(4, 3, butterfly_color1)
    @butterfly_bitmaps[4].fill_rect(5, 3, 3, 1, butterfly_color4)
    @butterfly_bitmaps[4].fill_rect(8, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(1, 4, butterfly_color2)
    @butterfly_bitmaps[4].set_pixel(2, 4, butterfly_color4)
    @butterfly_bitmaps[4].set_pixel(3, 4, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(5, 4, butterfly_color1)
    @butterfly_bitmaps[4].set_pixel(6, 4, butterfly_color4)
    @butterfly_bitmaps[4].set_pixel(7, 4, butterfly_color2)
    @butterfly_bitmaps[4].fill_rect(1, 5, 2, 1, butterfly_color1)
    @butterfly_bitmaps[4].fill_rect(6, 5, 2, 1, butterfly_color1)

    # Butterfly down 2
    @butterfly_bitmaps[5] = Bitmap.new(9, 6)
    @butterfly_bitmaps[5].set_pixel(2, 0, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(6, 0, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(1, 1, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(2, 1, butterfly_color2)
    @butterfly_bitmaps[5].set_pixel(3, 1, butterfly_color5)
    @butterfly_bitmaps[5].set_pixel(5, 1, butterfly_color5)
    @butterfly_bitmaps[5].set_pixel(6, 1, butterfly_color2)
    @butterfly_bitmaps[5].set_pixel(7, 1, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[5].fill_rect(2, 2, 2, 1, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(4, 2, butterfly_color5)
    @butterfly_bitmaps[5].fill_rect(5, 2, 2, 1, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(7, 2, butterfly_color5)
    @butterfly_bitmaps[5].fill_rect(0, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[5].fill_rect(1, 3, 2, 2, butterfly_color4)
    @butterfly_bitmaps[5].set_pixel(3, 3, butterfly_color2)
    @butterfly_bitmaps[5].fill_rect(4, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(5, 3, butterfly_color2)
    @butterfly_bitmaps[5].fill_rect(6, 3, 2, 2, butterfly_color4)
    @butterfly_bitmaps[5].fill_rect(8, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[5].set_pixel(3, 4, butterfly_color4)
    @butterfly_bitmaps[5].set_pixel(5, 4, butterfly_color4)
    @butterfly_bitmaps[5].fill_rect(2, 5, 2, 1, butterfly_color1)
    @butterfly_bitmaps[5].fill_rect(5, 5, 2, 1, butterfly_color1)

    # Butterfly down 3
    @butterfly_bitmaps[6] = Bitmap.new(9, 6)
    @butterfly_bitmaps[6].fill_rect(1, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[6].fill_rect(6, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(1, 1, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(2, 1, butterfly_color4)
    @butterfly_bitmaps[6].set_pixel(3, 1, butterfly_color5)
    @butterfly_bitmaps[6].set_pixel(5, 1, butterfly_color5)
    @butterfly_bitmaps[6].set_pixel(6, 1, butterfly_color4)
    @butterfly_bitmaps[6].set_pixel(7, 1, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[6].fill_rect(2, 2, 2, 1, butterfly_color2)
    @butterfly_bitmaps[6].set_pixel(4, 2, butterfly_color5)
    @butterfly_bitmaps[6].fill_rect(5, 2, 2, 1, butterfly_color2)
    @butterfly_bitmaps[6].set_pixel(7, 2, butterfly_color5)
    @butterfly_bitmaps[6].fill_rect(0, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[6].fill_rect(1, 3, 3, 1, butterfly_color4)
    @butterfly_bitmaps[6].set_pixel(4, 3, butterfly_color1)
    @butterfly_bitmaps[6].fill_rect(5, 3, 3, 1, butterfly_color4)
    @butterfly_bitmaps[6].fill_rect(8, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(1, 4, butterfly_color2)
    @butterfly_bitmaps[6].set_pixel(2, 4, butterfly_color4)
    @butterfly_bitmaps[6].set_pixel(3, 4, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(5, 4, butterfly_color1)
    @butterfly_bitmaps[6].set_pixel(6, 4, butterfly_color4)
    @butterfly_bitmaps[6].set_pixel(7, 4, butterfly_color2)
    @butterfly_bitmaps[6].fill_rect(1, 5, 2, 1, butterfly_color1)
    @butterfly_bitmaps[6].fill_rect(6, 5, 2, 1, butterfly_color1)

    # Butterfly down 4
    @butterfly_bitmaps[7] = Bitmap.new(7, 6)
    @butterfly_bitmaps[7].set_pixel(1, 0, butterfly_color1)
    @butterfly_bitmaps[7].set_pixel(2, 0, butterfly_color5)
    @butterfly_bitmaps[7].set_pixel(4, 0, butterfly_color5)
    @butterfly_bitmaps[7].set_pixel(5, 0, butterfly_color1)
    @butterfly_bitmaps[7].fill_rect(1, 1, 2, 1, butterfly_color2)
    @butterfly_bitmaps[7].set_pixel(3, 1, butterfly_color5)
    @butterfly_bitmaps[7].fill_rect(4, 1, 2, 1, butterfly_color2)
    @butterfly_bitmaps[7].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[7].set_pixel(2, 2, butterfly_color2)
    @butterfly_bitmaps[7].fill_rect(3, 2, 1, 2, butterfly_color1)
    @butterfly_bitmaps[7].set_pixel(4, 2, butterfly_color2)
    @butterfly_bitmaps[7].set_pixel(5, 2, butterfly_color5)
    @butterfly_bitmaps[7].fill_rect(0, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[7].fill_rect(1, 3, 2, 2, butterfly_color4)
    @butterfly_bitmaps[7].fill_rect(4, 3, 2, 2, butterfly_color4)
    @butterfly_bitmaps[7].fill_rect(6, 3, 1, 2, butterfly_color1)
    @butterfly_bitmaps[7].fill_rect(1, 5, 2, 1, butterfly_color1)
    @butterfly_bitmaps[7].fill_rect(4, 5, 2, 1, butterfly_color1)

    # Butterfly left 1
    @butterfly_bitmaps[8] = Bitmap.new(7, 7)
    @butterfly_bitmaps[8].set_pixel(2, 0, butterfly_color3)
    @butterfly_bitmaps[8].fill_rect(3, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[8].fill_rect(0, 1, 2, 2, butterfly_color3)
    @butterfly_bitmaps[8].set_pixel(2, 1, butterfly_color2)
    @butterfly_bitmaps[8].fill_rect(3, 1, 1, 3, butterfly_color4)
    @butterfly_bitmaps[8].set_pixel(4, 1, butterfly_color2)
    @butterfly_bitmaps[8].fill_rect(5, 1, 1, 3, butterfly_color1)
    @butterfly_bitmaps[8].fill_rect(2, 2, 1, 2, butterfly_color4)
    @butterfly_bitmaps[8].set_pixel(4, 2, butterfly_color4)
    @butterfly_bitmaps[8].set_pixel(0, 3, butterfly_color3)
    @butterfly_bitmaps[8].fill_rect(1, 3, 1, 2, butterfly_color5)
    @butterfly_bitmaps[8].set_pixel(4, 3, butterfly_color2)
    @butterfly_bitmaps[8].fill_rect(2, 4, 2, 1, butterfly_color2)
    @butterfly_bitmaps[8].set_pixel(4, 4, butterfly_color1)
    @butterfly_bitmaps[8].set_pixel(5, 4, butterfly_color5)
    @butterfly_bitmaps[8].set_pixel(2, 5, butterfly_color5)
    @butterfly_bitmaps[8].set_pixel(3, 5, butterfly_color1)
    @butterfly_bitmaps[8].fill_rect(4, 5, 2, 1, butterfly_color2)
    @butterfly_bitmaps[8].set_pixel(6, 5, butterfly_color1)
    @butterfly_bitmaps[8].set_pixel(3, 6, butterfly_color5)
    @butterfly_bitmaps[8].fill_rect(4, 6, 2, 1, butterfly_color1)

    # Butterfly left 2
    @butterfly_bitmaps[9] = Bitmap.new(7, 6)
    @butterfly_bitmaps[9].fill_rect(1, 0, 2, 1, butterfly_color2)
    @butterfly_bitmaps[9].set_pixel(3, 0, butterfly_color1)
    @butterfly_bitmaps[9].fill_rect(0, 1, 1, 2, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(1, 1, butterfly_color2)
    @butterfly_bitmaps[9].set_pixel(2, 1, butterfly_color4)
    @butterfly_bitmaps[9].set_pixel(3, 1, butterfly_color2)
    @butterfly_bitmaps[9].set_pixel(4, 1, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[9].set_pixel(2, 2, butterfly_color2)
    @butterfly_bitmaps[9].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[9].fill_rect(4, 2, 1, 2, butterfly_color2)
    @butterfly_bitmaps[9].fill_rect(5, 2, 1, 2, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(2, 3, butterfly_color5)
    @butterfly_bitmaps[9].set_pixel(3, 3, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(4, 4, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(5, 4, butterfly_color2)
    @butterfly_bitmaps[9].set_pixel(6, 4, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(5, 5, butterfly_color3)
    @butterfly_bitmaps[9].set_pixel(6, 5, butterfly_color2)

    # Butterfly left 3
    @butterfly_bitmaps[10] = Bitmap.new(7, 6)
    @butterfly_bitmaps[10].fill_rect(2, 0, 2, 1, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(4, 0, butterfly_color5)
    @butterfly_bitmaps[10].fill_rect(0, 1, 2, 1, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(2, 1, butterfly_color2)
    @butterfly_bitmaps[10].fill_rect(3, 1, 2, 2, butterfly_color4)
    @butterfly_bitmaps[10].set_pixel(5, 1, butterfly_color5)
    @butterfly_bitmaps[10].set_pixel(0, 2, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(1, 2, butterfly_color2)
    @butterfly_bitmaps[10].fill_rect(2, 2, 1, 2, butterfly_color4)
    @butterfly_bitmaps[10].set_pixel(5, 2, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(1, 3, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(3, 3, butterfly_color2)
    @butterfly_bitmaps[10].set_pixel(4, 3, butterfly_color3)
    @butterfly_bitmaps[10].fill_rect(5, 3, 1, 2, butterfly_color2)
    @butterfly_bitmaps[10].fill_rect(6, 3, 1, 2, butterfly_color3)
    @butterfly_bitmaps[10].fill_rect(2, 4, 2, 1, butterfly_color3)
    @butterfly_bitmaps[10].set_pixel(4, 4, butterfly_color2)
    @butterfly_bitmaps[10].fill_rect(4, 5, 2, 1, butterfly_color3)

    # Butterfly left 4
    @butterfly_bitmaps[11] = Bitmap.new(7, 6)
    @butterfly_bitmaps[11].fill_rect(1, 0, 2, 1, butterfly_color2)
    @butterfly_bitmaps[11].set_pixel(3, 0, butterfly_color1)
    @butterfly_bitmaps[11].fill_rect(0, 1, 2, 1, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(2, 1, butterfly_color4)
    @butterfly_bitmaps[11].set_pixel(3, 1, butterfly_color2)
    @butterfly_bitmaps[11].set_pixel(4, 1, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(0, 2, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(1, 2, butterfly_color5)
    @butterfly_bitmaps[11].set_pixel(2, 2, butterfly_color2)
    @butterfly_bitmaps[11].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[11].fill_rect(4, 2, 1, 2, butterfly_color2)
    @butterfly_bitmaps[11].fill_rect(5, 2, 1, 2, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(2, 3, butterfly_color5)
    @butterfly_bitmaps[11].set_pixel(3, 3, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(4, 4, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(5, 4, butterfly_color2)
    @butterfly_bitmaps[11].fill_rect(6, 4, 1, 2, butterfly_color3)
    @butterfly_bitmaps[11].set_pixel(5, 5, butterfly_color3)

    # Butterfly right 1
    @butterfly_bitmaps[12] = Bitmap.new(7, 7)
    @butterfly_bitmaps[12].fill_rect(2, 0, 2, 1, butterfly_color1)
    @butterfly_bitmaps[12].set_pixel(4, 0, butterfly_color3)
    @butterfly_bitmaps[12].fill_rect(1, 1, 1, 3, butterfly_color1)
    @butterfly_bitmaps[12].set_pixel(2, 1, butterfly_color2)
    @butterfly_bitmaps[12].fill_rect(3, 1, 1, 3, butterfly_color4)
    @butterfly_bitmaps[12].set_pixel(4, 1, butterfly_color2)
    @butterfly_bitmaps[12].fill_rect(5, 1, 2, 2, butterfly_color3)
    @butterfly_bitmaps[12].set_pixel(2, 2, butterfly_color4)
    @butterfly_bitmaps[12].fill_rect(4, 2, 1, 2, butterfly_color4)
    @butterfly_bitmaps[12].set_pixel(2, 3, butterfly_color2)
    @butterfly_bitmaps[12].fill_rect(5, 3, 1, 2, butterfly_color5)
    @butterfly_bitmaps[12].set_pixel(6, 3, butterfly_color3)
    @butterfly_bitmaps[12].set_pixel(1, 4, butterfly_color5)
    @butterfly_bitmaps[12].set_pixel(2, 4, butterfly_color1)
    @butterfly_bitmaps[12].fill_rect(3, 4, 2, 1, butterfly_color2)
    @butterfly_bitmaps[12].set_pixel(0, 5, butterfly_color1)
    @butterfly_bitmaps[12].fill_rect(1, 5, 2, 1, butterfly_color2)
    @butterfly_bitmaps[12].set_pixel(3, 5, butterfly_color1)
    @butterfly_bitmaps[12].set_pixel(4, 5, butterfly_color5)
    @butterfly_bitmaps[12].fill_rect(1, 6, 2, 1, butterfly_color1)
    @butterfly_bitmaps[12].set_pixel(3, 6, butterfly_color5)

    # Butterfly right 2
    @butterfly_bitmaps[13] = Bitmap.new(7, 6)
    @butterfly_bitmaps[13].set_pixel(3, 0, butterfly_color1)
    @butterfly_bitmaps[13].fill_rect(4, 0, 2, 1, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(2, 1, butterfly_color3)
    @butterfly_bitmaps[13].set_pixel(3, 1, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(4, 1, butterfly_color4)
    @butterfly_bitmaps[13].set_pixel(5, 1, butterfly_color2)
    @butterfly_bitmaps[13].fill_rect(6, 1, 1, 2, butterfly_color3)
    @butterfly_bitmaps[13].fill_rect(1, 2, 1, 2, butterfly_color3)
    @butterfly_bitmaps[13].fill_rect(2, 2, 1, 2, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[13].set_pixel(4, 2, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(5, 2, butterfly_color5)
    @butterfly_bitmaps[13].set_pixel(3, 3, butterfly_color3)
    @butterfly_bitmaps[13].set_pixel(4, 3, butterfly_color5)
    @butterfly_bitmaps[13].set_pixel(0, 4, butterfly_color3)
    @butterfly_bitmaps[13].set_pixel(1, 4, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(2, 4, butterfly_color3)
    @butterfly_bitmaps[13].set_pixel(0, 5, butterfly_color2)
    @butterfly_bitmaps[13].set_pixel(1, 5, butterfly_color3)

    # Butterfly right 3
    @butterfly_bitmaps[14] = Bitmap.new(7, 6)
    @butterfly_bitmaps[14].set_pixel(2, 0, butterfly_color5)
    @butterfly_bitmaps[14].fill_rect(3, 0, 2, 1, butterfly_color3)
    @butterfly_bitmaps[14].set_pixel(1, 1, butterfly_color5)
    @butterfly_bitmaps[14].fill_rect(2, 1, 2, 2, butterfly_color4)
    @butterfly_bitmaps[14].set_pixel(4, 1, butterfly_color2)
    @butterfly_bitmaps[14].fill_rect(5, 1, 2, 1, butterfly_color3)
    @butterfly_bitmaps[14].set_pixel(1, 2, butterfly_color3)
    @butterfly_bitmaps[14].fill_rect(4, 2, 1, 2, butterfly_color4)
    @butterfly_bitmaps[14].set_pixel(5, 2, butterfly_color2)
    @butterfly_bitmaps[14].set_pixel(6, 2, butterfly_color3)
    @butterfly_bitmaps[14].fill_rect(0, 3, 1, 2, butterfly_color3)
    @butterfly_bitmaps[14].fill_rect(1, 3, 1, 2, butterfly_color2)
    @butterfly_bitmaps[14].set_pixel(2, 3, butterfly_color3)
    @butterfly_bitmaps[14].set_pixel(3, 3, butterfly_color2)
    @butterfly_bitmaps[14].set_pixel(5, 3, butterfly_color3)
    @butterfly_bitmaps[14].set_pixel(2, 4, butterfly_color2)
    @butterfly_bitmaps[14].fill_rect(3, 4, 2, 1, butterfly_color3)
    @butterfly_bitmaps[14].fill_rect(1, 5, 2, 1, butterfly_color3)

    # Butterfly right 4
    @butterfly_bitmaps[15] = Bitmap.new(7, 6)
    @butterfly_bitmaps[15].set_pixel(3, 0, butterfly_color1)
    @butterfly_bitmaps[15].fill_rect(4, 0, 2, 1, butterfly_color2)
    @butterfly_bitmaps[15].set_pixel(2, 1, butterfly_color3)
    @butterfly_bitmaps[15].set_pixel(3, 1, butterfly_color2)
    @butterfly_bitmaps[15].set_pixel(4, 1, butterfly_color4)
    @butterfly_bitmaps[15].fill_rect(5, 1, 2, 1, butterfly_color3)
    @butterfly_bitmaps[15].fill_rect(1, 2, 1, 2, butterfly_color3)
    @butterfly_bitmaps[15].fill_rect(2, 2, 1, 2, butterfly_color2)
    @butterfly_bitmaps[15].set_pixel(3, 2, butterfly_color4)
    @butterfly_bitmaps[15].set_pixel(4, 2, butterfly_color2)
    @butterfly_bitmaps[15].set_pixel(5, 2, butterfly_color5)
    @butterfly_bitmaps[15].set_pixel(6, 2, butterfly_color3)
    @butterfly_bitmaps[15].set_pixel(3, 3, butterfly_color3)
    @butterfly_bitmaps[15].set_pixel(4, 3, butterfly_color5)
    @butterfly_bitmaps[15].fill_rect(0, 4, 1, 2, butterfly_color3)
    @butterfly_bitmaps[15].set_pixel(1, 4, butterfly_color2)
    @butterfly_bitmaps[15].set_pixel(2, 4, butterfly_color3)
    @butterfly_bitmaps[15].set_pixel(1, 5, butterfly_color3)
#-------------------------------------------------------------------------------
    # Bird bitmaps

    @bird_bitmaps = []
    case $game_screen.weather_variation
      when 1 #Grey Pigeons
    bird_color1 = Color.new(75, 75, 75)
    bird_color2 = Color.new(128, 128, 128)
    bird_color3 = Color.new(136, 136, 136)
    bird_color4 = Color.new(154, 154, 154)
    bird_color5 = Color.new(192, 192, 192)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(245, 245, 245)
    bird_color8 = Color.new(192, 192, 192)
    bird_color9 = Color.new(225, 225, 226)
      when 2 #Crows
    bird_color1 = Color.new(20, 20, 20)
    bird_color2 = Color.new(34, 34, 34)
    bird_color3 = Color.new(41, 41, 41)
    bird_color4 = Color.new(27, 27, 27)
    bird_color5 = Color.new(41, 41, 41)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(32, 32, 32)
    bird_color8 = Color.new(41, 41, 41)
    bird_color9 = Color.new(24, 23, 24)
      when 3 #Pink pigeons
    bird_color1 = Color.new(213, 18, 18)
    bird_color2 = Color.new(243, 113, 113)
    bird_color3 = Color.new(239, 58, 58)
    bird_color4 = Color.new(248, 170, 170)
    bird_color5 = Color.new(239, 58, 58)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(147, 46, 42)
    bird_color8 = Color.new(248, 170, 170)
    bird_color9 = Color.new(209, 210, 211)
      when 4 #Green Birds
    bird_color1 = Color.new(49, 131, 44)
    bird_color2 = Color.new(101, 202, 95)
    bird_color3 = Color.new(65, 177, 59)
    bird_color4 = Color.new(144, 217, 140)
    bird_color5 = Color.new(65, 177, 59)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(248, 170, 170)
    bird_color8 = Color.new(144, 217, 140)
    bird_color9 = Color.new(209, 210, 211)
      when 5 #Yellow Birds
    bird_color1 = Color.new(167, 137, 14)
    bird_color2 = Color.new(240, 206, 67)
    bird_color3 = Color.new(228, 187, 19)
    bird_color4 = Color.new(240, 206, 67)
    bird_color5 = Color.new(228, 187, 19)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(191, 90, 97)
    bird_color8 = Color.new(244, 220, 124)
    bird_color9 = Color.new(225, 225, 226)
      else #White Pigeons
    bird_color1 = Color.new(100, 100, 100)
    bird_color2 = Color.new(170, 170, 170)
    bird_color3 = Color.new(136, 136, 136)
    bird_color4 = Color.new(204, 204, 204)
    bird_color5 = Color.new(240, 240, 240)
    bird_color6 = Color.new(73, 51, 87)
    bird_color7 = Color.new(191, 90, 97)
    bird_color8 = Color.new(255, 255, 255)
    bird_color9 = Color.new(223, 130, 142)
  end

    # Bird left 1
    @bird_bitmaps[0] = Bitmap.new(12, 10)
    @bird_bitmaps[0].fill_rect(7, 0, 3, 1, bird_color1)
    @bird_bitmaps[0].set_pixel(5, 1, bird_color1)
    @bird_bitmaps[0].fill_rect(6, 1, 2, 1, bird_color2)
    @bird_bitmaps[0].set_pixel(8, 1, bird_color3)
    @bird_bitmaps[0].set_pixel(9, 1, bird_color1)
    @bird_bitmaps[0].set_pixel(3, 2, bird_color1)
    @bird_bitmaps[0].set_pixel(4, 2, bird_color2)
    @bird_bitmaps[0].set_pixel(5, 2, bird_color3)
    @bird_bitmaps[0].set_pixel(6, 2, bird_color4)
    @bird_bitmaps[0].fill_rect(7, 2, 5, 1, bird_color8)
    @bird_bitmaps[0].set_pixel(3, 3, bird_color6)
    @bird_bitmaps[0].set_pixel(4, 3, bird_color3)
    @bird_bitmaps[0].fill_rect(5, 3, 1, 3, bird_color8)
    @bird_bitmaps[0].set_pixel(6, 3, bird_color3)
    @bird_bitmaps[0].fill_rect(7, 3, 2, 1, bird_color4)
    @bird_bitmaps[0].set_pixel(9, 3, bird_color8)
    @bird_bitmaps[0].set_pixel(10, 3, bird_color2)
    @bird_bitmaps[0].set_pixel(11, 3, bird_color6)
    @bird_bitmaps[0].fill_rect(1, 4, 2, 1, bird_color3)
    @bird_bitmaps[0].set_pixel(3, 4, bird_color1)
    @bird_bitmaps[0].fill_rect(4, 4, 1, 2, bird_color2)
    @bird_bitmaps[0].set_pixel(6, 4, bird_color2)
    @bird_bitmaps[0].fill_rect(7, 4, 1, 2, bird_color4)
    @bird_bitmaps[0].set_pixel(8, 4, bird_color8)
    @bird_bitmaps[0].set_pixel(9, 4, bird_color2)
    @bird_bitmaps[0].set_pixel(10, 4, bird_color6)
    @bird_bitmaps[0].fill_rect(1, 5, 3, 1, bird_color8)
    @bird_bitmaps[0].set_pixel(6, 5, bird_color3)
    @bird_bitmaps[0].set_pixel(8, 5, bird_color2)
    @bird_bitmaps[0].set_pixel(1, 6, bird_color6)
    @bird_bitmaps[0].set_pixel(2, 6, bird_color2)
    @bird_bitmaps[0].fill_rect(3, 6, 2, 2, bird_color8)
    @bird_bitmaps[0].set_pixel(5, 6, bird_color4)
    @bird_bitmaps[0].set_pixel(6, 6, bird_color2)
    @bird_bitmaps[0].set_pixel(7, 6, bird_color1)
    @bird_bitmaps[0].set_pixel(2, 7, bird_color1)
    @bird_bitmaps[0].fill_rect(5, 7, 2, 1, bird_color8)
    @bird_bitmaps[0].fill_rect(7, 7, 1, 2, bird_color2)
    @bird_bitmaps[0].fill_rect(8, 7, 1, 2, bird_color8)
    @bird_bitmaps[0].fill_rect(9, 7, 1, 2, bird_color1)
    @bird_bitmaps[0].set_pixel(4, 8, bird_color6)
    @bird_bitmaps[0].fill_rect(5, 8, 2, 1, bird_color2)
    @bird_bitmaps[0].set_pixel(6, 9, bird_color6)
    @bird_bitmaps[0].fill_rect(8, 9, 2, 1, bird_color6)

    # Bird left 2
    @bird_bitmaps[1] = Bitmap.new(10, 13)
    @bird_bitmaps[1].set_pixel(5, 0, bird_color1)
    @bird_bitmaps[1].set_pixel(7, 0, bird_color4)
    @bird_bitmaps[1].set_pixel(8, 0, bird_color1)
    @bird_bitmaps[1].fill_rect(5, 1, 1, 4, bird_color2)
    @bird_bitmaps[1].set_pixel(6, 1, bird_color1)
    @bird_bitmaps[1].fill_rect(7, 1, 1, 2, bird_color8)
    @bird_bitmaps[1].set_pixel(8, 1, bird_color4)
    @bird_bitmaps[1].set_pixel(6, 2, bird_color3)
    @bird_bitmaps[1].set_pixel(8, 2, bird_color5)
    @bird_bitmaps[1].fill_rect(9, 2, 1, 4, bird_color1)
    @bird_bitmaps[1].fill_rect(6, 3, 3, 1, bird_color4)
    @bird_bitmaps[1].set_pixel(4, 4, bird_color1)
    @bird_bitmaps[1].set_pixel(6, 4, bird_color8)
    @bird_bitmaps[1].fill_rect(7, 4, 1, 3, bird_color4)
    @bird_bitmaps[1].set_pixel(8, 4, bird_color8)
    @bird_bitmaps[1].set_pixel(4, 5, bird_color2)
    @bird_bitmaps[1].set_pixel(5, 5, bird_color8)
    @bird_bitmaps[1].set_pixel(6, 5, bird_color2)
    @bird_bitmaps[1].set_pixel(8, 5, bird_color5)
    @bird_bitmaps[1].set_pixel(4, 6, bird_color8)
    @bird_bitmaps[1].set_pixel(5, 6, bird_color1)
    @bird_bitmaps[1].fill_rect(6, 6, 1, 2, bird_color4)
    @bird_bitmaps[1].set_pixel(8, 6, bird_color3)
    @bird_bitmaps[1].fill_rect(2, 7, 1, 2, bird_color3)
    @bird_bitmaps[1].set_pixel(3, 7, bird_color1)
    @bird_bitmaps[1].set_pixel(4, 7, bird_color2)
    @bird_bitmaps[1].set_pixel(5, 7, bird_color3)
    @bird_bitmaps[1].set_pixel(7, 7, bird_color3)
    @bird_bitmaps[1].set_pixel(8, 7, bird_color1)
    @bird_bitmaps[1].set_pixel(1, 8, bird_color7)
    @bird_bitmaps[1].fill_rect(3, 8, 1, 2, bird_color8)
    @bird_bitmaps[1].set_pixel(4, 8, bird_color4)
    @bird_bitmaps[1].set_pixel(5, 8, bird_color2)
    @bird_bitmaps[1].fill_rect(6, 8, 1, 2, bird_color3)
    @bird_bitmaps[1].fill_rect(7, 8, 1, 2, bird_color1)
    @bird_bitmaps[1].set_pixel(1, 9, bird_color6)
    @bird_bitmaps[1].set_pixel(2, 9, bird_color2)
    @bird_bitmaps[1].fill_rect(4, 9, 1, 2, bird_color8)
    @bird_bitmaps[1].set_pixel(5, 9, bird_color4)
    @bird_bitmaps[1].set_pixel(3, 10, bird_color2)
    @bird_bitmaps[1].fill_rect(5, 10, 2, 1, bird_color8)
    @bird_bitmaps[1].set_pixel(7, 10, bird_color4)
    @bird_bitmaps[1].set_pixel(8, 10, bird_color8)
    @bird_bitmaps[1].set_pixel(9, 10, bird_color2)
    @bird_bitmaps[1].set_pixel(4, 11, bird_color3)
    @bird_bitmaps[1].set_pixel(5, 11, bird_color2)
    @bird_bitmaps[1].set_pixel(6, 11, bird_color4)
    @bird_bitmaps[1].set_pixel(7, 11, bird_color1)
    @bird_bitmaps[1].set_pixel(8, 11, bird_color2)
    @bird_bitmaps[1].set_pixel(9, 11, bird_color4)
    @bird_bitmaps[1].set_pixel(6, 12, bird_color6)
    @bird_bitmaps[1].set_pixel(7, 12, bird_color7)
    @bird_bitmaps[1].set_pixel(9, 12, bird_color6)

    # Bird left 3
    @bird_bitmaps[2] = Bitmap.new(12, 7)
    @bird_bitmaps[2].set_pixel(4, 0, bird_color3)
    @bird_bitmaps[2].fill_rect(5, 0, 3, 1, bird_color1)
    @bird_bitmaps[2].set_pixel(3, 1, bird_color3)
    @bird_bitmaps[2].fill_rect(4, 1, 1, 4, bird_color8)
    @bird_bitmaps[2].set_pixel(5, 1, bird_color4)
    @bird_bitmaps[2].set_pixel(6, 1, bird_color2)
    @bird_bitmaps[2].set_pixel(7, 1, bird_color4)
    @bird_bitmaps[2].set_pixel(3, 2, bird_color7)
    @bird_bitmaps[2].fill_rect(5, 2, 2, 2, bird_color8)
    @bird_bitmaps[2].set_pixel(7, 2, bird_color2)
    @bird_bitmaps[2].set_pixel(8, 2, bird_color1)
    @bird_bitmaps[2].set_pixel(2, 3, bird_color3)
    @bird_bitmaps[2].fill_rect(3, 3, 1, 2, bird_color2)
    @bird_bitmaps[2].set_pixel(7, 3, bird_color8)
    @bird_bitmaps[2].set_pixel(8, 3, bird_color2)
    @bird_bitmaps[2].set_pixel(0, 4, bird_color1)
    @bird_bitmaps[2].set_pixel(1, 4, bird_color4)
    @bird_bitmaps[2].set_pixel(2, 4, bird_color8)
    @bird_bitmaps[2].set_pixel(5, 4, bird_color8)
    @bird_bitmaps[2].fill_rect(6, 4, 1, 2, bird_color3)
    @bird_bitmaps[2].set_pixel(7, 4, bird_color2)
    @bird_bitmaps[2].set_pixel(8, 4, bird_color4)
    @bird_bitmaps[2].fill_rect(9, 4, 2, 1, bird_color8)
    @bird_bitmaps[2].set_pixel(11, 4, bird_color2)
    @bird_bitmaps[2].set_pixel(1, 5, bird_color6)
    @bird_bitmaps[2].set_pixel(2, 5, bird_color3)
    @bird_bitmaps[2].set_pixel(3, 5, bird_color8)
    @bird_bitmaps[2].set_pixel(4, 5, bird_color3)
    @bird_bitmaps[2].set_pixel(5, 5, bird_color2)
    @bird_bitmaps[2].set_pixel(7, 5, bird_color4)
    @bird_bitmaps[2].fill_rect(8, 5, 2, 1, bird_color2)
    @bird_bitmaps[2].set_pixel(10, 5, bird_color8)
    @bird_bitmaps[2].set_pixel(11, 5, bird_color1)
    @bird_bitmaps[2].fill_rect(2, 6, 2, 1, bird_color6)
    @bird_bitmaps[2].set_pixel(4, 6, bird_color2)
    @bird_bitmaps[2].fill_rect(5, 6, 4, 1, bird_color6)
    @bird_bitmaps[2].fill_rect(10, 6, 2, 1, bird_color6)

    # Bird left 4
    @bird_bitmaps[3] = Bitmap.new(12, 9)
    @bird_bitmaps[3].fill_rect(3, 0, 2, 1, bird_color3)
    @bird_bitmaps[3].set_pixel(3, 1, bird_color4)
    @bird_bitmaps[3].fill_rect(4, 1, 1, 2, bird_color8)
    @bird_bitmaps[3].set_pixel(5, 1, bird_color2)
    @bird_bitmaps[3].set_pixel(6, 1, bird_color1)
    @bird_bitmaps[3].set_pixel(2, 2, bird_color9)
    @bird_bitmaps[3].set_pixel(3, 2, bird_color2)
    @bird_bitmaps[3].fill_rect(5, 2, 3, 1, bird_color8)
    @bird_bitmaps[3].set_pixel(8, 2, bird_color1)
    @bird_bitmaps[3].fill_rect(3, 3, 1, 2, bird_color3)
    @bird_bitmaps[3].set_pixel(4, 3, bird_color2)
    @bird_bitmaps[3].fill_rect(5, 3, 2, 2, bird_color8)
    @bird_bitmaps[3].set_pixel(7, 3, bird_color4)
    @bird_bitmaps[3].fill_rect(8, 3, 2, 1, bird_color8)
    @bird_bitmaps[3].fill_rect(10, 3, 2, 1, bird_color2)
    @bird_bitmaps[3].fill_rect(2, 4, 1, 2, bird_color3)
    @bird_bitmaps[3].fill_rect(4, 4, 1, 2, bird_color8)
    @bird_bitmaps[3].fill_rect(7, 4, 1, 2, bird_color8)
    @bird_bitmaps[3].set_pixel(8, 4, bird_color2)
    @bird_bitmaps[3].set_pixel(9, 4, bird_color1)
    @bird_bitmaps[3].set_pixel(10, 4, bird_color8)
    @bird_bitmaps[3].set_pixel(11, 4, bird_color4)
    @bird_bitmaps[3].set_pixel(0, 5, bird_color1)
    @bird_bitmaps[3].set_pixel(1, 5, bird_color2)
    @bird_bitmaps[3].fill_rect(3, 5, 1, 3, bird_color8)
    @bird_bitmaps[3].set_pixel(5, 5, bird_color5)
    @bird_bitmaps[3].fill_rect(6, 5, 1, 2, bird_color2)
    @bird_bitmaps[3].set_pixel(8, 5, bird_color6)
    @bird_bitmaps[3].set_pixel(9, 5, bird_color7)
    @bird_bitmaps[3].set_pixel(10, 5, bird_color2)
    @bird_bitmaps[3].set_pixel(11, 5, bird_color6)
    @bird_bitmaps[3].set_pixel(2, 6, bird_color8)
    @bird_bitmaps[3].fill_rect(4, 6, 2, 1, bird_color4)
    @bird_bitmaps[3].set_pixel(7, 6, bird_color1)
    @bird_bitmaps[3].set_pixel(1, 7, bird_color3)
    @bird_bitmaps[3].set_pixel(2, 7, bird_color5)
    @bird_bitmaps[3].set_pixel(4, 7, bird_color2)
    @bird_bitmaps[3].fill_rect(5, 7, 2, 1, bird_color1)
    @bird_bitmaps[3].set_pixel(0, 8, bird_color3)
    @bird_bitmaps[3].set_pixel(1, 8, bird_color8)
    @bird_bitmaps[3].fill_rect(2, 8, 2, 1, bird_color1)
#-------------------------------------------------------------------------------
    @user_bitmaps = []
    update_user_defined
  end
#-------------------------------------------------------------------------------
  def update_user_defined
    @user_bitmaps.each {|image| image.dispose}
    $WEATHER_IMAGES.each {|name| @user_bitmaps.push(RPG::Cache.picture(name))}
    @sprites.each {|sprite| sprite.bitmap = @user_bitmaps[rand(@user_bitmaps.size)]}
  end
  attr_reader :type
  attr_reader :max
  attr_reader :ox
  attr_reader :oy
end
end

#-------------------------------------------------------------------------------
# Game_Screen
#-------------------------------------------------------------------------------
class Game_Screen

  attr_accessor :weather_variation
  attr_accessor :variation_update

  alias maws_weather_color_init initialize
  def initialize
    maws_weather_color_init
    @weather_variation = 0
    @variation_update = false
  end

  def weather(type, power, duration, variation=0)
    @variation_update = true if variation != @weather_variation
    @weather_variation = variation
    @weather_type_target = type
    @weather_duration = duration
    if @weather_type_target != 0
      @weather_type = @weather_type_target
    end
    @weather_max_target = @weather_type_target == 0 ? 0.0 : (power + 1) * 4.0
    if @weather_duration == 0
      @weather_type = @weather_type_target
      @weather_max = @weather_max_target
    end
  end
end
#-------------------------------------------------------------------------------
# Spriteset_Map
#-------------------------------------------------------------------------------
class Spriteset_Map

  alias maws_weather_variation_upd update
  def update
    if $game_screen.variation_update
      @weather.dispose if @weather != nil
      @weather = RPG::Weather.new(@viewport1)
      $game_screen.variation_update = false
    end
    maws_weather_variation_upd
  end
end
