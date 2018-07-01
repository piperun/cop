map = {
  "tileset" => 18,
  "width" => 31,
  "height" => 20,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 14,
      "y" => 19,
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
      "x" => 16,
      "y" => 19,
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
      "name" => "Door",
      "x" => 15,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 2 },
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
            goto event 3
          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 15,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "bandit_boss01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
      "id" => 2,
      "name" => "Door",
      "x" => 26,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 2 },
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
            goto event 3
          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 13,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "femaleprisoner4_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
      "id" => 3,
      "name" => "Door",
      "x" => 4,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 2 },
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
            goto event 3
          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "Bandit 2",
      "x" => 13,
      "y" => 17,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "bandit2_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
      "x" => 15,
      "y" => 19,
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
      "id" => 10,
      "name" => "Bandit 2",
      "x" => 17,
      "y" => 17,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "bandit2_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
