map = {
  "tileset" => 47,
  "width" => 20,
  "height" => 20,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "035-Dungeon01", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "016-Drips01", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 1,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "088-Monster02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 5,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 2,
          "commands" => <<-COMMANDS





          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 10,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "088-Monster02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 5,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 2,
          "commands" => <<-COMMANDS





          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 5,
      "y" => 19,
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
            goto event 10

          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 11,
      "y" => 15,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "088-Monster02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 5,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 2,
          "commands" => <<-COMMANDS





          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 17,
      "y" => 1,
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
            goto event 2

            goto event 9
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "EV003",
      "x" => 17,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 153" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thug]
                 I- Intruder!!
                 We have an intruder!!






          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 153" ],
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
        },
        {
          "conditions" => [ "var(1) >= 154" ],
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
