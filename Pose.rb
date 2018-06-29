class Pose
  include GameData

  def initialize(pose_name, face_name, clothing_name = nil)
    if clothing_name == nil
      index = $game_variables[CLOTHING_VARIABLE]
      clothing_name = CLOTHING_SETS[index] || 'default'
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

  def pose(name)
    if @current_pose != name
      @base_sprites.each { |sprite| sprite.dispose() if sprite != nil }
      @base_sprites = []
      @current_pose = name

      unless (pose = POSES[name]).nil?
        unless (layers = pose['base']).nil?
          origin = pose['origin'] || [0,0]
          layers.each do |layer|
            z = DEFAULT_BASE_Z + @base_sprites.length
            @base_sprites.push(make_sprite(origin, layer, z))
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
            origin = pose['origin'] || [0,0]
            @face_sprite = make_sprite(origin, layer, DEFAULT_FACE_Z)
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
            origin = pose['origin'] || [0,0]
            layers.each do |layer|
              z = DEFAULT_CLOTHING_Z + @clothing_sprites.length
              @clothing_sprites.push(make_sprite(origin, layer, z))
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
            origin = pose['origin'] || [0,0]
            @effect_sprites[name] = make_sprite(origin, layer, DEFAULT_EFFECT_Z)
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

  # STUB
  def slide
    return self
  end

  # STUB
  def shake
    return self
  end

  # DEPRECATED - Was used to display the current pose, is now done on instantiation
  def pop
    return self
  end

  def clear
    dispose()
    return self
  end

  def make_sprite(origin, layer, z)
    # TODO: allow disabling of layers via switches
    unless (filename = layer['file']).nil?
      if FileTest.exists?('Graphics/Pictures/' + filename)
        sprite = Sprite.new
        sprite.bitmap = RPG::Cache.picture(filename)
        x, y = origin
        lx, ly = layer['pos'] || [0,0]
        lz = layer['z'] || z
        sprite.ox = sprite.bitmap.width / 2
        sprite.oy = sprite.bitmap.height / 2
        sprite.x = x + lx
        sprite.y = y + ly
        sprite.z = lz
        return sprite
      end
    end
    p('Cannot find sprite: ' + filename)
    return nil
  end
end
