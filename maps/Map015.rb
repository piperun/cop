map = {
  "tileset" => 54,
  "width" => 25,
  "height" => 20,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "Door",
      "x" => 11,
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
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="034-Switch03")
            wait 20
            text It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 16,
      "name" => "EV016Seita",
      "x" => 20,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
        }
      ]
    },
    {
      "id" => 22,
      "name" => "Togosan",
      "x" => 1,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
                 Do you need a room?
          COMMANDS
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "108-Civilian08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
                 Do you need a room?
          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Chika-san",
      "x" => 1,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 20" ],
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
            text [Chika-san]
                 Oh it's you, \N[1]-chan!
            text [Chika-san]
                 Thank you so much, you saved Hiro-chan's life!
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Don't worry about it, obasan.
            text [Chika-san]
                 No, you don't understand...
            text [Chika-san]
                 I know it's not too much, but please take this as my 
                 gratitude! 
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.pop
            text [\N[1]]
                 Isn't this....
            text [\N[1]]
                 This dagger... it's made from glass?
            text [Chika-san]
                 Yes, it's my father's treasure...
                 He was an adventurer like you now.
            text [Chika-san]
                 You will find it useful in a certain situation.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.shake
            text [\N[1]]
                 But....
            text [Chika-san]
                 You totally deserve it, \N[1]-chan.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Guess I have no choice but to take it.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 Thank you, obasan.
            script $pose.clear
                   $pose = nil

            playME(volume=80, pitch=100, name="010-Item01")
            text Received
                 \c[6]Dagger of Alacrity +1

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 20" ],
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
            text [Chika-san]
                 Thank you again, \N[1]-chan.
            text [Chika-san]
                 You should have dinner with us sometime.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
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
            text [Chika-san]
                 Ah, \N[1]-chan.
                 Welcome.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 50" ],
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
            text [Chika-san]
                 Did you see the doctor?
                 How is it going?
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 It's.... good.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
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
            text [Chika-san]
                 Ah... Yuuki-chan.
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Good morning, Chika-san!
            text [Chika-san]
                 I'm glad to hear that you agreed, Yuuki-chan.
            text [Chika-san]
                 I'm gonna make the best dinner you've ever had!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Thanks, Chika-san.
                 I can't wait for it!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
            text [Chika-san]
                 You came to see the doctor?
            text [Chika-san]
                 He's a good person, I think.
                 He's so nice to me...
            text [\N[1]]
                 (.............)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 141" ],
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
            text [Chika-san]
                 Looking for someone?
          COMMANDS
        }
      ]
    },
    {
      "id" => 17,
      "name" => "EV017",
      "x" => 18,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(51) >= 15" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Bearded Man]
                 Here's your payment.
                 Thank you again!
            playSE(volume=80, pitch=100, name="056-Right02")

            text \c[6]Received 400G !!
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Thank you, uncle-san!
            script $pose.clear
                   $pose = nil
            text [Bearded Man]
                 You deserve it!
            text [Bearded Man]
                 With your help now I can afford a nice room in this 
                 Inn, plus their food are good too!
            text [Bearded Man]
                 I'm looking forward to working with you again!
            var(51) = 20
            switch(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 20" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            if var(1) >= 151
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Bearded Man]
                   Hey, wanna go again?
                   I need money now!
              script $pose = Pose.new("A","A","A04",1,0)
                     $pose.slide
              text [\N[1]]
                   You shouldn't throw away your money on alcohol like 
                   that...
              text [Bearded Man]
                   S- Sorry...!
                   I won't do that again!
              text [Bearded Man]
                   Please help me, I can't get deep into that cave alone!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D07",0,0)
                     $pose.pop
              text [\N[1]]
                   Geez...
              wait 15


                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A03",0,0)
                       $pose.pop
                text [\N[1]]
                     Okay, I'll help you this time.
                script $pose.clear
                       $pose = nil
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Bearded Man]
                     That's it!
                     Let's go, girl!
                screen_tone(0,0,0,0,duration=20)
                wait 20
                switch(52) = 0


                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A04",0,0)
                       $pose.pop
                text [\N[1]]
                     Not now, I have something else to do.
                script $pose.clear
                       $pose = nil
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Bearded Man]
                     W- Well, maybe later, okay!?

            else
              text [Bearded Man]
                   Come to see me later.
                   Now I'm enjoying it, heheh... *Ugh*
              text [\N[1]]
                   (He's wasting money on alcohol again...)
            end
          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 30" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Bearded Man]
                 *Uggh*
                 Hi there~ beautif- *Hic*
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.slide
            text [\N[1]]
                 (He's drunk again...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "Door",
      "x" => 4,
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
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="034-Switch03")
            wait 20
            text It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Door",
      "x" => 7,
      "y" => 14,
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
      "id" => 12,
      "name" => "Adventurer",
      "x" => 4,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "105-Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Adventurer]
                 This place is very good. It's so warm and neat.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "105-Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Adventurer]
                 I'm still here... for some reasons, you know...
          COMMANDS
        }
      ]
    },
    {
      "id" => 18,
      "name" => "EV018",
      "x" => 24,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 22,
      "y" => 3,
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
      "name" => "Door",
      "x" => 13,
      "y" => 14,
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
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="034-Switch03")
            wait 20
            text It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "Doctor",
      "x" => 22,
      "y" => 15,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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

            text [Doctor]
                 Can I have some private spac-
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Doctor]
                 Oh... a beautiful woman, what can I help?
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.shake
            text [\N[1]]
                 You are... a doctor?
            text [Doctor]
                 Yes, but not a regular one.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 .............
            text [Doctor]
                 I can demonstrate my special ability in examining so 
                 you can understand.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Sounds interesting, go ahead.
            script $pose.clear
                   $pose = nil
            text [Doctor]
                 Well... excuse me then.


            script $ev001 = Bust_Anime.new
                   $ev001.p("B","A05","A02",0,"A",0,0)
            switch(11) = 0
            script $ev001.massage_on("A","B",6)
            script $ev001.p("B","A05","A02",0,"B",0,0)
            text [\N[1]]
                 .............
            text [Doctor]
                 Hmm... hm...
            script $ev001.p("B","B01","A05",1,"B",0,0)
            text [\N[1]]
                 What are you doing!?
            text [Doctor]
                 Huh...?
                 Of course I'm examining your body.
            script $ev001.p("B","B05","A05",1,"B",0,0)
            text [\N[1]]
                 ...by groping my... chest!?
            text [Doctor]
                 Yeah, that's my special ability!
            text [Doctor]
                 I can tell if you are sick or not by groping your chest!
            script $ev001.p("B","B04","A04",1,"B",0,0)
            text [\N[1]]
                 That's enough...
            script $ev001.massage_on("A","B",6)
            script $ev001.p("B","C04","A06",1,"J",0,0)
            text [\N[1]]
                 Hyahh....
            text [Doctor]
                 This kind of examining must be required on your 
                 nipples too, I mean every part of your chest.
            script $ev001.p("B","C04","A06",1,"J",0,0)
            text [\N[1]]
                 St- stop it...
            text [Doctor]
                 I see...
                 Your body's current state is very good.
            script $ev001.p("B","B02","B07",1,"J",0,0)
            text [\N[1]]
                 You....
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil


            wait 20

            text [Doctor]
                 Ooopss!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Doctor]
                 What was that about!?
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 ...You're a perverted doctor.
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 0" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Doctor]
                 Let- let me try again...
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 Not a chance.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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


            moveroute()
              face left
            moveroute()
              opacity(255)
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Doctor]
                 ....A demon's curse?
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 Yes.
                 Do you know anything about it?
            text [Doctor]
                 Well....
            wait 20
            text [Doctor]
                 ....A little, I guess.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B03",0,0)
                   $pose.shake
            text [\N[1]]
                 Really!?
                 Can you help me lift the curse!?
            text [Doctor]
                 .......Actuallly, only that demon who casted it, can lift 
                 the curse for you.
            text [Doctor]
                 But there's always another way, you know.
            text [Doctor]
                 I can't be certainty until I get to know more about it 
                 first.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 How?
                 I already told you everything about it.
            text [Doctor]
                 Well.....
            wait 20
            text [Doctor]
                 I have my own technique of examining...
                 It's really useful in this case.
            text [\N[1]]
                 ..........?
            wait 20
            text [Doctor]
                 Hey little boy, can you wait outside?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Huh?
                 Why!?
            text [Doctor]
                 This process needs alot of concentration, you know.
            text [Doctor]
                 Be a good boy and wait outside, get it?
                 For your sister's sake.
            text [Seita]
                 ...........
            text [Seita]
                 Okay then....
            moveroute()
              unknown19
            movewait
            text [Seita]
                 Be strong, 'nee-chan!
            moveroute()
              face down
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Okay.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="024-Door01")
            moveroute()
              opacity(0)
            moveroute()
              opacity(255)
            moveroute()
              face right
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Doctor]
                 Okay then....

            text [Doctor]
                 First I need you to remove your jacket.
            script $pose = Pose.new("A","B","B01",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,1)
                   $pose.shake
            text [\N[1]]
                 What!?
            text [Doctor]
                 Calm down, every examination requires this step.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 .................
            text [\N[1]]
                 (He's right...
                 This is an examination after all.)
            script $pose.clear
                   $pose = nil
            wait 20
            script $hip = Hip.new("A2","A14",1,0)
                   $hip.pop
            text Slowly she took her jacket off right in front of his 
                 eyes. She could feel his glance ran over her chest.
            text [Doctor]
                 ............
            var(3) = 2
            script $hip.clear
                   $hip = nil
            script $hip = Hip.new("B","A12",1,0)
                   $hip.pop
            text [\N[1]]
                 (Stop staring at me like that...)
            text [Doctor]
                 *Gulp*
            script $hip.clear
                   $hip = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 ..........
                 Shall we begin?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Doctor]
                 Yes, of- of course!
            text [Doctor]
                 I- I'm gonna examine your chest...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",0,1)
                   $pose.shake
            text [\N[1]]
                 M- My chest!?
            text [Doctor]
                 Y-yes!!
                 It's a normal thing in an examination!!
            text [Doctor]
                 How can I tell if you don't let me touch your body!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 I'm sorry.... You're right.
            text [\N[1]]
                 Please go ahead.
            text [Doctor]
                 O-okay...
            script $pose.clear
                   $pose = nil

            script $ev001 = Bust_Anime.new
                   $ev001.p("A","C04","A02",1,"A",0,0)
            switch(11) = 0
            script $ev001.massage_on("A","A",6)
            script $ev001.p("A","C04","A02",1,"B",0,0)
            text The old man immediately grabbed both of her big 
                 breasts and groped them skillfully like he has done 
                 this many times before.
            text [\N[1]]
                 .............
            text [Doctor]
                 Hmm...
            text [Doctor]
                 ...............
            text [Doctor]
                 Do you feel anything?
            text [\N[1]]
                 N- no...
            text [Doctor]
                 Hmm... is that so...
            script $ev001.massage_on("B","A",5)
            text [Doctor]
                 How about this?
            script $ev001.p("A","C04","A04",1,"B",0,0)
            text [\N[1]]
                 Aaah..... It's...
            text [\N[1]]
                 ...still the same.
                 Haah....
            text [\N[1]]
                 (Why suddenly....
                 ...my chest became this sensitive...?)
            text [Doctor]
                 .....It's strange.
            script $ev001.p("A","C05","A04",1,"B",0,0)
            text [\N[1]]
                 Wh- what's wrong....?
            text [Doctor]
                 You said you feel nothing...
            text [Doctor]
                 But your nipples all turned so stiff.
            script $ev001.p("A","C01","A05",1,"B",0,0)
            text [\N[1]]
                 It- It's because....
            script $ev001.massage_on("B","A",6)
            script $ev001.p("A","C04","A06",1,"J",0,0)
            text [\N[1]]
                 Hyahh...!!!
            text In a sudden, he stopped the massage but 
                 continuously flicked her nipples instead, giving her a 
                 little shock through all over her body.
            text [\N[1]]
                 Why you....!!?
            text [Doctor]
                 I just want to make sure...
            text [Doctor]
                 Do you feel anything now?
            text [\N[1]]
                 Hahh.... Yes...
                 ...Just a little...
            text [\N[1]]
                 (It- It feels good...?)
            text [Doctor]
                 Are you sure?
                 You seem uncertainty.
            text [\N[1]]
                 I'm... sure....!!
            text [\N[1]]
                 Please... No more...!!
                 Haah....
            text [Doctor]
                 Let's move to the next step.
            script $ev001.Graphics_freeze
            script $ev001.massage_off
            script $ev001.p("B","C05","A05",1,"A",1,"B")
            text [Doctor]
                 First I need to take this off...
            text Not giving her enough time to react, he pulled her 
                 camisole down, completely revealing her bare 
                 breasts into his sight.
            text [\N[1]]
                 Wait-
            script $ev001.p("B","C04","A05",1,"A",2,0)
            script $ev001.shake_on
            text [\N[1]]
                 ....No!!
            text [Doctor]
                 Don't worry, 
                 I think we're gonna know the result soon.
            script $ev001.massage_on("B","A",5)
            script $ev001.p("B","C04","A06",1,"F",2,0)
            text [\N[1]]
                 Haahh...!!
                 P- Please be gentle!
            text [Doctor]
                 Answer me honestly, do you feel it now?
            text [\N[1]]
                 Hyaaah.... Y- yes....
                 I feel it now!
            text [Doctor]
                 ......How is it?
                 Does it feel good?
            text [\N[1]]
                 Uugh....
                 Yes...It- It feels good...!!!
            text [Doctor]
                 I see....
                 Just as I thought.
            text [Doctor]
                 You've been cursed by a lust demon...
            text [Doctor]
                 This kind of spell will make your body much more 
                 sensitive than before.
            text [Doctor]
                 It can twist your mind, increase your libido, forces 
                 you into horny state whenever it wants.
            text [Doctor]
                 Sometimes, even a slightly touch could make you 
                 tremble in pleasure...
            text [Doctor]
                 Right now you're under it's effect.
            text [Doctor]
                 ............
                 Do you feel something is coming?
            script $ev001.p("B","C05","A06",1,"F",2,0)
            text [\N[1]]
                 Y- yes... hyaah...
                 Something strange is coming!
            text [Doctor]
                 Good, I've got it now.
            script $ev001.massage_on("A","A",6)
            script $ev001.p("B","C04","A06",1,"G",2,0)
            text [Doctor]
                 Let's finish the examination.
            text [\N[1]]
                 Hyaaahh...!!!!
                 N- not my nipples again-
            text [Doctor]
                 Come on, I don't have all day.
            script $ev001.massage_on("B","A",5)
            text [Doctor]
                 Let's boost the speed up then!
            script $ev001.p("B","C04","B06",1,"G",2,0)
            text [\N[1]]
                 Hyuaah...!!!
                 It- It's coming!!
            text [\N[1]]
                 S- something is coming!!
            goto event 20
            text [\N[1]]
                 Ughh...!!
            goto event 20
            wait 5
            goto event 20
            text [\N[1]]
                 Fuaahh....!!
            text Unable to hold it any longer, she cummed in pleasure 
                 for the first time of her life as she let out many sexy 
                 moans that could be heard from outside of this room.
            switch(11) = 1
            script $ev001.Graphics_freeze
            script $ev001.p("B","C04","A05",1,"A",2,0)
            text [\N[1]]
                 Haah.... hyaah....
            text [Doctor]
                 Looks like this is the first time you climaxed.
            text [Doctor]
                 Now you know how the curse affect on you.
            text [\N[1]]
                 Haah....
                 Yes....
            text [\N[1]]
                 Haah...... Haah......
            script $ev001.clear
                   $ev001 = nil

            screen_tone(0,0,0,0,duration=20)

            wait 20
            moveroute()
              opacity(255)
            moveroute()
              opacity(0)
            movewait
            var(3) = 1
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Doctor]
                 I will need some time to study about this situation.
            text [Doctor]
                 I have a friend who's a high priest, I think he can help 
                 on this case.
            text [Doctor]
                 Please come back later.
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 ........Yes.
                 (I don't have any other choice, do I?)
            moveroute()
              unknown19
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Did it hurt, onee-chan!?
            text [Seita]
                 I heard you cried alot!
            text [Doctor]
                 ....................
            text [\N[1]]
                 ....................
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              opacity(0)
            movewait


            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 50
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 50" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Doctor]
                 I'm working on it, please be patient.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 125" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            playSE(volume=80, pitch=100, name="024-Door01")
            moveroute()
              opacity(255)
            movewait
            wait 25

            screen_tone(0,0,0,0,duration=0)

            wait 20
            text [Doctor]
                 So you've come.
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 Any news from your high priest friend?
            text [Doctor]
                 My high priest friend?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.pop
            text [\N[1]]
                 You've said...
            text [Doctor]
                 Ah- I remembered now!
                 Y- yeah, of course!!
            text [Doctor]
                 He told me he's working on it!
            text [Doctor]
                 ...And in the meantime, I should keep checking on 
                 your condition.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 I see...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 But... What do you mean by checking on my 
                 condition?
            text [Doctor]
                 Erm... I mean we should keep doing the examination!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,1)
                   $pose.shake
            text [\N[1]]
                 ....Again?
            text [Doctor]
                 Yeah, again!
                 Not for once but everytime you come here!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,1)
                   $pose.pop
            text [\N[1]]
                 (What should I do?)
            wait 10


              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D07",0,1)
                     $pose.pop
              text [\N[1]]
                   Well...
                   Okay.
              text [Doctor]
                   (Heheheh...)
              text [Doctor]
                   First, take your jacket off please.
              text [\N[1]]
                   ...........
              text [Doctor]
                   Don't get me wrong, it's a common step to begin an 
                   examination.
              text [\N[1]]
                   ...........
                   Fine.
              script $pose.clear
                     $pose = nil
              wait 10
              moveroute()
                speed(1)
                frequency(1)
              movewait
              screen_tone(0,0,0,0,duration=20)
              script $Ev003 = Ev003.new("A02","A14",1)
                     $Ev003.pop

              wait 20
              text "It's just the jacket" she thought while taking if off of 
                   her body. His eyes ran on every inch of her cleavage 
                   to make sure he wouldn't miss anything.
              text [Doctor]
                   (Oohh.... watching a pretty girl undressing, it's truly 
                   the best!!!)
              text [Doctor]
                   (This is why I decided to become a doctor!)
              wait 20
              script $Ev003.clear
                     $Ev003 = nil
              var(3) = 2
              script $Ev003 = Ev003.new("A03","A12",1)
                     $Ev003.pop
              text [\N[1]]
                   ..........
                   Is it okay now?
              text [Doctor]
                   Eh-hem.... take off your top too, please.
              script $Ev003.clear
                     $Ev003 = nil
              script $Ev003 = Ev003.new("A03","A11",1)
                     $Ev003.pop
              text [\N[1]]
                   Wh- what...!?
              text [\N[1]]
                   You want me to become completely... topless!?
              text [Doctor]
                   It- it's just for the medical process!!
              text [Doctor]
                   Your clothes will just get in the way and only make 
                   the process become harder!
              script $Ev003.clear
                     $Ev003 = nil
              script $Ev003 = Ev003.new("A03","A14",1)
                     $Ev003.pop
              text [\N[1]]
                   (Such a non-sense reason...)
              text [\N[1]]
                   (But I think I have no other choices...
                   I don't want to leave without any result.)
              text [\N[1]]
                   (Besides, I let him do it once before, it's no 
                   difference, right...?)
              wait 20
              text [Doctor]
                   .....So?
                   I don't have all day, please hurry up.
              script $Ev003.clear
                     $Ev003 = nil
              script $Ev003 = Ev003.new("A04","A12",1)
                     $Ev003.pop
              text [\N[1]]
                   Okay...!
                   I got it!
              text Despite not liking it, she had to take her camisole off 
                   for the 'examination'. He watched her very carefully 
                   while she was trying to avoid eye contact with him.
              script $Ev003.clear
                     $Ev003 = nil
              script $Ev003 = Ev003.new("A04","A15",1)
                     $Ev003.pop
              text [\N[1]]
                   (This is so embrassing....)
              text [\N[1]]
                   (The feeling is like the time I was with the little kids...)
              text [\N[1]]
                   (..........)
              script $Ev003.clear
                     $Ev003 = nil
              var(3) = 4
              script $Ev003 = Ev003.new("A05","A16",1)
                     $Ev003.pop
              text [\N[1]]
                   I- I'm done.
              text Her breasts was fully shown to the old man and he 
                   had to hide his emotion and acted like it was a 
                   common thing.
              text [Doctor]
                   Eh- Ehem...
                   Well, now please sit down.
              script $Ev003.clear
                     $Ev003 = nil
              script $ev001 = Bust_Anime.new
                     $ev001.p("A","C02","A02",1,"A",0,0)
              text [\N[1]]
                   (...........)
              script $ev001.p("A","C04","A02",1,"A",0,0)
              text [\N[1]]
                   ............
                   I'm ready.
              text [Doctor]
                   Excuse me then.
              switch(11) = 0
              wait 10
              script $ev001.Graphics_freeze
              script $ev001.massage_on("A","A",5)
              script $ev001.p("B","C04","A04",1,"C",0,0)
              text [\N[1]]
                   Ahh...!
              text [Doctor]
                   What's wrong?
              text [\N[1]]
                   N- Nothing...
              text [Doctor]
                   Your body... is reacting strongly.
              script $ev001.p("B","C03","A04",1,"C",0,0)
              text [\N[1]]
                   ...Hah...
                   What does it mean?
              text [Doctor]
                   I mean your nipples become erect quite so fast.
              text [Doctor]
                   Maybe you are getting used to this 'examination'.
                   *Grins*
              script $ev001.p("B","C04","A05",1,"C",0,0)
              text [\N[1]]
                   It- It's because of the demon's curse...!
              text [Doctor]
                   Yeah, perhaps.
                   *Grins*
              text He gave out a slightly grin while he kept focusing on 
                   massaging her breasts.
              script $ev001.massage_on("B","A",10)
              script $ev001.p("B","C04","A05",1,"G",0,0)
              text Suddenly, his fingers started to flick her nipples with 
                   an amazing speed.
              goto event 21
              script $ev001.p("B","C05","A06",1,"G",0,0)
              text [\N[1]]
                   Haa-aah...!!
              text [\N[1]]
                   N- Not my nipples...!
              text [Doctor]
                   Please bear with it a bit.
                   I'm just checking your body's reaction.
              goto event 21
              text [\N[1]]
                   Fua-aah...!!
                   B- But... 
              script $ev001.p("B","C04","A06",1,"G",0,0)
              text [\N[1]]
                   You... You're being too rough...!
              text [Doctor]
                   Sorry but this is my intention, it is necessary.
              text [\N[1]]
                   Ahh....!
                   Pl- please...!!
              script $ev001.massage_off
              text [Doctor]
                   Now I need you to answer me honestly.
              script $ev001.p("B","C02","A04",1,"G",0,0)
              text [\N[1]]
                   ...Haah... 
                   Oka- okay...!
              text [Doctor]
                   Does it hurt?
              script $ev001.p("B","C04","A04",1,"G",0,0)
              text [\N[1]]
                   Y- yes... it hurts... a little...!
              text [Doctor]
                   ...
                   And?
              script $ev001.massage_on("B","A",8)
              script $ev001.p("B","C04","A05",1,"G",0,0)
              goto event 21
              text [\N[1]]
                   ...Haah....!!
                   ....But...
              text [\N[1]]
                   ...It feels... good.
                   Ha-aah...!
              text [Doctor]
                   What feels good...?
                   Please be more specific. 
              script $ev001.p("B","C04","A06",1,"G",0,0)
              text [\N[1]]
                   ...Aah... M- My nipples...
                   My nipples feel good...!!
              text [Doctor]
                   ....Alright.
                   I'm glad that you're honest.
              text [Doctor]
                   Seems like you easily get excited just by getting your 
                   nipples teased.
              script $ev001.p("B","C02","A04",1,"G",0,0)
              text [\N[1]]
                   ...Aah...!
                   Is- Is it a bad thing...?!
              text [Doctor]
                   ...............
                   Of course not, it's good for your body.
              text [\N[1]]
                   ...R- really...?
              text [Doctor]
                   Yes, trust me.
              text [Doctor]
                   Because of the curse, your body will easily gets 
                   stimulated...
              text [Doctor]
                   Most of the time you will feel frustrated, it's not good.
              script $ev001.p("B","C04","A05",1,"G",0,0)
              text [\N[1]]
                   ...Haa-ah...!
                   ...So...what should I do...?
              text [Doctor]
                   Release it.
                   Just relax, feel it all and release it out from your body.
              text [Doctor]
                   I'll teach you how.
                   Are you feeling something?
              script $ev001.p("B","C04","A06",1,"G",0,0)
              text [\N[1]]
                   ...Aah...yes....!
                   Something... is building up...! 
              text [Doctor]
                   Now try to relax, clear your mind, loose your body...
              text [Doctor]
                   Slowly focus on the area where you're getting 
                   stimulated.
              text [\N[1]]
                   ......Haaah.......
              text [\N[1]]
                   I'm-  I'm feeling it....
              text [\N[1]]
                   ...The sensation... of my nipples... being teased by 
                   your fingers.
              text [Doctor]
                   Feels good, doesn't it?
              script $ev001.p("B","C04","B07",1,"G",0,0)
              text [\N[1]]
                   ...Y- yeah... it feels so good...
              text [Doctor]
                   Keep your eyes shut and sit tight.
              switch(11) = 1
              script $ev001.clear
                     $ev001 = nil
              wait 5
              script $ev013 = Ev013.new
                     $ev013.pop("A","B02",1,1,1,1)
              text The old man stopped teasing her nipples, he leaned 
                   forward, got his face close to her bare breasts as 
                   he's going to suck them.
              text [\N[1]]
                   Haah...
                   I can feel something is breathin-
              switch(14) = 0
              script $ev013.pop("D","B03",1,1,1,1)
              script $ev013.massage_on("D",3)
              text [\N[1]]
                   Fuwaah...!
              text Like an lion chasing its prey, he reached out and 
                   grabbed her breast with his mouth then he sucked it 
                   like a little baby.
              script $ev013.pop("D","A03",1,1,1,1)
              text [\N[1]]
                   W- what are  you....
                   ...Haah....!
              text Being overwhelmed by the pleasure feeling, she 
                   couldn't finish the line. Her upper body became numb 
                   for a moment.
              script $ev013.pop("D","B03",1,1,1,1)
              text [\N[1]]
                   (Haah.... it feels so good... when he's sucking 
                   my breast...!!)
              text [\N[1]]
                   (It feels... even better than... before...!)
              text [\N[1]]
                   (Hah.... something...
                   Something is coming!!)
              text Her body was trembling by pleasure as she's so 
                   close to climax. The room echoed with their dirty 
                   sounds...
              text [\N[1]]
                   (Uugh...! I can't hold it anymore...!!)
              text [\N[1]]
                   (I must... release it out... this built-up feeling...!!)
              goto event 21
              text [\N[1]]
                   (I- I'm gonna... Haah... Come!!)
              goto event 21
              text [\N[1]]
                   HAaaH...!!
                   I'm- I'M COMINGG...!!!!
              goto event 21
              wait 5
              goto event 21
              wait 15
              goto event 21
              text [\N[1]]
                   FUA-aahh..!!
                   Haa...ahh...!!!
              switch(14) = 1
              script $ev013.massage_off
              script $ev013.pop("A","B03",0,2,2,1)
              text Pushed by a new pleasure, she couldn't hold it and 
                   cummed so hard while letting out loud moans that 
                   could be heard easily by someone outside.
              text [Doctor]
                   Now, for the next step I need you to-
              script $ev013.clear
                     $ev013 = nil

              screen_tone(0,0,0,0,duration=5)
              moveroute()
                speed(3)
                frequency(5)
              movewait
              moveroute()
                face down
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   O- Onee-chan!!?
              text [Seita]
                   Are you alright!!?
              text [Doctor]
                   (Holy crap...!)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Doctor]
                   Y- yeah!!
                   She's still alright!!
              text [Seita]
                   Really!?
              text [Doctor]
                   Of course!! 
                   Don't worry, little boy!
              text [Seita]
                   ............
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   I'm gonna come in!!
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Doctor]
                   This little brat...!!
              text [Doctor]
                   Hey, hurry and get dressed!
                   I don't want him to get any wrong idea!
              screen_tone(0,0,0,0,duration=20)
              wait 20
              playSE(volume=80, pitch=100, name="024-Door01")
              moveroute()
                graphic(name="seita01", 0, 4, 0)
              movewait

              var(3) = 1
              playSE(volume=80, pitch=100, name="undress")
              wait 50

              screen_tone(0,0,0,0,duration=0)

              wait 25
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Ah, 'nee-chan!!
                   How was the examination!?
              script $pose = Pose.new("A","B","A06",1,1)
                     $pose.slide
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A06",1,1)
                     $pose.shake
              text [\N[1]]
                   It was... good.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Really!?
                   Good for you!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A01",1,1)
                     $pose.pop
              text [\N[1]]
                   Thank you, Sei-kun.
              text [Seita]
                   Now can I go to play with my friends?!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A05",1,1)
                     $pose.pop
              text [\N[1]]
                   Sure.
                   But where are you guys gonna play?
              text [Seita]
                   We're gonna play at the lake!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D05",0,0)
                     $pose.pop
              text [\N[1]]
                   You mean Green Lake?
              text [Seita]
                   Yeah, 'nee-chan!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D02",0,0)
                     $pose.pop
              text [\N[1]]
                   Hmm.... even though the water level is pretty safe 
                   there, but if you guys aren't careful...
              text [Seita]
                   Please, 'nee-chan! Please!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D05",0,0)
                     $pose.pop
              text [\N[1]]
                   Well... I guess I have no other choices.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D06",0,0)
                     $pose.pop
              text [\N[1]]
                   I'll come along, just to sure you guys will be safe.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   It's even better!
              text [Seita]
                   You can play with us too, yay!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A06",0,0)
                     $pose.pop
              text [\N[1]]
                   Yeah, it'd be fun.
              text [Seita]
                   Let's go to the lake, 'nee-chan!
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 20


              moveroute()
                opacity(0)
              movewait
              var(1) = 130
              playSE(volume=80, pitch=100, name="056-Right02")
              text \c[6]Seita has joined the party!
              screen_tone(0,0,0,0,duration=20)
              wait 20

              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E02",0,1)
                     $pose.pop
              text [\N[1]]
                   No, not this time!
              text [Doctor]
                   Excuse me?
                   You don't want to be cured?
              text [Doctor]
                   It's a very common medical proces-
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E06",0,1)
                     $pose.pop
              text [\N[1]]
                   Whatever, I'm leaving!
              text [Doctor]
                   O- okay...
                   Next time then, please think about it.
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 20
              moveroute()
                speed(3)
                frequency(5)
              movewait
              playSE(volume=80, pitch=100, name="024-Door01")
              moveroute()
                graphic(name="seita01", 0, 4, 0)
              movewait

              var(3) = 1
              playSE(volume=80, pitch=100, name="undress")
              wait 50

              screen_tone(0,0,0,0,duration=0)

              wait 25
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Ah, 'nee-chan!!
                   How was the examination!?
              script $pose = Pose.new("A","B","A06",1,1)
                     $pose.slide
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A06",1,1)
                     $pose.shake
              text [\N[1]]
                   It was... good.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Really!?
                   Good for you!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A01",0,0)
                     $pose.pop
              text [\N[1]]
                   Thank you, Sei-kun.
              text [Seita]
                   Now can I go to play with my friends?!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A05",0,0)
                     $pose.pop
              text [\N[1]]
                   Sure.
                   But where are you guys gonna play?
              text [Seita]
                   We're gonna play at the lake!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D05",0,0)
                     $pose.pop
              text [\N[1]]
                   You mean Green Lake?
              text [Seita]
                   Yeah, 'nee-chan!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D02",0,0)
                     $pose.pop
              text [\N[1]]
                   Hmm.... even though the water level is pretty safe 
                   there, but if you guys aren't careful...
              text [Seita]
                   Please, 'nee-chan! Please!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D05",0,0)
                     $pose.pop
              text [\N[1]]
                   Well... I guess I have no other choices.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D06",0,0)
                     $pose.pop
              text [\N[1]]
                   I'll come along, just to sure you guys will be safe.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   It's even better!
              text [Seita]
                   You can play with us too, yay!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","A06",0,0)
                     $pose.pop
              text [\N[1]]
                   Yeah, it'd be fun.
              text [Seita]
                   Let's go to the lake, 'nee-chan!
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 20


              moveroute()
                opacity(0)
              movewait
              var(1) = 130
              playSE(volume=80, pitch=100, name="056-Right02")
              text \c[6]Seita has joined the party!
              screen_tone(0,0,0,0,duration=20)
              wait 20

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "112-Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Doctor]
                 Hmm?
                 You need another examination?
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 (............)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 19,
      "name" => "Adventurer",
      "x" => 13,
      "y" => 3,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "030-Cleric06", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Young Girl]
                 Don't wake me up, I'm being a lazy-lady!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
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
      "x" => 23,
      "y" => 3,
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
      "name" => "Door",
      "x" => 20,
      "y" => 14,
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
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="034-Switch03")
            wait 20
            text It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "Adventurer",
      "x" => 11,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "030-Cleric06", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Young Girl]
                 Be careful with that old man who called himself a 
                 doctor.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "030-Cleric06", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Young Girl]
                 That perverted doctor... you let him examine you?
            script $pose = Pose.new("A","B","D07",1,1)
                   $pose.slide
            text [N\[1]]
                 ...Yes.
            text [Young Girl]
                 (...............)
            script $pose.clear
                   $pose = nil
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 2,
      "y" => 19,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            screen_tone(0,0,0,0,duration=20)
            wait 20


            wait 20
            goto event 6
            text [Seita]
                 .............
            text [Seita]
                 Do you feel hungry, 'nee-chan?
            text [\N[1]]
                 Y-yeah...
                 Let's head back home first.
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="013-Move01")
            wait 20

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 55" ],
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
    },
    {
      "id" => 20,
      "name" => "EV020",
      "x" => 16,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(51) >= 20" ],
          "graphic" => { "character" => "", "tile" => 832, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "Door",
      "x" => 18,
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
        },
        {
          "conditions" => [ "switch(44)" ],
          "graphic" => { "character" => "170-Door01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="034-Switch03")
            wait 20
            text It's locked.
          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "Little Kid",
      "x" => 17,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.slide
            text [Little kid]
                 ............
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Surprise!!
            playSE(volume=60, pitch=100, name="017-Jump03")
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 !!!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",0,1)
                   $pose.shake
            text [\N[1]]
                 You brat...!!
            text [Little kid]
                 Hahahahah~
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Little kid]
                 (Damn, she's with her brother.)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            script $pose = Pose.new("A","A","E02",1,0)
                   $pose.slide
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Oops.....
            text [Little kid]
                 (Her face looks scary...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown11
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Little kid]
                 (Damn, she's with her brother.)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 135" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Take this, big-ass-san!
            playSE(volume=60, pitch=100, name="017-Jump03")
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 !!!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,1)
                   $pose.pop
            text [\N[1]]
                 You again...!
            script $pose.clear
                   $pose = nil
            text [Little kid]
                 Runnn!!!
          COMMANDS
        },
        {
          "conditions" => [ "switch(1)", "var(1) >= 135" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Take this, big-ass-san!
            playSE(volume=60, pitch=100, name="017-Jump03")
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 !!!?
            text [Little kid]
                 ...What the!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,1)
                   $pose.pop
            text [\N[1]]
                 You again...!
            script $pose.clear
                   $pose = nil
            text [Little kid]
                 (She doesn't wear panties!!)
          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "EV010Seita",
      "x" => 21,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
        }
      ]
    },
    {
      "id" => 21,
      "name" => "EV021",
      "x" => 20,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(51) >= 20" ],
          "graphic" => { "character" => "", "tile" => 832, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    }
  ]
}
