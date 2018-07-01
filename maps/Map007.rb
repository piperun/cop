map = {
  "tileset" => 51,
  "width" => 25,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "025-Town03", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 60, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 14,
      "y" => 10,
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
            text [Togoshi]
                 Hey! \N[1]-san!!
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.slide
            text [\N[1]]
                 Is it... Hiroshi's father?
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 15" ],
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
          "conditions" => [ "var(1) >= 35" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 55" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
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
      "id" => 5,
      "name" => "EV005",
      "x" => 1,
      "y" => 26,
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
            text < West Lake | Waterfall Village >
          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Maid",
      "x" => 24,
      "y" => 20,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
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
                 Can't you see I'm busy here? I couldn't sleep last 
                 night becaus-
            text [Maid]
                 ....Nevermind.
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 0" ],
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
          "conditions" => [ "var(1) >= 90" ],
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
                 I hate this job, but I guess I have no choice.
            text [Maid]
                 ....Nevermind.
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
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 22,
      "name" => "EV022",
      "x" => 21,
      "y" => 12,
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
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              opacity(0)
            moveroute()
              opacity(255)
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 40
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Ah, don't mention it...
                 I just did what everyone would do.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 I'm glad that none were hurt.
            text [Togoshi]
                 No no, I believe not many guys around here can fight 
                 a big tiger like you did.
            text [Togoshi]
                 If it weren't for you, they would be killed by that 
                 beast.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 It's just....
            text .........
            text ......................

            moveroute()
              speed(3)
              unknown1
              unknown1
              unknown3
              unknown19
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.pop
            text .........
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="017-Jump03")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 ....!!!!
            text [Togoshi]
                 Oooh...!!!
            moveroute()
              face down
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E04",1,1)
                   $pose.shake
            text [\N[1]]
                 ...............!!!!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E02",1,1)
                   $pose.pop
            text [\N[1]]
                 Hiro-kun.... why you....


            wait 10
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Aww......
            text [Hiroshi]
                 But...
                 It's just a prank....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.pop
            text [\N[1]]
                 .....You deserve it.
            text [\N[1]]
                 (His father is right here, it's so embrassing...)
            script $pose.clear
                   $pose = nil
            text [Togoshi]
                 (..............)
            text [Togoshi]
                 (Well done, my son.)
            screen_tone(0,0,0,0,duration=20)
            wait 25

            moveroute()
              opacity(255)
            moveroute()
              opacity(0)
            movewait
            screen_tone(0,0,0,0,duration=20)
            var(1) = 16
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 16" ],
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
      "id" => 17,
      "name" => "EV017",
      "x" => 14,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 55" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Takashi]
                 Yuuki-san!
            script $pose = Pose.new("A","A","B02",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B02",0,0)
                   $pose.shake
            text [\N[1]]
                 ..........
                 Taka-kun and Hiro-kun?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 What are you guys doing here?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 We come to study!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yeah, Sei-kun told us that we will study at your home 
                 today!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Oh... I see.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Well, come in then!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Both of them]
                 Thank you, Yuuki-san!
            screen_tone(0,0,0,0,duration=20)
            wait 30
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 40
            var(1) = 60

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 30
            screen_tone(0,0,0,0,duration=20)
            wait 20
            switch(43) = 0
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Thank you, Yuuki-san!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Thank you for helping us!
            script $pose = Pose.new("A","A","D06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,1)
                   $pose.shake
            text [\N[1]]
                 Don't worry about it.
                 I'm glad I was helpful!
            text [Seita]
                 .................
            text [Takashi]
                 Can we come here to study next time, Sei-kun!?
            text [Hiroshi]
                 You know, studying together is better than doing it 
                 alone, right!?
            text [Seita]
                 ...Y-yeah,
                 I guess...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",1,0)
                   $pose.shake
            text [\N[1]]
                 I'm glad for you, Sei-chan!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D05",0,1)
                   $pose.pop
            text [\N[1]]
                 Please treat him kindly, Taka-kun and Hiro-kun!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Both of them]
                 Y-Yes, we will...!!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D06",0,1)
                   $pose.pop
            text [\N[1]]
                 Good boys!
                 See you guys later, okay?
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Goodbye, Yuuki-san!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Bye, Sei-kun!
            text [Seita]
                 ......Okay.....
            text [Seita]
                 (..................)
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 65
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 65" ],
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
          "conditions" => [ "var(1) >= 75" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.shake
            text [\N[1]]
                 ...Togo-san?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 !!!!!!!!!
            text Forgetting to dress properly before going out, she 
                 exposed her sexy body out and made him shocked 
                 for a moment.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 .....
                 What's wrong, Togo-san?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Ahh-hahah!!
                 Nothing... just nothing!!
            text [\N[1]]
                 .............
            text [Togoshi]
                 Hahah.... well...
                 I came here for... uhm.....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",0,0)
                   $pose.shake
            text [\N[1]]
                 You look funny today, uncle...!
                 What are you trying to say?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 It- it's because...
                 Ah- nothing!!
            text [Togoshi]
                 I... I want to invite you and your brother to come over 
                 my house... and- and eat dinner with us!!
            text [Togoshi]
                 To- to show you our gratitude...for saving my son... 
                 and... um... also helping him study...!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.pop
            text [\N[1]]
                 Oh... I see.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 We will come for sure!
                 Thank you, Togo-san!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Grea- great!!
                 My wife will be happy if you can make it!!
            text [Togoshi]
                 Pl- Please come in the evening, okay!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Yes, we will!
            script $pose.clear
                   $pose = nil
            text [Togoshi]
                 Well then-
                 B-bye, Yuuki-san...!!
            moveroute()
              speed(1)
              face down
              unknown15
              move forward
            movewait
            text [Togoshi]
                 (Goddamn!! Is this a dream!!?)
            text [Togoshi]
                 (She welcomed me in that kind of outfit!!)
            text [Togoshi]
                 (I hope she didn't notice I was staring at her thighs all 
                 the time....!)
            text [Togoshi]
                 (Not sure if she's flirting me or just forgot to dress 
                 properly...)
            text [Togoshi]
                 (Sigh....
                 I will make sure to remember this to fap later.)
            moveroute(skippable)
              speed(2)
              unknown1
            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 80

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 80" ],
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
      "name" => "Fish",
      "x" => 1,
      "y" => 6,
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
      "id" => 23,
      "name" => "EV023",
      "x" => 23,
      "y" => 10,
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
          "trigger" => 3,
          "commands" => <<-COMMANDS
            wait 15
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [\N[1]]
                 (Damn, where did he go...!?)

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 141" ],
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
      "name" => "Yuuki House Door",
      "x" => 14,
      "y" => 7,
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
        }
      ]
    },
    {
      "id" => 12,
      "name" => "Hiroshi",
      "x" => 5,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
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
          "conditions" => [ "var(1) >= 16" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 .....................
            text [Hiroshi]
                 I'm sorry about that, nee-san.
            text [Hiroshi]
                 I promise not to do it again~
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 Just don't play your pranks in front of adult people.
            text [Hiroshi]
                 ...........
            text [Hiroshi]
                 Does it mean I can lift your skirt anytime as long as no 
                 one is around?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,1)
                   $pose.pop
            text [\N[1]]
                 It doesn't mean that way....!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Hahah~ I was just kidding!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 *Sigh...*
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 16" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 Let's play, nee-san!!
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 Later, okay?
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 \N[1]-san!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 What color of your panties you're wearing today!?
            script $pose = Pose.new("A","B","D06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",0,1)
                   $pose.shake
            text [\N[1]]
                 Fufu...
                 It's white, just the same as yesterday~
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Woohooo!!
            text [Seita]
                 Onee-chaan?
                 Why do you....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,1)
                   $pose.shake
            text [\N[1]]
                 (Ooops..!!)
            text [\N[1]]
                 (Why did I tell him that kind of thing...?)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 50" ],
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
          "conditions" => [ "switch(43)", "var(1) >= 60" ],
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
          "conditions" => [ "var(1) >= 75" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
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
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 Yuuki-san!!
            text [Hiroshi]
                 You must come to dinner with us tonight!!
            script $pose = Pose.new("C","A","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 We will for sure!
            text [Hiroshi]
                 "We"?
            text [Hiroshi]
                 You mean... Sei-kun will come too?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Of course.
            text [Hiroshi]
                 ...........
            text [Hiroshi]
                 (I've told him not to invite that little brat...!!)
            text [Hiroshi]
                 (I guess it can't be helped...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 N- nothing...!!
                 I'm happy to hear that!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 You're a good boy, Hiro-kun.
            script $pose.clear
                   $pose = nil
            text [Hiroshi]
                 (Damn...!)

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 90" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 Don't be late, Yuuki-san!
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
          "conditions" => [ "var(1) >= 125" ],
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
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 Ah, \N[1]-san!!
                 When will you eat dinner with us again!?
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 Hahah... I don't know.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 141" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 \N[1]-san!!
            script $pose = Pose.new("A","A","A04",1,0)
                   $pose.slide
            text [\N[1]]
                 Did you see someone ran through here just now?
            text [Hiroshi]
                 Yes!!
                 I saw him running to the lake, he seemed in hurry!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",1,0)
                   $pose.shake
            text [\N[1]]
                 Thank you, Hiro-kun!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 \N[1]-san!!
            text [Hiroshi]
                 What color of your panties today!?
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.slide
            text [\N[1]]
                 It's still the same-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,1)
                   $pose.shake
            text [\N[1]]
                 (Oops...!!)
            text [\N[1]]
                 (I almost said it again...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Come on, show them to me~
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 No, don't be demanding.
            text [Hiroshi]
                 Geez...!
            script $pose.clear
                   $pose = nil

            script $Ev007 = Ev007.new("A05","A02","B06","B02",2,0)
                   $Ev007.pop
            text Unexpectedly, Hiroshi jumped forward and grabbed 
                 both of \N[1]'s defenseless breasts.
            text [Hiroshi]
                 What about now!?
            script $Ev007.clear
                   $Ev007 = nil
            script $Ev007 = Ev007.new("B05","A03","B06","B02",2,1)
                   $Ev007.pop
            text [\N[1]]
                 Wh- what are you doing...!?
            text [Hiroshi]
                 Heheh~
                 Your boobies feel so soft!
            text [\N[1]]
                 S- stop it already!!
            text [\N[1]]
                 Someone's gonna see us!
            text [Hiroshi]
                 Heheh~
                 I wonder what if it happens...
            text [Hiroshi]
                 If you don't show me your panties, we're gonna be 
                 seen!
            text [\N[1]]
                 O- Okay, fine then!
                 Stop it please!
            script $Ev007.clear
                   $Ev007 = nil
            text [Hiroshi]
                 (Heheh... It worked!!)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Come on, \N[1]-san!
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 ..........
            text [\N[1]]
                 (Why do I get tricked so easily...)
            text [Hiroshi]
                 \N[1]-san!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 ....
                 I got it, I got it...!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E03",0,1)
                   $pose.pop
            text [\N[1]]
                 But remember, this is the limit, okay?!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Y- Yes, of course!!
            text [Hiroshi]
                 Do it quick, please!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 (What an annoying brat...)
            wait 20
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","E06",0,1)
                   $pose.pop
            playSE(volume=80, pitch=150, name="undress")
            text Couldn't convince the boy, \N[1] started to do as he 
                 told her to. She lifted her skirt up and exposed her 
                 panties to Hiroshi.
            text [\N[1]]
                 .......
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Woooohooo...!!!
            text [Hiroshi]
                 You really did it!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 Don't be so loud or people will hea-
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Your panties they're so beautiful!!
            text [Hiroshi]
                 You're always wearing white!?
                 I love white too!!
            script $pose.clear
                   $pose = nil

            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            playSE(volume=80, pitch=150, name="undress")
            text [\N[1]]
                 ....
                 It's over!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 W- wait!
            text [Hiroshi]
                 I just barely-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 You were being too loud, you idiot.
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 3,
          "move_speed" => 2,
          "move_frequency" => 5,
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
            text [Hiroshi]
                 \N[1]-san!!
            text [Hiroshi]
                 I want to look at them again!!
                 Please!?
            script $pose = Pose.new("A","A","D03",0,1)
                   $pose.slide
            text [\N[1]]
                 (Not again...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Please, I promise I will be quiet!
            text [Hiroshi]
                 If you don't-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 Fine, I get it...!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","D07",0,1)
                   $pose.pop
            playSE(volume=80, pitch=150, name="undress")
            text [\N[1]]
                 ...
                 Satisfied?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yesss~
            text [Hiroshi]
                 *Stares in silent mode*
            text [Hiroshi]
                 ...........
                 \N[1]-san...?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 What is it...?
            text [Hiroshi]
                 M- my... my peepee...
                 It feels so uncomfortable...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","C01",0,1)
                   $pose.shake
            playSE(volume=80, pitch=150, name="undress")
            text [\N[1]]
                 .........!
            script $pose.clear
                   $pose = nil
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
    },
    {
      "id" => 7,
      "name" => "Fish",
      "x" => 4,
      "y" => 9,
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
      "x" => 13,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 65" ],
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
      "name" => "Inn Door",
      "x" => 10,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
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
          "conditions" => [ "var(1) >= 15" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I should report to the mayor first...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 20" ],
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
          "conditions" => [ "var(1) >= 95" ],
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
            script $pose = Pose.new("A","A","B02",1,0)
                   $pose.slide
            text [\N[1]]
                 (Oops... I forgot Sei-chan at home!)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
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
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="024-Door01")


            var(1) = 101
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 101" ],
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
      "id" => 13,
      "name" => "Togoshi",
      "x" => 9,
      "y" => 24,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 16" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 I'm so sorry about that...
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.slide
            text [\N[1]]
                 ......................
            text [Togoshi]
                 Thank you again for saving my son.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 No worries.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 Oh, it's \N[1]-san!
                 Welcome to my place!
            text [Togoshi]
                 You're looking for a doctor?
                 He's inside, but be careful with that old fa-
            text [Togoshi]
                 ....I mean old- old man!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 50" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 55" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "switch(43)", "var(1) >= 60" ],
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
          "conditions" => [ "var(1) >= 75" ],
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
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 Ah, Yuuki-san...!
            script $pose = Pose.new("A","B","D06",1,1)
                   $pose.slide
            text [\N[1]]
                 T- Togo-san...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 D- Don't forget to come tonight!
            text [Togoshi]
                 (I guess she realized it... damn...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,1)
                   $pose.pop
            text [\N[1]]
                 Sure.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 95" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 Oh... Did you forget to take Sei-kun along?
            script $pose = Pose.new("A","A","D06",1,1)
                   $pose.slide
            text [\N[1]]
                 O- Of course not...!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (How careless I am...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 100" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            goto event 50
            text [Togoshi]
                 You guys has come, please go inside!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 105" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 G- Good morning, \N[1]-san.
            text [Togoshi]
                 (I wonder what kind of panties she's wearing 
                 today...)
            script $pose = Pose.new("A","B","A06",1,1)
                   $pose.slide
            text [\N[1]]
                 Oh-
                 Good morning, Togo-san...!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 (I bet he's thinking about my panties...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 141" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 You're looking for something?
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.shake
            text [\N[1]]
                 Yes, did you see someone just ran through here?
            text [Togoshi]
                 Y- yeah!
                 A man with tanned skin just past through!
            text [Togoshi]
                 I believe he ran to this direction to the west lake!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",1,0)
                   $pose.pop
            text [\N[1]]
                 Thank you, Togo-san!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 How is everything going for you?
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.slide
            text [\N[1]]
                 I'm good.
                 Thanks for asking.
            text [Togoshi]
                 Good for you, hahah...
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(1) >= 151" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Togoshi]
                 How is everything going for you?
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.slide
            text [\N[1]]
                 I'm good.
                 Thanks for asking.
            text [Togoshi]
                 Good for you, hahah...
            text [Togoshi]
                 Oh I almost forgot!
            text [Togoshi]
                 The blue hair man inside wants to talk to you, he told 
                 me he's a miner.
            text [Togoshi]
                 What kind of bussiness between you and him?
                 Just curious.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",1,0)
                   $pose.pop
            text [\N[1]]
                 Sorry... I can't tell.
            text [Togoshi]
                 O- Okay, nevermind.
            script $pose.clear
                   $pose = nil
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
    },
    {
      "id" => 24,
      "name" => "EV024",
      "x" => 14,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "switch(42)", "var(1) >= 155" ],
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
            wait 30
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I should be fully prepared before going to meet Theff 
                 again.)
            text [\N[1]]
                 (This trip is going to cost me alot of vitality...
                 Maybe buying some apples will help.)
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "switch(A)", "var(1) >= 155" ],
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
      "name" => "EV008",
      "x" => 10,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "193-Support01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 6 },
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
      "id" => 19,
      "name" => "EV019",
      "x" => 13,
      "y" => 9,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 65" ],
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
      "x" => 24,
      "y" => 10,
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
          "conditions" => [ "var(1) >= 100" ],
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
            text [Seita]
                 That's not the way to Hiro-kun's place!
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 I know...
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 (He's obviously not going this way.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
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
          "trigger" => 1,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 (It's late already...)
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
      "id" => 14,
      "name" => "Hiroshi",
      "x" => 8,
      "y" => 24,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
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
      "name" => "EV009",
      "x" => 0,
      "y" => 27,
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
          "conditions" => [ "var(1) >= 100" ],
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
            text [Seita]
                 That's not the way to Hiro-kun's place!
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 I know...
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 (It's late already...)
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
      "id" => 20,
      "name" => "EV020",
      "x" => 10,
      "y" => 24,
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
          "conditions" => [ "var(1) >= 105" ],
          "graphic" => { "character" => "124-Civilian24", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 40
            screen_tone(0,0,0,0,duration=20)
            wait 30
            text [Chika-san]
                 I'm looking forward to the next time, \N[1]-san.
            script $pose = Pose.new("A","B","A05",0,1)
                   $pose.slide
            text [\N[1]]
                 Thank you so much, Chika-san!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, thank you so much!
                 That was such a feast!
            text [Chika-san]
                 I'm glad you both liked it.
            text [Chika-san]
                 I guess the time is late now.
                 Please be careful on your way home.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A01",0,1)
                   $pose.pop
            text [\N[1]]
                 Don't worry, our home is just right there.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,1)
                   $pose.pop
            text [\N[1]]
                 Thank you again!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Togoshi]
                 Y- You're welcome!
            text [Togoshi]
                 I can accompany with you to your home if you want,
                 you know, for safety reason...!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,1)
                   $pose.pop
            text [\N[1]]
                 W- We're fine, hahah....
            text [\N[1]]
                 (..............)
            text [Togoshi]
                 W- Well... 
                 Good bye then, \N[1]-san!
            text [Chika-san]
                 Have a good night.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,1)
                   $pose.pop
            text [\N[1]]
                 Good night!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Good night Chika-san, Togo-san!!
            text ................
            text ...........................
            screen_tone(0,0,0,0,duration=20)
            wait 40
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 20

            var(1) = 110
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 110" ],
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
          "conditions" => [ "switch(52)", "var(51) >= 25" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            wait 20
            text [Villager]
                 Thank you, \N[1]-san.
                 This is your share as usual.
            playSE(volume=80, pitch=100, name="056-Right02")

            text \c[6]Received 400G !!
            text [Villager]
                 *Yawns*
                 Now I have to get some rest, my shoulders hurt...
            moveroute()
              unknown19
              unknown15
              opacity(0)
              playSE(volume=80, pitch=100, name="024-Door01")
            movewait
            wait 20
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (It's already this late?)
            text [\N[1]]
                 (I better go home now.)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 30
            var(51) = 30
            switch(52) = 1
            playSE(volume=80, pitch=100, name="024-Door01")

            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "EV004",
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
          "conditions" => [ "var(1) >= 100" ],
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
            text [Seita]
                 That's not the way to Hiro-kun's place!
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 I know...
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
          "trigger" => 1,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (He's obviously not going this way.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
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
          "trigger" => 1,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 (It's late already...)
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
      "id" => 15,
      "name" => "EV015",
      "x" => 3,
      "y" => 26,
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
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              opacity(0)
            moveroute()
              opacity(255)
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 40
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Ah, don't mention it...
                 I just did what everyone would do.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 I'm glad that none were hurt.
            text [Togoshi]
                 No no, I believe not many guys around here can fight 
                 a big tiger like you did.
            text [Togoshi]
                 If it weren't for you, they would be killed by that 
                 beast.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 It's just....
            text .........
            text ......................

            moveroute()
              speed(3)
              unknown1
              unknown1
              unknown3
              unknown19
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.pop
            text .........
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="017-Jump03")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 ....!!!!
            text [Togoshi]
                 Oooh...!!!
            moveroute()
              face down
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E04",1,1)
                   $pose.shake
            text [\N[1]]
                 ...............!!!!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E02",1,1)
                   $pose.pop
            text [\N[1]]
                 Hiro-kun.... why you....


            wait 10
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Aww......
            text [Hiroshi]
                 But...
                 It's just a prank....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.pop
            text [\N[1]]
                 .....You deserve it.
            text [\N[1]]
                 (His father is right here, it's so embrassing...)
            script $pose.clear
                   $pose = nil
            text [Togoshi]
                 (..............)
            text [Togoshi]
                 (Well done, my son.)
            screen_tone(0,0,0,0,duration=20)
            wait 25

            moveroute()
              opacity(255)
            moveroute()
              opacity(0)
            movewait
            screen_tone(0,0,0,0,duration=20)
            var(1) = 16
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 16" ],
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
      "x" => 0,
      "y" => 28,
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
          "conditions" => [ "var(1) >= 100" ],
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
            text [Seita]
                 That's not the way to Hiro-kun's place!
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 I know...
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 (It's late already...)
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
      "id" => 21,
      "name" => "Seita",
      "x" => 9,
      "y" => 25,
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
          "conditions" => [ "var(1) >= 105" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 110" ],
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
