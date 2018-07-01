map = {
  "tileset" => 54,
  "width" => 20,
  "height" => 20,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 2,
      "y" => 18,
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
          "conditions" => [ "var(1) >= 120" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 122" ],
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
      "x" => 7,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 10" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            screen_tone(0,0,0,0,duration=35)
            wait 35
            text [Seita]
                 ........................
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.shake
            text [\N[1]]
                 ....Are you hurt somewhere?
            wait 20
            text [Seita]
                 .......No, I'm fine.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D04",1,0)
                   $pose.shake
            text [\N[1]]
                 ....You should be careful from now on, don't play too 
                 far away from the village.
            wait 30
            text [Seita]
                 ..................
            text [Seita]
                 ....I'm sorry.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",0,0)
                   $pose.shake
            text [\N[1]]
                 ...............
            text [\N[1]]
                 What is it?
                 You look upset...
            wait 20
            moveroute()
              face left
            movewait
            wait 30
            text [Seita]
                 ..........
                 Do I look like daddy?
            text [\N[1]]
                 ...............
            text [Seita]
                 You always tell me that daddy was a brave and 
                 strong....
            moveroute()
              face right
            movewait
            text [Seita]
                 But why I'm so weak and scared, always being 
                 a laughing stock to them...!!?
            wait 20
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D05",0,0)
                   $pose.pop
            text [\N[1]]
                 .......It's not like that.
            text [\N[1]]
                 You truly are his child, just like me.
            wait 20
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D01",0,0)
                   $pose.pop
            text [\N[1]]
                 It's just... you're still too young, too innocent.
            text [\N[1]]
                 And that's the way a little kid should be.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D02",0,0)
                   $pose.pop
            text [\N[1]]
                 I believe one day, you will become strong and brave 
                 like our mom and dad.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D05",0,0)
                   $pose.pop
            text [\N[1]]
                 You will become a warrior, protect this village and its 
                 people like our dad has done!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Really!?
            text [Seita]
                 I will become a warrior, just like daddy!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 Yeah, I believe that you will.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yesss!!!
            text [Seita]
                 Thank you nee-chan!!
            text [Seita]
                 I will try my best to be strong as you first!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.shake
            text [\N[1]]
                 That's the spirit.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 But don't forget to change your pants, silly.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Aww... sorry!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face down
            movewait
            wait 20
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.shake
            text [\N[1]]
                 Now I have to go to the mayor's house and tell him 
                 what happened.
            text [\N[1]]
                 His house is located in the EAST of the village...
                 I should be hurry.
            script $pose.clear
                   $pose = nil
            playSE(volume=80, pitch=100, name="056-Right02")
            text \c[6]The mayor's house is located on a hill, seperately 
                 from the village. You can reach there by going to the 
                 EAST (right side of screen) and looking for a way up.
            var(1) = 15
            switch(41) = 1

            moveroute()
              unknown45
            screen_tone(0,0,0,0,duration=10)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 15" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Seita]
                 I will become stronger, nee-chan!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 25" ],
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
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face right
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Seita]
                 You're going on a mission!?
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Seita]
                 I wanna go too, take me with you!!
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.shake
            text [\N[1]]
                 No! It's too dangerous for you.
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Seita]
                 But you want me to be stronger, right!?
            text [Seita]
                 This is a chance for me to prove that-
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,0)
                   $pose.shake
            text [\N[1]]
                 I SAID NO!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.pop
            text [\N[1]]
                 You're still a kid, I won't take a risk by letting you go 
                 out there!
            wait 20
            moveroute()
              face left
            movewait
            text [Seita]
                 ................
            text [Seita]
                 ....but what if anything happens to you...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","E02",0,0)
                   $pose.pop
            text [\N[1]]
                 ...............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D01",0,0)
                   $pose.pop
            text [\N[1]]
                 Don't worry, I will be fine.
            text [\N[1]]
                 I can take care of myself, alright?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D05",0,0)
                   $pose.pop
            text [\N[1]]
                 I promise I will come back to you as soon as possible.
                 Agree?
            wait 20
            moveroute()
              face right
            movewait
            text [Seita]
                 ................
            text [Seita]
                 ....okay.
                 You promised.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Good boy.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 I will return in the evening, don't worry.
            text [Seita]
                 Please be careful.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 I got it.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              unknown1
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 30
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 30" ],
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
            text [Seita]
                 I will behave, nee-chan.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
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
          "conditions" => [ "var(1) >= 55" ],
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
            text [Seita]
                 I wonder if it's really safe out there... to play with my 
                 friends.
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 We should wait for a while, just to be sure.
            script $pose.clear
                   $pose = nil
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
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 30
            screen_tone(0,0,0,0,duration=20)
            text [\N[1]]
                 ...............
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 What's wrong Sei-chan?
                 You look worried...
            text [Seita]
                 It's just... I feel like you're suddenly being too nice 
                 to them...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 You mean... it's a bad thing?
            text [\N[1]]
                 They came here to study with you, right?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 Don't act silly like that, Sei-chan.
            text [Seita]
                 ....you're right...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D01",0,0)
                   $pose.pop
            text [\N[1]]
                 Come on, you know I'm being nice to them just 
                 because they are your friends.
            text [\N[1]]
                 Don't let a small thing like that bother you.
            script $pose.clear
                   $pose = nil
            text [Seita]
                 Y-yeah...
                 I'm sorry...
            text [Seita]
                 ................
            text [\N[1]]
                 ....................
            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 70
            moveroute()
              opacity(0)
            movewait

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 70" ],
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
          "conditions" => [ "var(1) >= 85" ],
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
            text [Seita]
                 ..............
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 .........
                 I'm sorry about earlier.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 It- it's alright...!!
            text [Seita]
                 Please be careful next time, 'nee-chan.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Anyway... who was that?
                 I heard someone's knocking the door.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Aah.... It was Togo-san!
            text [Seita]
                 Hiro-kun's father?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 Yeah, he invited us to dinner with his family tonight!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Woaa.... Isn't it great!?
            text [Seita]
                 Hiro-kun's house is very big and nice!!
            text [Seita]
                 His mom's cooking is very good too!!
            text [\N[1]]
                 And you're gonna eat alot?
            text [Seita]
                 Of course I'm gonna eat alot!!
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Haha...!! Okay, then.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 But you must behave, got it?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, 'nee-chan!
            wait 20
            text [Seita]
                 ................
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 Hmm....?
                 What's that?
            text [Seita]
                 Um.... about earlier... when you greeted Togo-san at 
                 the door...
            text [Seita]
                 He did see you in... that kind of clothes, right...?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 ...............
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 S-sorry!!
                 I mean... I just want to know....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 Don't worry, he's a good person...
            text [\N[1]]
                 ...and all the talking was quick though.
            text [Seita]
                 Oh... is that so...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D05",0,0)
                   $pose.slide
            text [\N[1]]
                 Hey, it won't happen again, I promise!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, onee-chan!!
            playSE(volume=80, pitch=100, name="056-Right02")
            text \c[6]You can sleep or rest on your own bed to skip 
                 the time. In certain cases, it will help you progress 
                 the story.
            text \c[6]For now, you can go outside to explore before 
                 returning to it.
            var(1) = 90
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 It's evening, right!?
            text [Seita]
                 Don't forget it, 'nee-chan!
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Of course!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 95" ],
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
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Ready to go?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Let's go, 'nee-chan!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 100
            playSE(volume=80, pitch=100, name="056-Right02")
            text \c[6]Seita joined the party!

            screen_tone(0,0,0,0,duration=20)
            wait 20
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 110" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            wait 35
            screen_tone(0,0,0,0,duration=30)
            wait 30
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Why is your face red? You got a fever!?
            script $pose = Pose.new("A","B","B02",0,1)
                   $pose.slide
            text [\N[1]]
                 My face is... red?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yeah, it looks red, like you're having a fever or 
                 something!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 Y- Yeah... maybe.. a little bit...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",0,1)
                   $pose.pop
            text [\N[1]]
                 But don't get worried too much, I'm just feeling tired a 
                 little.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Do you have a headache?! Muscle aches? 
                 Sweating?!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",0,1)
                   $pose.pop
            text [\N[1]]
                 There there... I'm fine... I just need some rest.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D01",0,1)
                   $pose.pop
            text [\N[1]]
                 I'll recover in just a night, don't worry.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Well... if you need something just call me, I'll be right 
                 here!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","D01",0,1)
                   $pose.pop
            text [\N[1]]
                 You're such a good boy!
            text [Seita]
                 Heheh....
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Good night, 'nee-chan!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,1)
                   $pose.shake
            text [\N[1]]
                 Okay, good night!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 40
            playSE(volume=80, pitch=100, name="024-Door01")
            wait 30
            moveroute()
              opacity(0)

            wait 20
            var(1) = 115
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 115" ],
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
          "conditions" => [ "var(1) >= 120" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Good morning, 'nee-chan!
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Morning, Sei-chan!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 What are we gonna do today!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 Erm... Let me see...
            wait 10


              script $pose.clear
                     $pose = nil
              text [Seita]
                   Let's go then!
                   I hope he has found the cure for you!
              wait 10
              screen_tone(0,0,0,0,duration=20)
              wait 20

              var(1) = 125

              switch(51) = 0
              text [Seita]
                   Then I'll be waiting here!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","A01",0,0)
                     $pose.pop
              text [\N[1]]
                   Okay, I'll be back soon.
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 45

              var(3) = 8

              wait 30

              screen_tone(0,0,0,0,duration=0)

              wait 50
              playSE(volume=80, pitch=100, name="024-Door01")

              wait 15
              moveroute()
                opacity(255)
                unknown15
                speed(2)
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                unknown3
                unknown3

              movewait
              text [Takashi]
                   Sei-kun are you hom-
              text [Takashi]
                   Oh wait...
              moveroute()
                unknown19
              movewait
              text [Takashi]
                   (There's sound from the bathroom.)
              moveroute()
                face right
              movewait
              text [Takashi]
                   (..............)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   (\N[1]-san!!!)
              text [Takashi]
                   (It must be her!!
                   She's taking shower I bet!!)
              moveroute()
                unknown19
              movewait
              text [Takashi]
                   (Come on, just a quick look!!)
              moveroute()
                unknown2
                transfer player
              movewait
              wait 20
              moveroute()
                graphic(name="Indoors", 0, 6, 1)
                playSE(volume=70, pitch=90, name="028-Door05")
              movewait

              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   (Whoaaa....!!!!)
              text [Takashi]
                   (She's indeed taking a shower!!)
              screen_tone(0,0,0,0,duration=20)
              script $Ev014 = Ev014.new("A01",0)
                     $Ev014.pop
              wait 20
              text The sexy body of the girl which is dream of every 
                   boy in the village was partly shown through the door 
                   crack...
              text Her body shape and curves hit the boy's eyes as 
                   he was being spechless for a long time.
              text He couldn't take his eyes off of her private places. 
                   First time seeing a girl naked was too much 
                   for him...
              text [Takashi]
                   (Haaa......)
              text [Takashi]
                   (\N[1]-san... She's so gorgeous...)
              text [Takashi]
                   (Her naked body is so different than I imagined...)
              text [Takashi]
                   (Look at her breasts and her ass...!)
              text [Takashi]
                   (They're so big, big and perfect!!)
              text [Takashi]
                   (So this is the body which that brat had seen 
                   everyday...?!)
              text [Takashi]
                   (I'm so jealous of him!)
              text [Takashi]
                   (............)
              text [Takashi]
                   (Wish I can touch them someday...)
              wait 25
              screen_tone(0,0,0,0,duration=20)

              wait 20
              script $Ev014.clear
                     $Ev014 = nil
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Taka-kun? Are you there?
              moveroute()
                face right
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   (.........!!!!)
              text [Seita]
                   Why didn't you come over here?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   Ah- Yeah.... I'm coming!
              moveroute()
                speed(2)
                unknown3
                unknown3
                unknown3
                unknown3
                transfer player
                transfer player
                transfer player
              movewait
              wait 10
              moveroute()
                speed(4)
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   H- Hi!
              text [Seita]
                   I just heard your voice but didn't see your face.
              text [Takashi]
                   Oh, I just came in... I thought you aren't home so...
              text [Seita]
                   ..............
              text [Seita]
                   Really....?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   Of- Of course!!
                   Why would I even lie to you...!?
              text [Seita]
                   Okay.....
                   So what do you come here for?
              text [Takashi]
                   Ah- Yes! We're gonna play at the Green Lake,
                   west of the village!
              text [Takashi]
                   Do you want to come along?
              text [Seita]
                   But I'm gonna go out with my sister right now, she's 
                   taking a shower and will come out in a minute...
              text [Takashi]
                   Yeah I already saw it.
              text [Seita]
                   What...?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   N- No, I mean I can hear it, sound from the bath room!!
              text [Takashi]
                   Y- You can hear it too, right...!?
              text [Seita]
                   Ah- yeah...
                   You're right.
              text [Takashi]
                   W- well...
                   So you wanna come or not?
              text [Seita]
                   .....You go first, I'll be there soon!
                   It will be quick though!!
              text [Takashi]
                   Hmm....
                   Okay then.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Great!!
              text [Takashi]
                   Then, see you later!
              screen_tone(0,0,0,0,duration=20)
              wait 45
              playSE(volume=80, pitch=100, name="024-Door01")
              moveroute()
                opacity(0)
              movewait
              var(1) = 122
              moveroute()
                graphic(name="Indoors", 0, 2, 1)
              movewait

              var(3) = 1
              screen_tone(0,0,0,0,duration=20)
              wait 20

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 122" ],
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
            text [Seita]
                 Ah, 'nee-chan!
                 Can we go now?
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.slide
            text [\N[1]]
                 Um... yeah.
                 But... someone was here?
            text [Seita]
                 Yes, 'nee-chan.
                 It was Taka-kun!
            text [Seita]
                 He came to ask me out to play!
            text [\N[1]]
                 Oh... I see.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (So it was him who peeped through the bath room 
                 door...?)
            text [\N[1]]
                 (I see the door was cracked open...)
            text [\N[1]]
                 (He saw it all... I guess.)
            text [\N[1]]
                 (I can't blame, he's just a kid...)
            text [Seita]
                 'Nee-chan?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 Ah- yes...!?
            text [Seita]
                 Can we go now?
                 I want to play with my friends, I don't wanna be late!
            text [\N[1]]
                 Oh... Okay.
                 Let's go.
            script $pose.clear
                   $pose = nil
            text [Seita]
                 Let's go!
                 I hope he has found the cure for you!
            wait 10
            screen_tone(0,0,0,0,duration=25)
            wait 25
            var(1) = 125

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
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Morning, 'nee-chan!
            text [Seita]
                 Let's work hard today!
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 155" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Where are you going, 'nee-chan?
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.slide
            text [\N[1]]
                 (I shouldn't tell him or he will beg me to bring him 
                 along...)
            text [Seita]
                 'Nee-chan?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.shake
            text [\N[1]]
                 I- I'm going to help farmers extinguishing some bugs.
                 Hahah...
            text [Seita]
                 Really?
                 That sounds boring...
            text [\N[1]]
                 Y- Yeah!
                 And I won't be home for couple of days so...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 What?
                 Then bring me along!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 B- But don't you hate bugs?
            text [Seita]
                 Oh- right...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Then please come home soon, 'nee-chan!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A06",1,0)
                   $pose.pop
            text [\N[1]]
                 Alright, don't worry.
                 Don't forget to sleep early and do your homework.
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, I'll be a good boy!

          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "switch(A)", "var(1) >= 155" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Don't worry about me,
                 I'll be a good boy!
          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "EV011",
      "x" => 18,
      "y" => 14,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 70" ],
          "graphic" => { "character" => "seita_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 75" ],
          "graphic" => { "character" => "seita_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 He's still sleeping...
            script $pose.clear
                   $pose = nil
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
        },
        {
          "conditions" => [ "var(1) >= 115" ],
          "graphic" => { "character" => "seita_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 120" ],
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
          "trigger" => 0,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (This is where Sei-chan sleeps.)
            text [\N[1]]
                 (He always keeps it clean.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
          "graphic" => { "character" => "seita_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (He's sleeping... must be tired from studying.)
            script $pose.clear
                   $pose = nil
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
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (This is where Sei-chan sleeps.)
            text [\N[1]]
                 (He always keeps it clean.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(44)", "var(1) >= 151" ],
          "graphic" => { "character" => "seita_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (He's sleeping... must be tired from studying.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 17,
      "name" => "EV017",
      "x" => 0,
      "y" => 0,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 154" ],
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
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 (Phew... I finally got home.)
            text [\N[1]]
                 (Have to change my panties right away.)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            goto event 16
            playSE(volume=80, pitch=100, name="undress")
            var(1) = 155
            screen_tone(0,0,0,0,duration=20)

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 154" ],
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
      "name" => "EV006-Seita",
      "x" => 6,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 50" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 I'm so full, 'nee-chan!
            text [\N[1]]
                 ..............
            text [Seita]
                 Onee-chan...?
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.shake
            text [\N[1]]
                 ...Eh?
            text [Seita]
                 You are spacing out.
                 ...Are you not feeling well?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 No- I'm fine!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D01",0,0)
                   $pose.pop
            text [\N[1]]
                 I just..... worry a little bit.
            text [Seita]
                 ....'nee-chan...
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Don't worry, 'nee-chan!!
                 Whatever happens, I will take care of you!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 ........
                 Thank you, Sei-chan.
            text [\N[1]]
                 Your sister feels so relieved now!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [\N[1]]
                 I'm also full, let's clean this up!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yess!!
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=70, pitch=100, name="014-Move02")
            var(1) = 55

            wait 30
            screen_tone(0,0,0,0,duration=20)
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
        },
        {
          "conditions" => [ "var(1) >= 139" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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

            wait 80

            screen_tone(0,0,0,0,duration=0)


            wait 40
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 I'm done eating, 'nee-chan.
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Me too.
            text [Seita]
                 What are you gonna do now,  'nee-chan?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 I don't know...
                 Maybe I'll walk around a bit...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Can I go too!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",0,0)
                   $pose.pop
            text [\N[1]]
                 You've played alot today, stay home and get some 
                 rest.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,0)
                   $pose.pop
            text [\N[1]]
                 Also, don't you have homeworks to do?
            script $pose.clear
                   $pose = nil
            text [Seita]
                 Aaw...
                 Yes, 'nee-chan.
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 140
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Seita]
                 Hmm...
                 I'm doing my homework.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 141" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Seita]
                 What is it, 'nee-chan?
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.slide
            text [\N[1]]
                 Erm... nothing.
            text [\N[1]]
                 (Looks like he isn't here...)
            script $pose.clear
                   $pose = nil
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 151" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Seita]
                 Hmm...
                 I'm doing my homework.
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 155" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Where are you going, 'nee-chan?
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.slide
            text [\N[1]]
                 (I shouldn't tell him or he will beg me to bring him 
                 along...)
            text [Seita]
                 'Nee-chan?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.shake
            text [\N[1]]
                 I- I'm going to help farmers extinguishing some bugs.
                 Hahah...
            text [Seita]
                 Really?
                 That sounds boring...
            text [\N[1]]
                 Y- Yeah!
                 And I won't be home for couple of days so...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 What?
                 Then bring me along!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 B- But don't you hate bugs?
            text [Seita]
                 Oh- right...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Then please come home soon, 'nee-chan!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A06",1,0)
                   $pose.pop
            text [\N[1]]
                 Alright, don't worry.
                 Don't forget to sleep early and do your homework.
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, I'll be a good boy!

          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "switch(A)", "var(1) >= 155" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Don't worry about me,
                 I'll be a good boy!
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Door",
      "x" => 3,
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
      "id" => 12,
      "name" => "EV012",
      "x" => 2,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 80" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              speed(2)
              transfer player
              transfer player
              transfer player
              transfer player
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Wh- what are you wearing!!?
            text [\N[1]]
                 ....What!?
            text [Seita]
                 Y- you.... you almost naked...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 ...And you just came ouside in that state!!
            text [\N[1]]
                 (..........!!!)
            screen_tone(0,0,0,0,duration=20)
            text [\N[1]]
                 ....Excuse me!!!
            playSE(volume=80, pitch=100, name="017-Jump03")
            wait 10
            playSE(volume=80, pitch=100, name="024-Door01")
            var(3) = 1

            wait 30
            text [\N[1]]
                 (..........)
            text [\N[1]]
                 (How careless I am....)
            text [\N[1]]
                 (Togo-san... He must saw it all.
                 That's why he acted so strange...)
            text [\N[1]]
                 (It was... so embrassing...)
            wait 20
            playSE(volume=80, pitch=100, name="024-Door01")
            var(1) = 85
            moveroute()
              speed(4)
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 85" ],
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
      "x" => 9,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            screen_tone(0,0,0,0,duration=30)
            moveroute()
              speed(2)
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown15
              unknown19
            movewait
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 I'm glad you guys came to study wtih Sei-chan.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 No prob, we will come here more often!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 To help your brother studying, that's what he means!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Well well...
                 Isn't it a good thing, Sei-chan?
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Y... Yes!!
            text [Seita]
                 (.............
                 Actually, this is their idea.)
            text [Seita]
                 (Out of sudden, they asked me to study together at 
                 my home....)
            text .................
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Alright, let's do it!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Please teach us, Yuuki-san!!
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.shake
            text [\N[1]]
                 Ah-
                 Yes...!!
            script $pose.clear
                   $pose = nil
            wait 20
            text ...................
            wait 20
            text .................................
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 50

            screen_tone(0,0,0,0,duration=20)
            wait 30
            text [Seita]
                 Uhm... sis-
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Yuuki-san, can you help me with this!?
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [\N[1]]
                 O- Okay...!!
            moveroute()
              face down
              unknown1
              unknown1
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown2
              unknown19
            movewait
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 Okay, which one you don't understand?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Here... and here...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 Uhm... it's pretty easy, you just need to....
            script $pose.clear
                   $pose = nil
            wait 20
            text [\N[1]]
                 .....................
            wait 20
            text [\N[1]]
                 ..................................
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Me too, Yuuki-san!!
                 I need your help!
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.shake
            text [\N[1]]
                 Oh... Okay!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","B02",1,0)
                   $pose.pop
            text [\N[1]]
                 ...Which one then?!
            script $pose.clear
                   $pose = nil
            wait 20
            text [\N[1]]
                 ..................
            wait 20
            text [\N[1]]
                 ..........................
            wait 20
            text [Seita]
                 .....................
            screen_tone(0,0,0,0,duration=20)
            wait 40
            moveroute()
              unknown19
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 30
            script $pose = Pose.new("A","A","A06",1,0)
                   $pose.slide
            text [\N[1]]
                 Phew..... do you guys get it?
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
                 Yes!!
            moveroute()
              face right
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 You're sweating, Yuuki-san...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 It's hot in here, I guess...
            wait 20
            text [Seita]
                 .....................
            text [Seita]
                 (Because she's out of breath explaining to you, 
                 idiots...)
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Um... You should catch a breath by going outside,
                 'nee-chan!
            text [Seita]
                 I think we will just be fine-
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Maybe.... maybe you should take your jacket off?!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 E- Exactly!!
                 You just need to take it off, we're inside anyway!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            playME(volume=100, pitch=100, name="016-Shock01")
            text [Seita]
                 .....What!?
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 Oh right...!!
                 I almost forgot about it.
            text [Seita]
                 (............!!!?)
            text [Seita]
                 (Is she gonna take if off in front of them!!?)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)

            wait 20
            text Right in front of those kids' eyes, she started to 
                 taking her jacket down, unexpectedly...
            script $Ev003 = Ev003.new("A02","A10",1)
                   $Ev003.pop
            text [\N[1]]
                 Phew.... you guys are right, wearing it under this 
                 condition is a bad idea.
            text Couldn't believe in their own eyes, both of them 
                 started whispering.
            text [Hiroshi]
                 (Hey!!
                 She's doing it for real...!!?)
            text [Takashi]
                 (Wow...!!
                 Didn't think this could work!!)
            wait 20
            text [Seita]
                 Wa- wait!!
                 D- Don't you feel embarrassed...!?
            script $Ev003.clear
                   $Ev003 = nil
            script $Ev003 = Ev003.new("A02","A11",1)
                   $Ev003.pop
            text [\N[1]]
                 .....Hmm?
            script $Ev003.clear
                   $Ev003 = nil
            script $Ev003 = Ev003.new("A02","A09",1)
                   $Ev003.pop
            text [\N[1]]
                 But I'm sweating here...
            wait 20
            text [Takashi]
                 D-Don't be silly, Sei-kun!!
                 Why is it embrassing!?
            text [Hiroshi]
                 Yeah, it's just her jacket, and we're inside the house!
            text Being overwhelmed by his friends, the little brother 
                 sat down, his words became unclearly...
            text [Seita]
                 B- but...
            var(3) = 2
            script $Ev003.clear
                   $Ev003 = nil
            script $Ev003 = Ev003.new("A03","A17",1)
                   $Ev003.pop
            playME(volume=100, pitch=100, name="016-Shock01")
            text No more hesitation from that point, she took her jacket 
                 off, revealing her gorgeus cleavage to them.
            text [\N[1]]
                 Phew....
            moveroute()
              unknown19
            movewait
            text [Hiroshi]
                 (....!!!!)
            text [Takashi]
                 (......!!!)
            text [Seita]
                 (Ugh...!!)
            wait 20
            script $Ev003.clear
                   $Ev003 = nil
            script $Ev003 = Ev003.new("A04","A05",1)
                   $Ev003.pop
            text [\N[1]]
                 They were right, Sei-chan!
            text [\N[1]]
                 It's a lot cooler than before, and I don't feel 
                 any embarrassment!
            text Watching his sister strip her jacket off right in front of 
                 his friends, poor little brother has become speech-
                 less.
            text [Seita]
                 Y-yea...
            text [Takashi]
                 (Oh my!!
                 Can't believe she listened to us over her brother!!)
            text [Hiroshi]
                 (Y-yeah...
                 I wonder what's happened with her before!?)
            script $Ev003.clear
                   $Ev003 = nil

            screen_tone(0,0,0,0,duration=20)
            wait 20
            script $pose = Pose.new("A","B","A06",1,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",1,1)
                   $pose.shake
            text [\N[1]]
                 Alright, let's get back to it!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="046-Book01")
              unknown15
              playSE(volume=80, pitch=100, name="046-Book01")
            movewait
            text [\N[1]]
                 I will show you how to solve this one, please look 
                 carefully!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            script $Ev005 = Ev005.new("B02")
                   $Ev005.pop
            text She leaned foward again to explain to the kids as 
                 they could't keep their eyes off of her delicious 
                 breasts...
            playME(volume=100, pitch=100, name="016-Shock01")
            text [Seita]
                 (......!!!)
            text [Takashi]
                 (Hey dude!!! 
                 Can you see it!?)
            text [Hiroshi]
                 (Fuck yes!!
                 I'm looking right into her breasts right now!!)
            text [Hiroshi]
                 (This is the first time I get to look at this close to her 
                 titties!!)
            text [Takashi]
                 (They're huge, perfectly huge!!
                 I'm so excited now!!)
            text [Takashi]
                 (Hey... I can even see her nipples showing through 
                 under her top!)
            text [Hiroshi]
                 (Yeess...!!
                 I guess she's doing this purposely!!)
            text [Takashi]
                 (Yeah...!!
                 Maybe she's teasing us?!)
            text [Hiroshi]
                 (I can't tell, dude!!!)
            wait 10
            text [Seita]
                 (..............)
            text During the whole explanation, the only thing they 
                 focused on was her sweaty breasts. The only one 
                 didn't like it was her little brother.
            text 20 minutes later...
            script $Ev005.clear
                   $Ev005 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            script $pose = Pose.new("A","A","A06",1,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",1,1)
                   $pose.shake
            text [\N[1]]
                 So...
                 Understood?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            wait 20
            text [Hiroshi]
                 Y- Yes!!
            text [Takashi]
                 Oh- Of course!!
            text [\N[1]]
                 Good, you all are such fast learners!
            script $pose.clear
                   $pose = nil
            wait 20
            text [Seita]
                 ..............
            text [Seita]
                 (All they did was stare at her chest... It was too 
                 obviously yet she doesn't realize...)
            text [Seita]
                 (I wonder what was wrong with her today...)
            wait 20
            text [\N[1]]
                 ..................
            wait 20
            text [Takashi]
                 ......................
            wait 20
            text [Hiroshi]
                 .........................
            text ...And like that, the studying kept going on until dusk...
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              speed(4)

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 65" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
      "name" => "Door",
      "x" => 13,
      "y" => 13,
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
      "id" => 13,
      "name" => "EV013",
      "x" => 11,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text What do you want to read?



              text [\N[1]]
                   Character's stats are pretty understandable.
              text [\N[1]]
                   The first ones are character's name and her sizes.


              text [\N[1]]
                   Right below is her profile, which can change 
                   depends on the title you selected.


              text [\N[1]]
                   And the last ones...
                   H-times: amount of times character had sex.
              text [\N[1]]
                   Energy: limited energy will keep her from having sex 
                   too many times in a single day.
              text [\N[1]]
                   If she runs out of energy, she'll need to rest.
              text [\N[1]]
                   Obedient: how easy-to-go she will be to her partner 
                   and how cruel she is to her brother.
              text [\N[1]]
                   Most of these stats will affect the gameplay, they're 
                   not only for show.


              text [\N[1]]
                   The game also has achievement system as shown 
                   as Titles.
              text [\N[1]]
                   You can unlock them by meeting it requirements.
              text [\N[1]]
                   Some people will have different reaction depends on 
                   which title you're bearing.



              text [\N[1]]
                   Well... the combat system of this game is a bit 
                   complex for H-RPG Maker in general.
              text [\N[1]]
                   Like many types of combat system, if you bring 
                   enemy's HP down to zero, you'll win and vice-versa.
              text [\N[1]]
                   As you can see in the top-left panel, it contains some 
                   stats of enemy...
              text [\N[1]]
                   Pay attention to AP and VIT, they're very important.
              text [\N[1]]
                   Consuming AP will boost all four of your combat 
                   stats.
              text [\N[1]]
                   After a certain amount of turns, AP will automatically 
                   be restored.
              text [\N[1]]
                   VIT decides how many times you can regen your AP 
                   before it runs out.
              text [\N[1]]
                   If you run out of VIT, your AP won't be restored 
                   anymore.


              text [\N[1]]
                   Let's check out your character's four stats.
              text [\N[1]]
                   These four stats will increase/decrease depends on 
                   how you distribute your AP during attack phase.
              text [\N[1]]
                   Hit chance: chance that your attack will hit on enemy.
              text [\N[1]]
                   Damage Dealt: your attack damage output if you 
                   successfully hit the enemy.
              text [\N[1]]
                   Evasion: chance that your character will 
                   successfully dodge the enemy's attack.
              text [\N[1]]
                   Damage Received: how much damage your 
                   character will take if she can't dodge the attack.
              text [\N[1]]
                   Remember to distribute your AP properly so you 
                   won't waste them.


              text [\N[1]]
                   Now let's take a look at combat commands.
              text [\N[1]]
                   You will have 4 basic commands at the beginning of 
                   each turn.
              text [\N[1]]
                   Attack: attack the opponent, via this command you 
                   can start distribute your AP on your four stats.
              text [\N[1]]
                   Special Attack: a special one, can be unlocked later.
              text [\N[1]]
                   Skills: execute a basic ability of your character. Many 
                   of them can be unlocked later.
              text [\N[1]]
                   Switch: swap attack turn with your opponent.
                   Sometimes going second will benefit the most.
              text [\N[1]]
                   Finally is the explanation of your character's four 
                   stats.
              text [\N[1]]
                   Distributing AP to STR will increase Damage output.
              text [\N[1]]
                   Distributing AP to DEX will increase Hit chance.
              text [\N[1]]
                   Distributing AP to AGI will increase Evasion.
              text [\N[1]]
                   And lastly, distributing AP to DEF will decrease 
                   Damage received.
              text [\N[1]]
                   If you're going against an opponent with high 
                   evasion, you should put more AP to DEX.
              text [\N[1]]
                   Or if it's a beast with strong attack but low hit 
                   chance, you should invest more AP to AGI...
              text [\N[1]]
                   I hope these informations will be helpful to you.


              text [\N[1]]
                   Many games out there also has clothing system 
                   where you can change your character's outfits...
              text [\N[1]]
                   But with this system, you have more than that.
              text [\N[1]]
                   You can dress your character up piece by piece.
              text [\N[1]]
                   The amount of clothes pieces is limited but it appears 
                   every event in the game.
              text [\N[1]]
                   From casual mini-events to big ones, from character 
                   menu to combat screen.
              text [\N[1]]
                   Especially the way you dress can change the way 
                   people react, sometimes trigger an locked event...
              text [\N[1]]
                   But in order to unlock every clothes piece, you will 
                   need to progress the main story.


          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 7,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 407, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 50" ],
          "graphic" => { "character" => "", "tile" => 810, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 55" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 60" ],
          "graphic" => { "character" => "", "tile" => 684, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 65" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 139" ],
          "graphic" => { "character" => "", "tile" => 809, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "", "tile" => 684, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 151" ],
          "graphic" => { "character" => "", "tile" => 684, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
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
      "name" => "Door",
      "x" => 6,
      "y" => 13,
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
      "id" => 14,
      "name" => "EV014",
      "x" => 12,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text What do you want to read?


              text [\N[1]]
                   (Guess I have to buy more books to read...)

              text [\N[1]]
                   (Guess I have to buy more books to read...)

              text [\N[1]]
                   (Guess I have to buy more books to read...)


          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 8,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 415, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 50" ],
          "graphic" => { "character" => "", "tile" => 803, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "graphic" => { "character" => "", "tile" => 684, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
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
        },
        {
          "conditions" => [ "var(1) >= 139" ],
          "graphic" => { "character" => "", "tile" => 803, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "EV004",
      "x" => 2,
      "y" => 19,
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
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")

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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 I should tell Sei-chan about that before leaving.
            script $pose.clear
                   $pose = nil
            moveroute()
              transfer player
            movewait
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")


          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 95" ],
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
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.slide
            text [\N[1]]
                 (I cannot leave Sei-chan home alone...)
            script $pose.clear
                   $pose = nil
            moveroute()
              transfer player
            movewait
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
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 120" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Where are you going, 'nee-chan!?
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.slide
            text [\N[1]]
                 (Oops... I almost forgot about him.)
            script $pose.clear
                   $pose = nil
            moveroute()
              transfer player
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 122" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Where are you going, 'nee-chan!?
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.slide
            text [\N[1]]
                 (Oops... I almost forgot about him.)
            script $pose.clear
                   $pose = nil
            moveroute()
              transfer player
            movewait
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")

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
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")

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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (It's too late already...)
            script $pose.clear
                   $pose = nil
            moveroute()
              transfer player
            movewait
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            if switch(42) == true
              goto event 10
              playSE(volume=80, pitch=100, name="024-Door01")

            end
            if switch(43) == true
              goto event 10
              playSE(volume=80, pitch=100, name="024-Door01")

            end
            if switch(44) == true
              script $pose = Pose.new("A","B","A03",0,0)
                     $pose.slide
              text [\N[1]]
                   (It's too late already...)
              script $pose.clear
                     $pose = nil
              moveroute()
                transfer player
              movewait
            end
          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "Bathroom",
      "x" => 4,
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
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [\N[1]]
                 (I don't need to take a shower right now...)
          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "EV010",
      "x" => 10,
      "y" => 14,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 70" ],
          "graphic" => { "character" => "pl_sleep05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
            text Later that night...
            wait 10
            screen_tone(0,0,0,0,duration=20)
            text [\N[1]]
                 (..............)
            text [\N[1]]
                 (I made him angry, didn't I?)
            text [\N[1]]
                 (......He might be right though.
                 I feel like something is wrong with me.)
            text [\N[1]]
                 (I should feel embarrassed by taking my clothes off in 
                 front of them, even if it's just a jacket.)
            text [\N[1]]
                 (But..........)
            text [\N[1]]
                 (Somehow doing it making me feel strange...)
            text [\N[1]]
                 (For some reasons, I couldn't get that naughty idea 
                 out of my mind...)
            text [\N[1]]
                 (Think about it...
                 Is it because of the Demon's curse...?!)
            text [\N[1]]
                 (It makes me remember what was that perverted 
                 doctor has said.)
            text [\N[1]]
                 (Knowing such a cruel spell like that exists.....
                 It's unimaginable...)
            text [\N[1]]
                 (Now all I can do is waiting for the result of his 
                 research.)
            text [\N[1]]
                 (...............)
            text [\N[1]]
                 (Did mom suffer the same too...?)
            text [\N[1]]
                 (I miss her so much...)
            text [\N[1]]
                 (I hope... maybe someday...)
            text [\N[1]]
                 (................)
            moveroute()
              graphic(name="pl_sleep05", 0, 4, 1)
            movewait
            text [\N[1]]
                 (..........zzZZ..........)

            screen_tone(0,0,0,0,duration=40)
            wait 30
            goto event 13
            wait 65
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 5
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 5
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 20
            moveroute()
              graphic(name="pl_sleep05", 0, 2, 2)
            movewait
            screen_tone(0,0,0,0,duration=30)
            wait 30
            text [\N[1]]
                 (...Ugh......)
            text [\N[1]]
                 (....Someone's knocking the door...?)
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 10
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 10
            playSE(volume=80, pitch=100, name="041-Knock02")
            wait 20
            moveroute()
              graphic(name="pl_sleep05", 0, 2, 3)
            movewait
            wait 20
            text [\N[1]]
                 *Yawns*
            text [\N[1]]
                 I'm coming~
            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(3) = 5
            switch(2) = 0
            moveroute()
              opacity(255)
            movewait
            var(1) = 75

            wait 10
            screen_tone(0,0,0,0,duration=20)
            wait 20
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
          "graphic" => { "character" => "twinkle2", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS


              screen_tone(0,0,0,0,duration=20)
              wait 20
              goto event 11
              switch(43) = 0
              wait 30
              text [\N[1]]
                   (It's evening already...)
              var(1) = 95
              screen_tone(0,0,0,0,duration=20)

              text [\N[1]]
                   (Let's stay awake then.)

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 95" ],
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
          "conditions" => [ "var(1) >= 115" ],
          "graphic" => { "character" => "pl_sleep05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
            var(3) = 5
            wait 15
            screen_tone(0,0,0,0,duration=30)
            wait 35
            text [\N[1]]
                 (.............)
            text [\N[1]]
                 (About what happened just now...)
            text [\N[1]]
                 (I can't help myself from thinking...)
            text [\N[1]]
                 (Maybe it's because of the demon curse?)
            text [\N[1]]
                 (............)
            text [\N[1]]
                 (With just only looking, that man made me feel so...)
            wait 15
            moveroute()
              playSE(volume=80, pitch=100, name="undress")
              graphic(name="pl_sleep05", 0, 2, 0)
            movewait
            text [\N[1]]
                 (I feel so itchy down here...)
            text [\N[1]]
                 (It's hard to sleep in this condition...)
            text [\N[1]]
                 (What should I do?)


              screen_tone(0,0,0,0,duration=20)

              wait 20
              script $Ev010 = Ev010.new("A01","B01",0,1,1,1,1)
                     $Ev010.pop
              text Feeling frustrated and couldn't stand it anymore, she 
                   turned around and started to touch herself in a 
                   shameful pose.
              text [\N[1]]
                   (Maybe if I touch myself... here... a little...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A03","C01",1,1,1,1,1)
                     $Ev010.pop

              text [\N[1]]
                   (Ugh...!)
              text She couldn't hold but let out a moan as her fingers 
                   ran over her pussy slit. Her eyes shut and she 
                   started to breath strongly.
              text [\N[1]]
                   (Haaa.......!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A03","B03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (This is my first time doing this...)
              text [\N[1]]
                   (Even though it feels so wrong...)
              text [\N[1]]
                   (...But yet so good!)
              text [\N[1]]
                   (...Ah-aah...hh...)
              text [\N[1]]
                   (....If I do it... h- harder...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A03","C03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Uuh... Mmm....)
              text She let out a moan again as this time her fingers 
                   were moving faster.
              text [\N[1]]
                   (...It feels... so good...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A03","B01",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Haah... Hahh....)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A03","B02",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (....But somehow... it's still not enough...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A01","C03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (Rubbing that place...)
              text [\N[1]]
                   (....just only make me want to do more!)
              script $Ev010.clear
                     $Ev010 = nil

              script $Ev010 = Ev010.new("A02","C03",0,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Aah... Haah....)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A02","B03",0,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Haahh... I-
                   I can see it's all wet... through my panty...)
              text [\N[1]]
                   (...It's even itchy and frustrated than before...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A02","B02",0,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Maybe.... If I do it directly...
                   ...It will feel better...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A02","D01",0,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Just for a little bit...)
              wait 20
              playSE(volume=80, pitch=100, name="undress")
              wait 5
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","B01",0,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Haaah...
                   I took my panty off...)
              text [\N[1]]
                   (...That place... is clearly all wet...)
              text [\N[1]]
                   (...Now...
                   Let's try rubbing it slowly...)
              script $Ev010.clear
                     $Ev010 = nil

              script $Ev010 = Ev010.new("A04","C03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   U- Ughh...!!!
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (Haah... It's no good...
                   I almost scream out loud...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","B02",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...I hope Sei-chan didn't hear it...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D01",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (This time... Ahh...
                   ...Haah... Faster...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",1,1,1,1,1)
                     $Ev010.pop

              text [\N[1]]
                   (...Ughh...!!)
              text [\N[1]]
                   (...Feels so good...!!!)
              text [\N[1]]
                   (...It's completely different than before...!!)
              text [\N[1]]
                   (...Especially this tiny part...
                   Whenever I touch it...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","C03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...F- Fuahh...!!!)
              text [\N[1]]
                   (...Haaah...!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","C04",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...It feels like an electric shock to my body...)
              text [\N[1]]
                   (...G- Good... It's so good...)
              text [\N[1]]
                   (...Ahh... Haahh....)
              text [\N[1]]
                   (...I want... more...)
              text [\N[1]]
                   H- Hwaah...!!!
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Ughh... I let out my voice again...)
              text [\N[1]]
                   (...But this feels so freaking good!!!)
              text [\N[1]]
                   (...I've never known sticking a finger into that place
                   would feel this good...!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","C03",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...Ahh...!!)
              text [\N[1]]
                   (Something is coming...!!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D01",1,1,1,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (I can't stop my hand anymore... it's moving on its 
                   own!!)
              text [\N[1]]
                   (Something... strange...!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",1,1,1,1,1)
                     $Ev010.pop

              text [\N[1]]
                   (IS COMIIIING...!!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",1,2,2,1,1)
                     $Ev010.pop
              goto event 20
              text [\N[1]]
                   (FUWAHHH....!!!!)
              goto event 20
              wait 5
              goto event 20
              text [\N[1]]
                   (AAH.... HAAH....!!!!)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D01",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (Haah.... Haahh....)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","B02",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (It- It's over....)
              text [\N[1]]
                   (What... just happened...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D01",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (Such pleasure... It's my first time feeling it...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","B02",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (...........)
              text [\N[1]]
                   (So much sitcky liquid came out from that place...)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D02",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (I wonder whether it's good... or bad.)
              text [\N[1]]
                   (Now to think about it....
                   The frustration before was gone...)
              text [\N[1]]
                   (I somehow feel so relieved...
                   ...and exhausted.)
              script $Ev010.clear
                     $Ev010 = nil
              script $Ev010 = Ev010.new("A04","D03",0,5,2,1,1)
                     $Ev010.pop
              text [\N[1]]
                   (Phew....)
              script $Ev010.clear
                     $Ev010 = nil
              screen_tone(0,0,0,0,duration=30)
              wait 35
              text [\N[1]]
                   (Now I can have a good sleep...)
              text [\N[1]]
                   (........)
              moveroute()
                playSE(volume=80, pitch=100, name="undress")
                graphic(name="pl_sleep05", 0, 2, 1)
              movewait
              text [\N[1]]
                   (............)
              moveroute()
                graphic(name="pl_sleep05", 0, 4, 1)
              movewait

              text [\N[1]]
                   (.................)
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20
              goto event 13
              switch(42) = 0
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 60
              moveroute()
                graphic(name="pl_sleep05", 0, 2, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 4, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 2, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 4, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 2, 1)
              movewait
              text [\N[1]]
                   (Ugh.... It's already morning?)
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20

              var(1) = 120
              var(3) = 1
              moveroute()
                opacity(255)
              movewait
              playSE(volume=80, pitch=100, name="undress")
              wait 40
              screen_tone(0,0,0,0,duration=20)

              text [\N[1]]
                   (I guess I should try to sleep...
                   I'm tired already.)
              wait 10
              moveroute()
                graphic(name="pl_sleep05", 0, 4, 0)
              movewait
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 60
              goto event 13
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20
              moveroute()
                graphic(name="pl_sleep05", 0, 2, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 4, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 2, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 4, 1)
                unknown15
                graphic(name="pl_sleep05", 0, 2, 1)
              movewait
              text [\N[1]]
                   (Ugh.... It's already morning?)
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 20

              var(1) = 120
              var(3) = 1
              moveroute()
                opacity(255)
              movewait
              playSE(volume=80, pitch=100, name="undress")
              wait 40
              screen_tone(0,0,0,0,duration=20)

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 120" ],
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
            text [\N[1]]
                 (Didn't I just wake up?)
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 140" ],
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
            text [\N[1]]
                 (Sleeping in daytime?)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "twinkle2", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => false,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            if switch(42) == true


                screen_tone(0,0,0,0,duration=20)
                wait 20
                goto event 14
                wait 30

                text [\N[1]]
                     (It's evening already...)
                screen_tone(0,0,0,0,duration=20)
                wait 20

                text [\N[1]]
                     (Let's stay awake then.)

            else


                screen_tone(0,0,0,0,duration=20)
                wait 20
                goto event 13
                wait 30

                text [\N[1]]
                     (It's morning already...)
                screen_tone(0,0,0,0,duration=20)
                wait 20

                text [\N[1]]
                     (Let's stay awake then.)

            end
          COMMANDS
        },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [\N[1]]
                 (I should be moving now.)
          COMMANDS
        }
      ]
    }
  ]
}
