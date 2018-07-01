map = {
  "tileset" => 51,
  "width" => 25,
  "height" => 20,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "025-Town03", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 23,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "167-Small09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
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
      "x" => 24,
      "y" => 16,
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
      "name" => "Poor Woman",
      "x" => 10,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "146-Prisoner02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Poor Villager]
                 Do you know where is my husband?
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "146-Prisoner02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Poor Villager]
                 My husband was returned, empty hands, I couldn't 
                 believe it!
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
          "conditions" => [ "switch(42)", "var(1) >= 145" ],
          "graphic" => { "character" => "146-Prisoner02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Poor Villager]
                 I'm starting to hate being poor...
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Inn Door",
      "x" => 4,
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
            playSE(volume=80, pitch=100, name="033-Switch02")
            text [\N[1]]
                 It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "EV012",
      "x" => 23,
      "y" => 15,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            text Ancient Tree >
          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 19,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "EV013",
      "x" => 0,
      "y" => 16,
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              transfer player
            movewait
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 12,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "160-Small02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 2,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 20,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "EV014",
      "x" => 2,
      "y" => 15,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            text < Tavern
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "EV003",
      "x" => 9,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "160-Small02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 2,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "Poor Man",
      "x" => 14,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "145-Prisoner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
              face left
              unknown15
              unknown25
            movewait
            wait 35

            wait 25
            text [Poor Villager]
                 In spite of being poor, my wife still chooses to stay 
                 with me.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
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
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "145-Prisoner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Poor Villager]
                 Looks like the rumor is true, bandits have started their 
                  'work season' again...
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
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
          "graphic" => { "character" => "145-Prisoner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Poor Villager]
                 Hey, \N[1]-san!
                 Can you do me a favor!?
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.shake
            text [\N[1]]
                 What is it?
            text [Poor Villager]
                 I know you're a fighter so only you can help me with 
                 this!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",1,0)
                   $pose.pop
            text [\N[1]]
                 Is someone... threatening you?
            text [Poor Villager]
                 N- No, but they did kind the same thing to me!
            text [\N[1]]
                 ...'They'?
            text [Poor Villager]
                 Yes, 'they' are the soldiers in the South!!
            text [Poor Villager]
                 It was yesterday, when they saw me gathering 
                 woods in the forest.
            text [Poor Villager]
                 They asked me to gather some woods for them and 
                 they would pay for the job.
            text [Poor Villager]
                 B- But they didn't!
                 They even laughed when I was begging them!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B02",1,0)
                   $pose.pop
            text [\N[1]]
                 Really...!?
            text [\N[1]]
                 Bullying a defenseless like you...
            text [Poor Villager]
                 I just want the money they promised to pay,
                 can you help me talk to them....!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E03",1,0)
                   $pose.pop
            text [\N[1]]
                 Yes, I will do it.
                 Just stay here and let me do the talking.
            script $pose.clear
                   $pose = nil
            text [Poor Villager]
                 Th- thank you, \N[1]-san!
            screen_tone(0,0,0,0,duration=20)
            wait 35
            playSE(volume=80, pitch=100, name="013-Move01")

            wait 20
            switch(129) = 0
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [\N[1]]
                 (Now let's find out who did this to him.)
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)", "var(1) >= 151" ],
          "graphic" => { "character" => "145-Prisoner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            screen_tone(0,0,0,0,duration=20)
            wait 40
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Poor Villager]
                 Woah, thank you, \N[1]-san!
            text [Poor Villager]
                 H- How did you do that?
                 They didn't go hard on you, right?
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 Y- You don't need to worry about it.
            text [Poor Villager]
                 Oh- Okay...
            text [Poor Villager]
                 Thank you again, \N[1]-san!
                 I owe you this one!!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            switch(129) = 1


            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "145-Prisoner01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Poor Villager]
                 I will never work for those soldiers again,
                 they're such scumbags!
          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "EV004",
      "x" => 15,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "168-Small10", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "Poor Woman",
      "x" => 4,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "146-Prisoner02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Poor Villager]
                 Sometimes I dream of running away....
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
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
        }
      ]
    }
  ]
}
