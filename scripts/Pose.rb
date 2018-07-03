class Pose
  include GameData

  def initialize(pose_name, face_name, clothing_name = nil)
    if clothing_name == nil
      index = $game_variables[CLOTHING_VARIABLE]
      clothing_name = CLOTHING_SETS[index] || 'default'
    end

    @position = Point.new(0,0)
    unless (pose = POSES[pose_name]).nil?
      @position = Point.from_array(pose['origin'] || [0,0])
    end

    @current_pose = nil
    @current_face = nil
    @current_clothing = nil

    @base_sprites = []
    @face_sprite = nil
    @clothing_sprites = []
    @effect_sprites = {}

    pose(pose_name)
    face(face_name)
    clothing(clothing_name)
  end

  def x
    return @position.x
  end

  def x=(value)
    position(value, @position.y)
  end

  def y
    return @position.y
  end

  def y=(value)
    position(@position.x, value)
  end

  def origin
    unless (pose = POSES[@current_pose]).nil?
      x, y = pose['origin'] || [0,0]
      position(x, y)
    end
    return self
  end

  def position(x, y)
    npos = Point.new(x || @position.x, y || @position.y)
    delta = Point.new(npos.x - @position.x, npos.y - @position.y)
    @base_sprites.each { |sprite|
      unless sprite.nil?
        sprite.x += delta.x
        sprite.y += delta.y
      end
    }
    unless @face_sprite.nil?
      @face_sprite.x += delta.x
      @face_sprite.y += delta.y
    end
    @clothing_sprites.each { |sprite|
      unless sprite.nil?
        sprite.x += delta.x
        sprite.y += delta.y
      end
    }
    @effect_sprites.each { |effect_name, sprite|
      unless sprite.nil?
        sprite.x += delta.x
        sprite.y += delta.y
      end
    }
    @position = npos
    return self
  end

  def pose(name)
    if @current_pose != name
      @base_sprites.each { |sprite| sprite.dispose() if sprite != nil }
      @base_sprites = []
      @current_pose = name

      unless (pose = POSES[name]).nil?
        unless (layers = pose['base']).nil?
          layers.each do |layer|
            z = DEFAULT_BASE_Z + @base_sprites.length
            @base_sprites.push(make_sprite(layer, z))
          end
        end
      end

      # Unless we are disposing (name = nil), reapply face, clothing and effects
      if name != nil
        face(@current_face)
        clothing(@current_clothing)
        @effect_sprites.keys.each { |name| clear_effect(name); add_effect(name) }
      end
    end
    return self
  end

  def face(name)
    if @current_face != name
      @face_sprite.dispose if @face_sprite != nil
      @face_sprite = nil
      @current_face = name

      unless (pose = POSES[@current_pose]).nil?
        unless (layers = pose['faces']).nil?
          unless (layer = layers[name]).nil?
            @face_sprite = make_sprite(layer, DEFAULT_FACE_Z)
          end
        end
      end
    end
    return self
  end

  def clothing(name)
    if @current_clothing != name
      @clothing_sprites.each { |sprite| sprite.dispose() if sprite != nil }
      @clothing_sprites = []
      @current_clothing = name

      unless (pose = POSES[@current_pose]).nil?
        unless (clothing = pose['clothing']).nil?
          unless (layers = clothing[name]).nil?
            layers.each do |layer|
              z = DEFAULT_CLOTHING_Z + @clothing_sprites.length
              @clothing_sprites.push(make_sprite(layer, z))
            end
          end
        end
      end
    end
  end

  def add_effect(name)
    if !@effect_sprites.key?(name)
      @effect_sprites[name] = nil
      unless (pose = POSES[@current_pose]).nil?
        unless (layers = pose['effects']).nil?
          unless (layer = layers[name]).nil?
            @effect_sprites[name] = make_sprite(layer, DEFAULT_EFFECT_Z)
          end
        end
      end
    end
    return self
  end

  def clear_effect(name)
    if @effect_sprites.key?(name)
      unless (sprite = @effect_sprites[name]).nil?
        sprite.dispose()
      end
      @effect_sprites.delete(name)
    end
    return self
  end

  def clear_effects
    @effect_sprites.keys.each { |name| clear_effect(name) }
    return self
  end

  # shortcut
  def blush()
    return add_effect('blush')
  end

  # shortcut
  def sweat()
    return add_effect('sweat')
  end

  # shortcut
  def bruise()
    return add_effect('bruise')
  end

  def wait(time)
    while time > 0
      time -= 1
      Graphics.update
    end
    return self
  end

  def dispose
    pose(nil)
    face(nil)
    clothing(nil)
    clear_effects()
    return self
  end

  # DEPRECATED - Performed slide animations, now handled via tweening
  def slide
    tween = Tween.new()
    if ['CA', 'CB'].include?(@current_pose)
      tween.position(self, [nil, 220], [nil, 245], 5).start()
      tween.position(self, [nil, 245], [nil, 220], 5).start()
    elsif @current_pose == 'D'
      tween.position(self, [470, 255], [500, 255], 6).start()
      tween.position(self, [500, 255], [470, 255], 6).start()
    else
      tween.position(self, [550, nil], [500, nil], 5).start()
      tween.position(self, [500, nil], [550, nil], 5).start()
    end
    return self
  end

  def animate(name)
    altered_layers = {}
    unless (pose = POSES[@current_pose]).nil?
      unless (animations = pose['animations']).nil?
        unless (animation = animations[name]).nil?
          unless (frames = animation['frames']).nil?
            unless (sequence = animation['sequence']).nil?
              sequence.each do |pair|
                frame_index, duration = pair
                unless (frame = frames[frame_index - 1]).nil?
                  frame.each do |fragment|
                    unless (replace = fragment['replace']).nil?
                      replace_layer(replace, fragment)
                      altered_layers[replace] = true
                    end
                  end
                end
                while duration > 0
                  duration -= 1
                  Graphics.update()
                end
              end
            end
          end
        end
      end
    end
    altered_layers.keys.each { |key| restore_layer(key) }
    return self
  end

  # Shortcut
  def shake
    return animate("shake")
  end

  # DEPRECATED - Was used to display the current pose, is now done on instantiation
  def pop
    return self
  end

  def clear
    dispose()
    return self
  end

  def replace_layer(which, replacement)
    type, index = which.split('/')
    case type
    when 'base'
      z = DEFAULT_BASE_Z + @base_sprites.length
      index = index.to_i - 1
      unless (sprite = @base_sprites[index]).nil?
        z = sprite.z
        sprite.dispose()
      end
      @base_sprites[index] = make_sprite(replacement, z)
    when 'face'
      z = DEFAULT_FACE_Z
      unless (sprite = @face_sprite).nil?
        z = sprite.z
        sprite.dispose()
      end
      @face_sprite = make_sprite(replacement, z)
    when 'clothing'
      z = DEFAULT_CLOTHING_Z + @clothing_sprites.length
      index = index.to_i - 1
      unless (sprite = @clothing_sprites[index]).nil?
        z = sprite.z
        sprite.dispose()
      end
      @clothing_sprites[index] = make_sprite(replacement, z)
    when 'effect'
      #TODO: not implemented
    end
  end

  def restore_layer(which)
    type, index = which.split('/')
    case type
    when 'base'
      z = DEFAULT_BASE_Z + @base_sprites.length
      index = index.to_i - 1
      unless (sprite = @base_sprites[index]).nil?
        z = sprite.z
        sprite.dispose()
      end
      @base_sprites[index] = nil
      unless (pose = POSES[@current_pose]).nil?
        unless (layers = pose['base']).nil?
          unless (layer = layers[index]).nil?
            @base_sprites[index] = make_sprite(layer, z)
          end
        end
      end
    when 'face'
      z = DEFAULT_FACE_Z
      unless (sprite = @face_sprite).nil?
        z = sprite.z
        sprite.dispose()
      end
      @face_sprite = nil
      unless (pose = POSES[@current_pose]).nil?
        unless (faces = pose['faces']).nil?
          unless (layer = faces[@current_face]).nil?
            @face_sprite = make_sprite(layer, z)
          end
        end
      end
    when 'clothing'
      z = DEFAULT_CLOTHING_Z + @clothing_sprites.length
      index = index.to_i - 1
      unless (sprite = @clothing_sprites[index]).nil?
        z = sprite.z
        sprite.dispose()
      end
      unless (pose = POSES[@current_pose]).nil?
        unless (clothing = pose['clothing']).nil?
          unless (layers = clothing[@current_clothing]).nil?
            unless (layer = layers[index]).nil?
              @clothing_sprites[index] = make_sprite(layer, z)
            end
          end
        end
      end
    when 'effect'
      #TODO: not implemented
    end
    return self
  end

  def make_sprite(layer, z)
    # TODO: allow disabling of layers via switches
    unless (filename = layer['file']).nil?
      if FileTest.exists?('Graphics/Pictures/' + filename)
        sprite = Sprite.new
        sprite.bitmap = RPG::Cache.picture(filename)
        lx, ly = layer['pos'] || [0,0]
        lz = layer['z'] || z
        sprite.ox = sprite.bitmap.width / 2
        sprite.oy = sprite.bitmap.height / 2
        sprite.x = @position.x + lx
        sprite.y = @position.y + ly
        sprite.z = lz
        return sprite
      end
    end
    p('Cannot find sprite: ' + filename)
    return nil
  end
end
