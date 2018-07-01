map = {
  "tileset" => 36,
  "width" => 21,
  "height" => 15,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 1,
      "name" => "Soldier 3",
      "x" => 10,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Soldier]
                 We're stucked here and stocks are running low...
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Soldier]
                 I swear it wasn't me! 
                 Bullying a beggar? What kind of human are they!?
          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 10,
      "y" => 14,
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
            goto event 10

          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Soldier 3",
      "x" => 5,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Soldier]
                 We're running out of food, and medical herbs too!
            text [Soldier]
                 Really can't think if we can fight in this condition.
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Soldier]
                 Sorry but I have no clue, you should ask around.
          COMMANDS
        }
      ]
    }
  ]
}
