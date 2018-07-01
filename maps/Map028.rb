map = {
  "tileset" => 53,
  "width" => 22,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "015-Theme04", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "002-Wind02", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 10,
      "y" => 29,
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
      "id" => 2,
      "name" => "EV002",
      "x" => 11,
      "y" => 29,
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
      "id" => 3,
      "name" => "Weather",
      "x" => 0,
      "y" => 0,
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
          "trigger" => 3,
          "commands" => <<-COMMANDS
            script $game_screen.weather(11, 15, 0, 5)

          COMMANDS
        }
      ]
    }
  ]
}
