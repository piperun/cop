map = {
  "tileset" => 51,
  "width" => 35,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "025-Town03", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 27,
      "name" => "EV027",
      "x" => 30,
      "y" => 29,
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
      "id" => 16,
      "name" => "EV016",
      "x" => 14,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "152-Animal02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            playSE(volume=80, pitch=100, name="067-Animal02")
            text [Cat]
                 *Meow*
                 (Stay away, human!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "152-Animal02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            playSE(volume=80, pitch=100, name="067-Animal02")
            text [Cat]
                 *Meow*
                 (Meow!!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "152-Animal02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            playSE(volume=80, pitch=100, name="067-Animal02")
            text [Cat]
                 *Meow*
                 (Stranger!!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "152-Animal02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            playSE(volume=80, pitch=100, name="067-Animal02")
            text [Cat]
                 *Meow*
                 (Why does he seem so interested in your panties?)
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "id" => 5,
      "name" => "EV005",
      "x" => 0,
      "y" => 12,
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
        },
        {
          "conditions" => [ "var(1) >= 145" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (This isn't the way to the South.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
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
      "id" => 11,
      "name" => "EV011",
      "x" => 34,
      "y" => 13,
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
        },
        {
          "conditions" => [ "var(1) >= 25" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I should let Sei-chan know first before going to 
                 East Forest...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 30" ],
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
      "id" => 22,
      "name" => "Kid 1",
      "x" => 12,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Little kid]
                 Let's play with us, onee-san!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Now do you have time to play with us!?
            script $pose = Pose.new("A","B","A06",1,0)
                   $pose.slide
            text [\N[1]]
                 Not now...
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Wahahahah!!
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Wah...!!
                 It's \N[1]-san!
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.slide
            wait 10
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            playSE(volume=80, pitch=100, name="015-Jump01")
            text [Little kid]
                 Bingo!!
                 \N[1]-san's panty has been shown!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.pop
            text [Little kid]
                 (Can't hit him in front of his mother.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [Little kid]
                 It's \N[1]-san!
                 Front Missle Attack!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","E","A04",0,1)
                   $pose.pop
            playSE(volume=80, pitch=100, name="015-Jump01")
            text [Little kid]
                 Bullseye!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.pop
            text [Little kid]
                 (Can't hit him in front of his mother.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "id" => 6,
      "name" => "EV006",
      "x" => 0,
      "y" => 13,
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
        },
        {
          "conditions" => [ "var(1) >= 145" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (This isn't the way to the South.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
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
      "x" => 14,
      "y" => 1,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "160-Small02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 2,
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
      "id" => 28,
      "name" => "EV028",
      "x" => 22,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 5" ],
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
      "id" => 23,
      "name" => "Villager 2",
      "x" => 6,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "121-Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Auntie]
                 Oh my, what just happened out there is such a 
                 nightmare!
            text [Auntie]
                 Who could imagine what that beast would do if you 
                 didn't make it in time!?
            text [Auntie]
                 I won't let my son go out there after this.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "121-Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Auntie]
                 Thanks for helping us, this place is safe now I guess.
            text [Auntie]
                 But I still won't let my son go out there.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "121-Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Auntie]
                 Good morning, Yuuki-san!
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
          "conditions" => [ "switch(42)", "var(1) >= 130" ],
          "graphic" => { "character" => "121-Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            if var(31) == 0
              text [Auntie]
                   My son told me about you many times, has he been a 
                   good boy?
            end
            if var(31) == 1
              text [Auntie]
                   I see you are popular right now.
                   They call you \c[6][Famous Adventurer]\c[0].
              text [Auntie]
                   I hope you will keep this small village safe.
            end
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "id" => 12,
      "name" => "EV012",
      "x" => 22,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "193-Support01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
      "name" => "Yuuki House Door",
      "x" => 4,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Indoors", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
            goto event 9
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="033-Switch02")
            text [\N[1]]
                 It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 29,
      "name" => "EV029",
      "x" => 1,
      "y" => 12,
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

            wait 25
            moveroute()
              speed(1)
              unknown3
              unknown3
              unknown3
              unknown15
              face down
            movewait
            wait 30
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.shake
            text [\N[1]]
                 (Haah...
                 What a peaceful day...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A02",0,0)
                   $pose.pop
            text [\N[1]]
                 (Looks like there's nothing for me to-)

            text [???]
                 HELP!!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 (....!?)
            script $pose.clear
                   $pose = nil
            text [???]
                 STOP HIM PLEASE!!
            moveroute()
              speed(4)
              face right
            movewait
            wait 20
            moveroute(skippable)
              opacity(255)
              speed(5)
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
            movewait
            moveroute()
              jump(x=-1, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
              face right

            movewait

            script $pose = Pose.new("D","A","B02",1,0)
                   $pose.slide
            text [\N[1]]
                 Ughh....!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("D","A","E01",1,0)
                   $pose.pop
            text [\N[1]]
                 What are you doing!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thief]
                 S- Sorry!!
                 I'm in hurry!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thief]
                 (Oops...!
                 I can see her panties pretty clear!!)
            text [Thief]
                 (What a nice, delicious pair of panties!!)
            text [Thief]
                 (But I have no time for this!!
                 I'm gonna get caught!)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thief]
                 H- Hey, I gotta go now!!
                 Move!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("D","A","E02",1,0)
                   $pose.pop
            text [\N[1]]
                 W- wait...!!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute(skippable)
              opacity(0)
            movewait
            playSE(volume=80, pitch=100, name="013-Move01")
            moveroute()
              face left
            movewait
            wait 40
            screen_tone(0,0,0,0,duration=20)
            wait 20
            script $pose = Pose.new("A","A","E02",1,0)
                   $pose.slide
            text [\N[1]]
                 (Who was that...?)
            text [\N[1]]
                 (I've never seen his face before...)
            text [\N[1]]
                 (What a rude person!)
            script $pose.clear
                   $pose = nil
            text [???]
                 YUUKI-SAN!!
            moveroute()
              face right
            movewait
            wait 10
            moveroute(skippable)
              opacity(255)
              speed(4)
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              move toward player
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Villager]
                 W- Why-
                 *Pants*
            text [Villager]
                 Why didn't you stop him!?
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.slide
            text [\N[1]]
                 You seem terrified, what happened?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Villager]
                 *Pants*
                 That bastard.. He stole my stuff!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.shake
            text [\N[1]]
                 W- what!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.pop
            text [\N[1]]
                 ...That man earlier!?
            text [Villager]
                 Yes! He's a thief, the man just ran into you!
            text [Villager]
                 N- no time to explain, please help me take it back!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,0)
                   $pose.pop
            text [\N[1]]
                 Ah- Yes!!
                 I'm going now!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 141
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 141" ],
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
      "name" => "EV007",
      "x" => 32,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "fish2", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => true,
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
      "id" => 18,
      "name" => "EV018",
      "x" => 16,
      "y" => 1,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "160-Small02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 2,
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
      "name" => "Yuuki House Door",
      "x" => 22,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            goto event 9
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="033-Switch02")
            text [\N[1]]
                 It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 24,
      "name" => "Villager 6",
      "x" => 34,
      "y" => 19,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "023-Gunner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Blonde-haired Young Man]
                 You know what? Shooing a big cat away doesn't 
                 make you women stronger than us men.
            text [\N[1]]
                 ..............
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "023-Gunner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Blonde-haired Young Man]
                 I think we need a pub here in this village.
            text [Blonde-haired Young Man]
                 ....And you can be a good-looking waitress in that.
                 (Heheheh)
            text [\N[1]]
                 ..............
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 130" ],
          "graphic" => { "character" => "023-Gunner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            if var(31) == 0
              text [Blonde-haired Young Man]
                   '\c[6]Common Village Girl\c[8]'...?
                   Hah!
            end
            if var(31) == 1
              text [Blonde-haired Young Man]
                   I don't want to be an adventurer. Too dangerous.
              text [Blonde-haired Young Man]
                   But I bet it feels good when people call you 
                   nicknames like \c[6][Famouse Adventurer]\c[0], right?
            end
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "id" => 13,
      "name" => "EV013",
      "x" => 26,
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
        },
        {
          "conditions" => [ "var(1) >= 145" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (This isn't the way to the South.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
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
      "id" => 8,
      "name" => "EV008",
      "x" => 30,
      "y" => 8,
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
            text Do not feed, thanks.
          COMMANDS
        }
      ]
    },
    {
      "id" => 19,
      "name" => "EV019",
      "x" => 22,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            playSE(volume=80, pitch=100, name="066-Animal01")
            text [Dog]
                 *Woof*
                 (I can see your panties!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            playSE(volume=80, pitch=100, name="066-Animal01")
            text [Dog]
                 *Woof*
                 (Woo, what a view!!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            playSE(volume=80, pitch=100, name="066-Animal01")
            text [Dog]
                 *Woof*
                 (I'm on my duty!!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            playSE(volume=80, pitch=100, name="066-Animal01")
            text [Dog]
                 *Woof*
                 (I hate that man over there!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            playSE(volume=80, pitch=100, name="066-Animal01")
            text [Dog]
                 *Sniffs sniffs*
            script $pose = Pose.new("A","B","A06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,1)
                   $pose.shake
            text [\N[1]]
                 Hey, don't sniff that place!
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 30,
      "name" => "Thief",
      "x" => 19,
      "y" => 12,
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
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
          "conditions" => [ "var(1) >= 141" ],
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
      "name" => "Yuuki House Door",
      "x" => 10,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            goto event 9
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="033-Switch02")
            text [\N[1]]
                 It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "EV014",
      "x" => 27,
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
        },
        {
          "conditions" => [ "var(1) >= 145" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (This isn't the way to the South.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
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
      "id" => 25,
      "name" => "Villager 1",
      "x" => 7,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "129-Noble04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Middle-Aged Villager]
                 I heard what happened, it's so terrifying...
            text [Middle-Aged Villager]
                 Luckily we have you, I don't know what to do if the 
                 beasts keep coming.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "129-Noble04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Middle-Aged Villager]
                 I can't get enough of looking at these beautiful 
                 flowers.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "129-Noble04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Middle-Aged Villager]
                 Today is a good day, isn't it?
            text [Middle-Aged Villager]
                 Let's do some crazy things, like taking care of these 
                 flowers.
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "129-Noble04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Middle-Aged Villager]
                 My wife is angry with me, I wonder why...
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "129-Noble04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Middle-Aged Villager]
                 Damn, I saw it right there, that thief bumped into you 
                 and...
            text [Middle-Aged Villager]
                 (Can't say that I saw her panties too...)
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "id" => 31,
      "name" => "EV031",
      "x" => 20,
      "y" => 12,
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
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 6,
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
          "conditions" => [ "var(1) >= 141" ],
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
      "id" => 20,
      "name" => "Villager 4",
      "x" => 20,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Auntie]
                 What time is it? So many house chores need to do!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Auntie]
                 I heard that you've met a demon, yet you still alright...
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Auntie]
                 I've always wanted a child, just like everybody else...
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
          "conditions" => [ "switch(42)", "var(1) >= 130" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            if var(31) == 0
              text [Auntie]
                   \c[6][Famous Adventurer]\c[0]?
                   It sounds so... adventurous.
            end
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 142" ],
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
          "conditions" => [ "switch(42)", "var(1) >= 145" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            if var(31) == 0
              text [Auntie]
                   It hasn't rained here for a week, it's good for my  
                   laundering.
            end
            if var(31) == 1
              text [Auntie]
                   \c[6][Famous Adventurer]\c[0]?
                   It sounds so... adventurous.
            end
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
      "x" => 26,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 6 },
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
            text ^  North Forest | South Forest v
                 <  West Lake   | East Road     >
          COMMANDS
        }
      ]
    },
    {
      "id" => 26,
      "name" => "EV026",
      "x" => 31,
      "y" => 29,
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
      "id" => 15,
      "name" => "Villager 4",
      "x" => 31,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "110-Civilian10", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Old Villager]
                 I used to be an adventurer like you, then I took an 
                 arrow in the knee.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "110-Civilian10", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Old Villager]
                 Did I tell you about what happened to my knee?
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "110-Civilian10", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            if var(31) == 0
              text [Old Villager]
                   Your face seems similar to a mature woman I know...
            end
            if var(31) == 1
              text [Old Villager]
                   Oh... so you're the \c[6][Famouse Adventurer]\c[0] 
                   that they're talking about?
              text [Old Villager]
                   Very impressive, especially when you're a girl.
            end
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
      "id" => 4,
      "name" => "Yuuki House Door",
      "x" => 26,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            goto event 9
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="033-Switch02")
            text [\N[1]]
                 It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 21,
      "name" => "Villager 3",
      "x" => 17,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Bearded Man]
                 Can't you see I'm busy working here? This job sucks!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Bearded Man]
                 When I was young, I sacrificed my health in order to 
                 make money...
            text [Bearded Man]
                 Now I'm old and still nothing changes, damn!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Bearded Man]
                 Few.... I think I'm getting a new job...
            text [Bearded Man]
                 I used to be a miner long time ago but my bad habit... 
                 it got me here anyway...
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 ............
            text [Bearded Man]
                 In my whole career, there's not a single material I 
                 never met.
            text [Bearded Man]
                 ..................
            text [Bearded Man]
                 Can you do for me a favor, Yuuki-san?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 ............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 Yeah, I'm glad to help!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 Great!!
                 You're so kind!!
            text [Bearded Man]
                 ...But this is a secret, don't tell anyone, okay?!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 Oh... I see...
            text [Bearded Man]
                 There's a cave in the north of this village... a cave full 
                 of devil bats!
            text [Bearded Man]
                 I believe deep inside of that cave, we will find a rare 
                 crafting material!
            text [Bearded Man]
                 They're really valuable but really hard to exact from 
                 the ground.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 ...............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B02",0,0)
                   $pose.pop
            text [\N[1]]
                 So what exactly do you want me to do?
            text [Bearded Man]
                 The cave's entrance is blocked by big rock boulders 
                 and there are many devil bats flying around...
            text [Bearded Man]
                 I'm a miner, not a skilled fighter like you...
                 So...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 .................
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Well, I think I can do it.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 I know you can!
                 You're strongest fighter I've met!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 You make me feel embarrassed...
            text [Bearded Man]
                 So, shall we go now!?


              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","A06",0,0)
                     $pose.shake
              text [\N[1]]
                   Let's go right now!
              script $pose.clear
                     $pose = nil
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Bearded Man]
                   Yes!
                   I can't wait either!
              text [Bearded Man]
                   But first,
                   I need to tell the shop-owner that I quit this job!
              text [Bearded Man]
                   Please wait.
              screen_tone(0,0,0,0,duration=20)
              wait 40
              playSE(volume=80, pitch=100, name="024-Door01")
              wait 30
              playSE(volume=80, pitch=100, name="053-Cannon02")
              wait 10
              playSE(volume=80, pitch=100, name="054-Cannon03")
              wait 40
              playSE(volume=80, pitch=100, name="024-Door01")


              moveroute()
                opacity(255)
              movewait
              screen_tone(0,0,0,0,duration=20)
              wait 30
              text [Bearded Man]
                   Everything's settled.
              text [Bearded Man]
                   Let's go, to the bat cave!
              text [\N[1]]
                   ...............
              screen_tone(0,0,0,0,duration=20)
              wait 20
              moveroute()
                opacity(0)
              var(51) = 5
              switch(52) = 0

              playSE(volume=80, pitch=100, name="013-Move01")
              wait 5
              playSE(volume=80, pitch=100, name="013-Move01")
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20

              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D06",0,0)
                     $pose.pop
              text [\N[1]]
                   Umm... maybe later.
                   I have something to do right now.
              script $pose.clear
                     $pose = nil
              text [Bearded Man]
                   Okay then.
                   Come to see me anytime you want, I'm always ready!


          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 90" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Bearded Man]
                 Ready to go?


              script $pose = Pose.new("A","A","A06",0,0)
                     $pose.shake
              text [\N[1]]
                   Let's go right now!
              script $pose.clear
                     $pose = nil
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Bearded Man]
                   Yes!
                   I can't wait either!
              text [Bearded Man]
                   But first,
                   I need to tell the shop-owner that I quit this job!
              text [Bearded Man]
                   Please wait.
              screen_tone(0,0,0,0,duration=20)
              wait 40
              playSE(volume=80, pitch=100, name="024-Door01")
              wait 30
              playSE(volume=80, pitch=100, name="053-Cannon02")
              wait 10
              playSE(volume=80, pitch=100, name="054-Cannon03")
              wait 40
              playSE(volume=80, pitch=100, name="024-Door01")


              moveroute()
                opacity(255)
              movewait
              screen_tone(0,0,0,0,duration=20)
              wait 30
              text [Bearded Man]
                   Everything's settled.
              text [Bearded Man]
                   Let's go, to the bat cave!
              text [\N[1]]
                   ...............
              screen_tone(0,0,0,0,duration=20)
              wait 20
              var(51) = 5
              switch(52) = 0
              moveroute()
                opacity(0)

              playSE(volume=80, pitch=100, name="013-Move01")
              wait 5
              playSE(volume=80, pitch=100, name="013-Move01")
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20

              script $pose = Pose.new("A","A","D06",0,0)
                     $pose.pop
              text [\N[1]]
                   Umm... maybe later.
                   I have something to do right now.
              script $pose.clear
                     $pose = nil
              text [Bearded Man]
                   Okay then.
                   Come to see me anytime you want, I'm always ready!


          COMMANDS
        },
        {
          "conditions" => [ "switch(B)", "var(1) >= 90" ],
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
          "conditions" => [ "var(51) >= 5" ],
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
      "x" => 34,
      "y" => 12,
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
        },
        {
          "conditions" => [ "var(1) >= 25" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I should let Sei-chan know first before going to 
                 East Forest...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 30" ],
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
      "id" => 32,
      "name" => "Villager 4",
      "x" => 24,
      "y" => 25,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 6,
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
          "conditions" => [ "var(1) >= 142" ],
          "graphic" => { "character" => "119-Civilian19", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 3,
          "commands" => <<-COMMANDS
            wait 10

            screen_tone(0,0,0,0,duration=0)

            text [Villager]
                 So you've found him but he got away!?
            script $pose = Pose.new("A","A","D06",1,1)
                   $pose.slide
            text [\N[1]]
                 Y- Yeah...
                 He escaped but he left this... thing... behind.
            text [Villager]
                 Oh- Oh my!!
            text [Villager]
                 Thank you so much!
                 It's my favorite one!!
            text [Villager]
                 I was going to wash it anyway, but he was quite... 
                 fast.
            text [Villager]
                 He stole it when it was this dirty.
                 What a pervert!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 ...........
            playSE(volume=80, pitch=100, name="056-Right02")
            text You handed over a \c[6]'Smelly Panties'.
            text [Villager]
                 Teehee... so embarrassing~
            text [Villager]
                 Thank you, \N[1]-san!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,1)
                   $pose.pop
            text [\N[1]]
                 You're welcome...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",1,1)
                   $pose.pop
            text [\N[1]]
                 Now I have something to do, see you later oba-san.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="013-Move01")
            var(1) = 143

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 143" ],
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
