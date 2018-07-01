map = {
  "tileset" => 7,
  "width" => 35,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "040-Dungeon06", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "017-Creature01", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "Crow",
      "x" => 22,
      "y" => 19,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 33,
      "y" => 27,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Crow",
      "x" => 7,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 5,
      "y" => 0,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
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
      "id" => 17,
      "name" => "EV017",
      "x" => 8,
      "y" => 28,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "Crow",
      "x" => 12,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Crow",
      "x" => 29,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 12,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 18,
      "name" => "EV018",
      "x" => 27,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "EV013",
      "x" => 23,
      "y" => 20,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "Crow",
      "x" => 32,
      "y" => 22,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 22,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 19,
      "name" => "EV019",
      "x" => 26,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "EV014",
      "x" => 11,
      "y" => 3,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Crow",
      "x" => 21,
      "y" => 27,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "Crow",
      "x" => 17,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "EV015",
      "x" => 1,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "Crow",
      "x" => 3,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "Crow",
      "x" => 8,
      "y" => 26,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    },
    {
      "id" => 21,
      "name" => "Crow",
      "x" => 10,
      "y" => 20,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "163-Small05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 2,
          "commands" => <<-COMMANDS




              moveroute(skippable)
                unknown11
                unknown11
              movewait

          COMMANDS
        }
      ]
    }
  ]
}
