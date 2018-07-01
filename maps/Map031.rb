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
      "name" => "Hiroshi",
      "x" => 3,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 2,
          "move_frequency" => 5,
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
          "conditions" => [ "var(1) >= 101" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 2,
          "move_frequency" => 5,
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 11,
      "name" => "EV011",
      "x" => 4,
      "y" => 7,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 827, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 6,
      "name" => "EV006",
      "x" => 4,
      "y" => 6,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 813, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 1,
      "name" => "EV001",
      "x" => 0,
      "y" => 7,
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
      "id" => 12,
      "name" => "EV012",
      "x" => 7,
      "y" => 7,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 811, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 7,
      "name" => "Chika-san",
      "x" => 3,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
          "conditions" => [ "var(1) >= 101" ],
          "graphic" => { "character" => "124-Civilian24", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 2,
      "name" => "EV002",
      "x" => 6,
      "y" => 6,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 842, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 13,
      "name" => "EV013",
      "x" => 7,
      "y" => 6,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 801, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 8,
      "name" => "Seita",
      "x" => 6,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 101" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 3,
      "name" => "EV003",
      "x" => 5,
      "y" => 6,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 811, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 14,
      "name" => "EV014",
      "x" => 6,
      "y" => 3,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "135-Maid01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Maid]
                 Hey, I'm busy here,
                 gotta make dinner for everyone.
            text [Maid]
                 But I love cooking more than doing laundry!
          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
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
      "id" => 9,
      "name" => "EV009",
      "x" => 5,
      "y" => 7,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 801, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
      "name" => "Togoshi",
      "x" => 5,
      "y" => 5,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 101" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

            wait 40
            screen_tone(0,0,0,0,duration=30)
            wait 30
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Woahh...!!
                 They look so delicious!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yeah!!
                 And so many dishes on the table!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Of course!!
                 My mom is the best chef around here!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 And I am-
            text [Chika-san]
                 Don't yell so loud in a dinner, Hiro-chan.
            text [Togoshi]
                 (.............)
            text [Hiroshi]
                 ...I'm sorry.
            text [Chika-san]
                 \N[1]-san, don't be shy.
            text [Chika-san]
                 This is all I could do to show you my gratitude.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Chika-san...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 I just did what anyone would do in that moment...
            text [Chika-san]
                 There... you're being so humble again.
            text [Chika-san]
                 I'm sure nobody would be brave enough to 
                 involve in a fight...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 With a big bad tiger!! 
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Just only two swings, she scared it back 
                 to its forest!
            moveroute()
              unknown19
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 It's true, mom, she really did it!!
            moveroute()
              face down
            movewait
            text [Chika-san]
                 *Giggles*
                 Even my silly son praises, \N[1]-chan.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",1,0)
                   $pose.pop
            text [\N[1]]
                 Ah-hahah...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 I also heard that she has fought a powerful Demon 
                 alone!
            moveroute()
              face right
            moveroute()
              face right
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Really, dad!?
            text [Chika-san]
                 ....
                 Is that true, \N[1]-chan?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D04",0,0)
                   $pose.pop
            text [\N[1]]
                 Ah...
                 Y- Yes...
            text [\N[1]]
                 But it's nothing to be prou-
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 AMAZING!!!
            text [Togoshi]
                 It's hard to believe, right?
                 I bet that Demon has been taught a lesson!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 I told you, dad, \N[1]-san is really strong!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D05",1,0)
                   $pose.pop
            text [\N[1]]
                 Haha...
            text [Chika-san]
                 ....It's impressive, \N[1]-san!
            text [Togoshi]
                 You're like a hero to everyone in this village.
            text [Togoshi]
                 I think this rumor will spread really fast, soon.
            script $pose.clear
                   $pose = nil
            switch(31) = 0
            playSE(volume=80, pitch=100, name="056-Right02")
            text \c[6]You've got a new title: [Famous Adventurer].
            text \c[6]It will unlock some events and affect some 
                 people's reactions to you.
            text \c[6]You can freely switch between many titles 
                 you've earned throughout the game via
                 Menu screen.
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.pop
            text [\N[1]]
                 Is that true...?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 Guess I'm popular now, hahah....
            script $pose.clear
                   $pose = nil
            wait 10
            text ...............
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Now let's eat before the food gets cold!
            text [Chika-san]
                 You must eat to your heart's content, \N[1]-san.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yay!!
                 Let's eat together!!
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Well... I won't hold back then!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 You too, Sei-chan!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yeah, I'm ready!!
            text [Seita]
                 *Nom nom nom*
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [\N[1]]
                 There there... 
                 Slow down a bit.
            text [Seita]
                 *Nom nom nom*
                 Hahah...!!
            text .............
            text .............................
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20
            script $Ev005 = Ev005.new("C01")
                   $Ev005.pop
            text [Togoshi]
                 .................
            text [Togoshi]
                 (Not my intention but at this direction I can see all of 
                 her cleavage!)
            text [Togoshi]
                 (It's even better when she bows down like that...)
            text [Togoshi]
                 (Damn, my 'son' is starting to raise down here...!)
            text Even though the man was so careful, she still 
                 noticed that he was staring at her breasts.
            text [\N[1]]
                 (...........
                 Is Togo-san staring at my breasts?)
            text [\N[1]]
                 (I can feel his eyes are running all over my body...)
            text [\N[1]]
                 (It makes me feel so uncomfortable but I don't think I 
                 can raise my voice and stop him....)
            text [\N[1]]
                 (This is his house...
                 It would be rude if I do so...)
            text [\N[1]]
                 (...............)
            text [\N[1]]
                 (I guess I'll just let him be, there's no harm if he's just 
                 looking, right?)
            text [\N[1]]
                 (........!)
            text Their eyes just met for a moment, the man quickly 
                 turned away knowing he's been caught, ready to be 
                 pointed out in front of his family...
            text ....But nothing happened.
                 She still seemed normal like before, leaving him with a 
                 question in his mind.
            text [Togoshi]
                 (...........!!)
            text [Togoshi]
                 (I was ready to take the punishment, but she just... 
                 turned away!?)
            text [Togoshi]
                 (Was it my imagination, or it was a sign!?)
            text [Togoshi]
                 (Hmm.....)
            text [Togoshi]
                 (I know I'm risking... but there's no other way to 
                 check!)
            script $Ev005.clear
                   $Ev005 = nil
            screen_tone(0,0,0,0,duration=30)
            wait 40
            text [Chika-san]
                 Why aren't you eating anymore, \N[1]-san?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 There are still many delicious foods, \N[1]-san!!
            moveroute()
              face left
            movewait
            text [Seita]
                 'Nee-chan?
            if var(51) >= 20
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              script $pose = Pose.new("A","A","D06",0,1)
                     $pose.slide
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D06",0,1)
                     $pose.shake
              text [\N[1]]
                   Ahh... Nothing!
              text [\N[1]]
                   I'm just... a little tired from helping a villager today!
            else
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              script $pose = Pose.new("A","A","D06",0,1)
                     $pose.slide
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D06",0,1)
                     $pose.shake
              text [\N[1]]
                   Ahh... Nothing!
              text [\N[1]]
                   I just feel a little sleepy, hahah...!
            end
            text [Chika-san]
                 Oh... I see.
            text [Chika-san]
                 Don't push yourself too hard, \N[1]-san.
            text [Chika-san]
                 *Giggles*
                 But you still have to eat some more.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 That's my mommy's first rule!
            text [Hiroshi]
                 She won't let you leave this room without being full!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Hahah... I got it!
            script $pose.clear
                   $pose = nil
            text [Chika-san]
                 You too, little boy, make sure you're stuffed before 
                 leaving, okay?
            moveroute()
              unknown19
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, Chika-san!!
            text ...............
            text ..........................
            wait 35
            playSE(volume=65, pitch=80, name="Fork Dropping")
            wait 15
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Oops!!
                 I dropped my spoon on the floor!
            text [Chika-san]
                 Oh...
                 You're so clumpsy, dear.
            text [Togoshi]
                 Y- Yeah... Hahah...
            text [Chika-san]
                 Hiro-chan, can you pick it up for your dad?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yes, mommy!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Wait-
                 I can do it myself!!
            wait 20
            playSE(volume=80, pitch=100, name="undress")
            moveroute()
              opacity(0)
            movewait
            text [Togoshi]
                 It's just right there, let's see....
            playSE(volume=80, pitch=100, name="undress")
            text [Togoshi]
                 Hmmm.... Where are you, mr.Spoon...?
            wait 10
            text [\N[1]]
                 (..............)
            text [Chika-san]
                 Here, \N[1]-san, you should taste this one.
            text [\N[1]]
                 Ah-
                 Thanks...!
            text [Chika-san]
                 There... Eat some more, Sei-kun.
            screen_tone(0,0,0,0,duration=20)
            wait 20

            text ...............
            text ...........................
            text It's dim under the table but still visible to his eyes.
                 He kept slightly tapping on the floor pretending that 
                 he's finding his spoon...
            text But his intention was clearly shown as he slowly 
                 approached to \N[1]-chan's seat unnoticed.
            text Everyone was still talking right above him, knowing 
                 that, he smirked in joy.
            text [Togoshi]
                 (Heheheh...
                 Didn't think I would get a chance to do this.)
            text [Togoshi]
                 (Let's see what we have here...)
            screen_tone(0,0,0,0,duration=20)
            script $Ev008 = Ev008.new("A01","A02",0,0,1)
                   $Ev008.pop
            wait 20
            text Things were clearer for him to see....
                 Right in front of his eyes there was \N[1]-chan's 
                 bottom half, under the table.
            text [Togoshi]
                 (OOoohh...!!!)
            text [Togoshi]
                 (Finally I got to see her panties!!)
            text [Togoshi]
                 (And of course, her everything down here!)
            text [Togoshi]
                 (Look at these thighs closely....)
            text [Togoshi]
                 (They look so smooth and flawless...!!)
            text He crawled deeper towards her trying to get a 
                 closer view...
            text He came so close that he might get hit if she 
                 stretches her legs out. It was a very risky situation...
            text But he didn't care, all just for admiring her 
                 panties...
            text [Togoshi]
                 (Heheh...
                 Now I can clearly see her panties!)
            text [Togoshi]
                 (She likes white panties, just like me...)
            text [Togoshi]
                 (Oh... look at her pussy lips, they're sticking out 
                 through...!)
            text [Togoshi]
                 (Thanks God she's wearing a thin one, her pussy lips 
                 are so obviously to see!)
            text [Togoshi]
                 (Damn...!!
                 it's so sexy!! My boy is rocking hard here!!)
            text [Togoshi]
                 (I think I should remember all these details for 
                 fapping later...)
            text [Togoshi]
                 (Hmm... Nice.... Hehe....)
            script $Ev008.clear
                   $Ev008 = nil
            script $Ev008 = Ev008.new("B01","A02",0,1,1)
                   $Ev008.pop
            text The man tried to memorize everything he saw into his 
                 head for a greater purpose, and unexpectedly, her 
                 legs spreaded out right in front of him.
            text [Togoshi]
                 (.........!!?)
            text [Togoshi]
                 (S- She's spreading her legs!!?)
            text [Togoshi]
                 (Sh- she must know that I'm being down here...
                 No way this is a coincidence!!)
            text [Togoshi]
                 (Maybe she forgot that, yeah, lucky me!!)
            text With her crotch was completely shown, the man 
                 couldn't help but feeling so excited. His eyes almost 
                 popped out as he leaned his head closer to her.
            text [Togoshi]
                 (OOohhh...!!!
                 Her pussy lips are showing even more than before!!!)
            text [Togoshi]
                 (What a sight I'm having!!
                 Feel like I can cum just by staring at her pussy!!)
            text Couldn't hold back from that, he put one hand onto his 
                 crotch and continously stroked that area, 
                 frustratedly...
            text [Togoshi]
                 (Haaaah~~
                 I want to smell her pussy so bad!!!)
            text [Togoshi]
                 (More than that, I want to taste it, it looks so 
                 delicous!!)
            text [Togoshi]
                 (I don't give a shit anymore, I will just-)

            script $Ev008.clear
                   $Ev008 = nil
            screen_tone(0,0,0,0,duration=10)
            wait 10
            text [Chika-san]
                 Have you found it, darling?
            text [Togoshi]
                 N- Not yet!!!
            text [Togoshi]
                 It's dark down here and that spoon... um... so small!!
            text [Togoshi]
                 B- But I almost got it, don't worry!!
            text [Chika-san]
                 Do you want me to get another one for you?
            text [Togoshi]
                 I'm fine, just fine!!
                 I see it now, hahah!!
            text [\N[1]]
                 ..............
            wait 20
            playSE(volume=80, pitch=100, name="undress")
            wait 20
            moveroute()
              opacity(255)
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 I have it now, this bad spoon, ah-ahah...
            text [Chika-san]
                 Let's continue to eat then.
            text [Togoshi]
                 Y- Yeah...!!
            text [Togoshi]
                 (Pheew.....)

            script $pose = Pose.new("A","A","D03",0,1)
                   $pose.slide
            text [\N[1]]
                 (................)
            text [\N[1]]
                 (This man...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (He just took a chance to peep at my panty....)
            text [\N[1]]
                 (For a moment, I can feel his breathings touch my 
                 thighs...)
            text [\N[1]]
                 (Even though I know he could look up my skirt, and 
                 certainly my private place...)
            text [\N[1]]
                 (I didn't try to stop him...
                 I just...)
            text [\N[1]]
                 (................)
            text [\N[1]]
                 (Something's wrong in my thinking....)
            text [\N[1]]
                 (................)
            moveroute()
              face left
            movewait
            wait 20
            text [Seita]
                 'Nee-chan?
            moveroute()
              face right
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,1)
                   $pose.shake
            text [\N[1]]
                 Y- Yes...!?
            text [Seita]
                 You were spacing out...
                 Are you alright?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,1)
                   $pose.pop
            text [\N[1]]
                 N- Nothing...!!
                 Let's eat some more!
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown19
            movewait
            wait 20
            text [Seita]
                 .............
            moveroute()
              unknown19
            movewait

            text ..............
            text ..........................
            text ........................................
            wait 20
            screen_tone(0,0,0,0,duration=30)
            wait 40

            var(1) = 105
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 105" ],
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
      "id" => 10,
      "name" => "EV010",
      "x" => 6,
      "y" => 7,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "", "tile" => 824, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 105" ],
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
