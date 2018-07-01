map = {
  "tileset" => 2,
  "width" => 25,
  "height" => 15,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 13,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "184-Light01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 156" ],
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
      "y" => 11,
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
        },
        {
          "conditions" => [ "var(1) >= 155" ],
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
                 (I won't run away from this.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 24,
      "y" => 11,
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
        },
        {
          "conditions" => [ "var(1) >= 155" ],
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
                 (I can't go facing them alone.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Theff",
      "x" => 13,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            screen_tone(0,0,0,0,duration=20)
            wait 20


            screen_tone(0,0,0,0,duration=0)

            moveroute()
              face left
            movewait
            wait 20
            text [Theff]
                 We aren't far to 'Coal Village', but it's late already.
                 So dangerous to wander around at this time.
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.shake
            text [\N[1]]
                 Alright, let's wait until tomorrow then.
            wait 25
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 ....Now please excuse me for a moment.
            script $pose.clear
                   $pose = nil
            wait 10

            moveroute()
              speed(2)
              face left
              unknown15
              unknown2
              unknown2
            movewait
            text [Theff]
                 Hey, where are you going?
            wait 15
            moveroute()
              face right
            movewait
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.slide
            text [\N[1]]
                 ........
                 It's not your business.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,1)
                   $pose.shake
            text [\N[1]]
                 And don't you dare to come over here!
            script $pose.clear
                   $pose = nil
            text [Theff]
                 ....Oh, I see.
            text [Theff]
                 (Heheheh...)
            wait 20
            moveroute()
              unknown2
              unknown2
              unknown2
              unknown2
            wait 40
            screen_tone(0,0,0,0,duration=30)
            wait 30


            wait 30


            screen_tone(0,0,0,0,duration=25)
            moveroute()
              speed(2)
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown19
            movewait
            wait 20
            playSE(volume=80, pitch=100, name="undress")
            wait 30
            screen_tone(0,0,0,0,duration=20)
            wait 15
            script $Ev018 = Ev018.new("C01",1,1,1,1,0,0,1,0)
                   $Ev018.pop
            text \N[1] pulled her panties down to her knee and sat on 
                 her legs in order to take a piss, she hadn't done it the 
                 whole day.
            text Not too far from behind, Theff was watching her in 
                 silent. He tucked himself next to a tree stump so she 
                 wouldn't be able to see him.
            text [\N[1]]
                 (Phew~
                 Finally I had a chance to do this.)
            text [\N[1]]
                 (I've been hold it in for a while...)
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev018 = Ev018.new("C02",1,1,1,1,0,0,0,1)
                   $Ev018.pop
            text [\N[1]]
                 (Hmmph....)
            text [\N[1]]
                 (It's coming....)
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev018 = Ev018.new("D01",1,1,1,1,0,1,0,1)
                   $Ev018.pop
            playSE(volume=100, pitch=100, name="Peeing On Ground")
            wait 30
            text [\N[1]]
                 (Haah.....)
            text [\N[1]]
                 (....So comfortable...)
            wait 60
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev018 = Ev018.new("C03",1,1,1,1,0,0,0,1)
                   $Ev018.pop

            text [\N[1]]
                 (....Phew~)
            text [\N[1]]
                 (My body feels lighter now...)
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev018 = Ev018.new("C02",1,1,1,1,0,0,0,1)
                   $Ev018.pop
            text [\N[1]]
                 (It's so embarrassing, taking a piss in nature like 
                 this...)
            text [\N[1]]
                 (If anyone sees me in this state I'd die of shame.)
            script $Ev018.clear
                   $Ev018 = nil
            screen_tone(0,0,0,0,duration=25)
            wait 40
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 (Oops!
                 She's coming!!)
            moveroute()
              speed(5)
              unknown3
              unknown3
              unknown3
              unknown3
              unknown3
              unknown3
              transfer player
              unknown3
              unknown3
              unknown3
              face down
            movewait
            wait 25
            moveroute()
              speed(4)
              face down
            movewait
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.shake
            text [\N[1]]
                 (.........!?)
            text [\N[1]]
                 (....Did something... just move?)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.pop
            text [\N[1]]
                 (.........)
            text [\N[1]]
                 (....Maybe it's just my imagination.)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            wait 20


            screen_tone(0,0,0,0,duration=25)
            wait 35
            text [Theff]
                 ..............
            text [\N[1]]
                 ..............
            text [Theff]
                 H- Hey.
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.shake
            text [\N[1]]
                 ....What?
            text [Theff]
                 I- I think... isn't it time for you to tell me your name?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 My name is \N[1].
            text [Theff]
                 \N[1]... What a beautiful name.
            text [Theff]
                 Why are you doing this alone?
                 I mean, risking your life for your village?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 ..........
                 I just do what I have to do.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 As if I have another way to get people of this thing...
            text [Theff]
                 (............)
            text [Theff]
                 (What an innocent girl.)
            text [Theff]
                 (She doesn't know that she could be raped or killed if 
                 she gets to face the boss...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 .......
                 And you?
            text [\N[1]]
                 Why did you become a thief?
            text [Theff]
                 Heh...
                 Same reason to any thief out there.
            text [Theff]
                 We're good at nothing but stealing.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 .............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 ...Theff, I think you aren't a bad pers- 
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 E- Enough...!
                 Just take a rest already!
            text [Theff]
                 Tomorrow isn't gonna be easy for us!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 .....
                 Okay.
            script $pose.clear
                   $pose = nil


            screen_tone(0,0,0,0,duration=20)
            wait 35
            playME(volume=80, pitch=100, name="014-Inn01")
            wait 50

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 156" ],
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
      "name" => "EV004",
      "x" => 0,
      "y" => 0,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
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
            switch(44) = 0
            switch(43) = 1
            switch(42) = 1
            screen_tone(0,0,0,0,duration=25)

            wait 25

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 155" ],
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
          "conditions" => [ "var(1) >= 156" ],
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
