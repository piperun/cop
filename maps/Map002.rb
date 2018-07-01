map = {
  "tileset" => 1,
  "width" => 20,
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
      "name" => "Autorun Title Animation",
      "x" => 0,
      "y" => 0,
      "pages" => [
        {
          "conditions" => [ "switch(45)" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 3,
          "commands" => <<-COMMANDS




            screen_tone(0,0,0,0,duration=0)
            switch(46) = 1
            switch(47) = 1
            script # This allows the Menu to appear
                   $temp_title = false



          COMMANDS
        }
      ]
    }
  ]
}
