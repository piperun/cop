map = {
  "tileset" => 2,
  "width" => 25,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "010-River01", "volume" => 70, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 24,
      "y" => 24,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 24,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 0,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 8,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 156" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 3,
          "commands" => <<-COMMANDS
            screen_tone(0,0,0,0,duration=30)
            moveroute(skippable)
              speed(1)
              unknown1
              unknown1
              unknown1
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 13,
      "y" => 24,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text Welcome to \c[6]Coal Village.
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "EV003",
      "x" => 9,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "087-Monster01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => true,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "EV004",
      "x" => 4,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "087-Monster01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => true,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    }
  ]
}
