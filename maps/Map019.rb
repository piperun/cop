map = {
  "tileset" => 54,
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
      "id" => 5,
      "name" => "Villager",
      "x" => 15,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Jack]
                 I'm so sick of this marriage life, she didn't tell me she 
                 would be this fat.
            text [Jack]
                 ........................
            text [\N[1]]
                 (He's staring at my chest....)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Jack]
                 ........................
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.slide
            text [\N[1]]
                 (He's staring at my chest....)
            text [Jack]
                 What a beautiful pair of tits you have there, \N[1]-
                 san...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,1)
                   $pose.pop
            text [\N[1]]
                 Thank-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","C01",1,1)
                   $pose.shake
            text [\N[1]]
                 ...!!?
            text [\N[1]]
                 (What did I just say!?)
            text [Jack]
                 Heheh... you love to hear that kind of compliment?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",1,1)
                   $pose.pop
            text [\N[1]]
                 Of course not!!
                 Don't say something like that!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            screen_tone(0,0,0,0,duration=0)
            script $Ev005 = Ev005.new("C01")
                   $Ev005.pop
            text [Jack]
                 (Here they are, the best pair of boobs of the prettiest 
                 girl in the village!)
            text [Jack]
                 (Look at its shape...
                 I bet they will bounce like a ball if I got to touch them.)
            text [Jack]
                 (She's also wearing no bra, her camisole alone 
                 obviously can't hide those puffy nipples...)
            text [Jack]
                 (She's also wearing no bra, her camisole alone 
                 obviously can't hide those puffy nipples...)
            script $Ev005.clear
                   $Ev005 = nil
            screen_tone(0,0,0,0,duration=0)
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 (..............)
            text [\N[1]]
                 (This man...
                 He's staring at my chest again.)
            text [Jack]
                 Wish I can grope them for once-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,1)
                   $pose.shake
            text [\N[1]]
                 ....Excuse me?
            script $pose.clear
                   $pose = nil
            text [Jack]
                 (Oops!
                 Did I just say it out loud!?)
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Jack]
                 Sorry lady but are you lost!?
            text [Jack]
                 (Gotta fake it when my wife is right there...)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Jack]
                 Hey, there's something on your shirt.
            script $pose = Pose.new("A","A","B02",0,0)
                   $pose.slide
            text [\N[1]]
                 Yes....?
            text [Jack]
                 Bow down a bit I'll take it off for ya.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","B02",0,1)
                   $pose.pop
            text [\N[1]]
                 Like this?
            text [Jack]
                 (Can't believe this old trick still works. Just a little 
                 check though.)
            text [Jack]
                 (Heheh... still no bra.)
            text [Jack]
                 Sorry, it was my imagination.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",0,1)
                   $pose.pop
            text [\N[1]]
                 (Hmm.....)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Jack]
                 Sorry lady but are you lost!?
            text [Jack]
                 (Gotta fake it when my wife is right there...)
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "Villager 4",
      "x" => 15,
      "y" => 3,
      "pages" => [
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Villager]
                 There's something running on the upper floor for all 
                 night long.
            text [Villager]
                 Told my husband to find out but he's so lazy...
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 1,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
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
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 Only dust and spider webs on there...
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "Door",
      "x" => 9,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
            goto event 2
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Door",
      "x" => 2,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
            goto event 2
          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "EV004",
      "x" => 15,
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
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        }
      ]
    }
  ]
}
