map = {
  "tileset" => 52,
  "width" => 35,
  "height" => 25,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 50, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 16,
      "name" => "Seita",
      "x" => 33,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
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
          "conditions" => [ "var(1) >= 131" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
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
                 Woaa...!!
                 You scared me!!
            text [Seita]
                 How did you know?!
            script $pose = Pose.new("A","A","A02",0,0)
                   $pose.slide
            text [\N[1]]
                 Don't underestimate your sister.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 1

            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 131" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 6 },
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
                 I wonder where they're hiding.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 134" ],
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
          "conditions" => [ "var(1) >= 135" ],
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
          "conditions" => [ "var(1) >= 136" ],
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
          "conditions" => [ "var(1) >= 137" ],
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
      "x" => 11,
      "y" => 2,
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
      "id" => 22,
      "name" => "Seita",
      "x" => 11,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 138" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 3,
          "commands" => <<-COMMANDS
            wait 10

            screen_tone(0,0,0,0,duration=0)

            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 I've won again!! Woohooo!!
            script $pose = Pose.new("A","A","A06",1,1)
                   $pose.slide
            text [\N[1]]
                 Hahah... you're so good at this game, Sei-chan!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 It's because we weren't serious!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Hahah!!
                 Stop making excuses, Takashi!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 You wanna play again!? I dare you!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",1,0)
                   $pose.shake
            text [\N[1]]
                 Stop fighting!!
            text [\N[1]]
                 Loss is loss, you guys should accept your defeat.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 But....!!
            text [\N[1]]
                 ...Also, I'm tired, my body is dirty from playing the 
                 whole time.
            text [\N[1]]
                 We better go home, all of us.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 I have an idea!!
                 Why don't we bathe in this lake!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Great idea!!
                 Let's bathe together!!
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 You idiot!!
                 How could my sister do it in front of us!!
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Why not!?
                 We are... just little kids!!
            moveroute()
              face right
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Exactly!!
                 It's just taking bath, moron!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 You....!!
            moveroute()
              unknown19
            moveroute()
              unknown19
            moveroute()
              unknown19
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",0,0)
                   $pose.shake
            text [\N[1]]
                 Again, stop fighting!!
            text [\N[1]]
                 I've already decided...

            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 It's just taking a bath, not something vulgar so I guess 
                  I'm okay with it...
            text [Seita]
                 W- wait-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D05",0,1)
                   $pose.pop
            text [\N[1]]
                 Don't worry, Sei-chan.
                 They're your friends, right?
            text [\N[1]]
                 Adults always taking bath with kids, it's a normal 
                 thing to do.
            script $pose.clear
                   $pose = nil
            text [Seita]
                 B- but...
            moveroute()
              face right
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 (Hey, don't you want to see your sister's boobies!?)
            text [Takashi]
                 (I bet you've never seen them before, right!?)
            text [Seita]
                 (...............)
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Think about it!
                 We will just take bath together, nothing more!
            text [Seita]
                 (......................)
            text [Seita]
                 O- Okay...
            moveroute()
              unknown19
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yes, he agreed!!
            moveroute()
              unknown19
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Let's get into the water!!!
            script $pose = Pose.new("A","B","E03",0,1)
                   $pose.slide
            text [\N[1]]
                 Well...
                 Turn your faces away until I'm already in the water.
            moveroute()
              face down
            moveroute()
              face down
            moveroute()
              face down
            text [All]
                 Yes!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 .............
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 50
            playSE(volume=80, pitch=100, name="undress")
            wait 20
            playSE(volume=65, pitch=125, name="undress")
            wait 50
            playSE(volume=80, pitch=70, name="022-Dive02")

            wait 50
            script $Ev012 = Ev012.new("B","A01","E01",0,1,1)
                   $Ev012.pop
            wait 40
            text [\N[1]]
                 Now you all can get in...
            text [Hiroshi]
                 I'm ready!! I'm going first!!
            text [Takashi]
                 Hey, wait me!!
            playSE(volume=60, pitch=125, name="022-Dive02")
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A02","E01",0,1,1)
                   $Ev012.pop
            text [Hiroshi]
                 Heheh...
                 This spot is mine!
            playSE(volume=40, pitch=110, name="022-Dive02")
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E01",0,1,1)
                   $Ev012.pop
            text [Takashi]
                 And this one, is MINE!!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","D01",0,1,1)
                   $Ev012.pop
            text [\N[1]]
                 ...........
                 Where is Sei-chan!?
            text [Hiroshi]
                 He's still changing over there!
            text [Takashi]
                 Yeah, he doesn't want us to look!
            text [Hiroshi]
                 Hahahah...!!
                 She's like a girl!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E01",0,1,1)
                   $Ev012.pop
            text [\N[1]]
                 Don't talk about him like that!
            text [Hiroshi]
                 Heheh...
                 I'm sorry.
            text [Takashi]
                 Now we got a chance to admire \N[1]-san's boobies 
                 this close, heheh...!!
            text [Hiroshi]
                 Yeah, it's like I'm dreaming!
                 They're so big!!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E06",0,2,1)
                   $Ev012.pop
            text [\N[1]]
                 S- Stop it...
                 You guys make feel so embarrassed.
            text [Hiroshi]
                 Why?
                 You should feel proud!!
            text [Hiroshi]
                 My dad sometimes talked to himself that you had the 
                 best titties around this village!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","D01",0,2,1)
                   $Ev012.pop
            text [\N[1]]
                 R- Really...?
            text [Takashi]
                 Hey, sometimes my dad mumbled the same thing!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E06",0,2,1)
                   $Ev012.pop
            text [\N[1]]
                 (It makes me even more embarassing...)
            text [Hiroshi]
                 Hmm.....
            text [Hiroshi]
                 This is called 'nipple', isn't it?
            text [Takashi]
                 Your nipples... they look so stiff.
                 Are they always like that!?
            text [\N[1]]
                 (.............)
            text [Hiroshi]
                 Don't tell us that they're your weak spots, hehe...
            text [Takashi]
                 ....What's weak spot?
            text [Hiroshi]
                 I learned it from my dad's books.
            text [Hiroshi]
                 When your 'weak spots' are touched, you body will 
                 feel weak!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E01",0,2,1)
                   $Ev012.pop
            text [\N[1]]
                 D- Don't listen to him!
            text [Hiroshi]
                 No, it's on the book so it must be true!
            text [Takashi]
                 Oh.... I got it now.
                 So amazing...!
            text [Takashi]
                 There are so many things I still don't know about girl's 
                 body!
            text [Hiroshi]
                 Me too!!
                 \N[1]-san, can you please teach us more!?
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E06",0,2,1)
                   $Ev012.pop
            text [\N[1]]
                 (.............)
            wait 20
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","B01",0,2,1)
                   $Ev012.pop
            text [Hiroshi]
                 Hey, Seita-kun is coming!
            text [Takashi]
                 Crap...!!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E06",1,2,1)
                   $Ev012.pop
            playSE(volume=70, pitch=75, name="022-Dive02")
            wait 30
            text [Seita]
                 ............
                 Onee-chan, are you alright?
            text [\N[1]]
                 Huh...?
            text [Seita]
                 Your face is so red, are you sick or something?
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","B05",1,2,1)
                   $Ev012.pop
            text [\N[1]]
                 Ah- hahah...!!
                 Nothing, it's nothing!
            text [\N[1]]
                 It's because I'm out of breath while playing Hide and 
                 seek!
            text [Seita]
                 Ohh...
                 So that's why...
            text [Seita]
                 (...............)
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","B06",1,2,1)
                   $Ev012.pop
            text [\N[1]]
                 (.................)
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E06",1,2,1)
                   $Ev012.pop
            text [\N[1]]
                 (He's looking at my breasts...)
            text [\N[1]]
                 (Can't blame him, this is his first time seeing them...)
            text [Seita]
                 (...............)
            text [Seita]
                 (Her 'boobies'... they're so... beautiful.)
            text [Seita]
                 (In this state they look bigger than usual...?)
            text [Seita]
                 (Why I never noticed that-
            text [Seita]
                 (What am I thinking...!?
                 She's my sister, I can't think about her like that!!)
            text [Seita]
                 (This is like a mixed open bath, let's enjoy it and stop 
                 thinking about those things...)
            text [Seita]
                 (But wait...
                 Hiroshi and Takashi...)
            text [Seita]
                 (Why are they sitting around her that close...)
            text [Seita]
                 (I wonder what happened before I get it here....)
            text [Takashi]
                 H-Hey, Seita!
            text [Seita]
                 .........Yes?
            text [Takashi]
                 I- I'm jealous with you...!!
            text [Seita]
                 ........What do you mean?
            text [Hiroshi]
                 You... you've got to see this everyday, right?
            text [Seita]
                 What...!?
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E04",1,2,1)
                   $Ev012.pop
            text [\N[1]]
                 S- Stop talking non-sense...!
            script $Ev012.clear
                   $Ev012 = nil
            script $Ev012 = Ev012.new("B","A03","E01",1,2,1)
                   $Ev012.pop
            text [\N[1]]
                 Just enjoy the bath and get home soon...!
                 Your parents must be looking for you.
            text [Hiroshi]
                 Y-Yes, \N[1]-san...
            text [Takashi]
                 Y- yeah, I'm so hungry right now...
            text [Seita]
                 (................)
            screen_tone(0,0,0,0,duration=20)
            script $Ev012.clear
                   $Ev012 = nil


            wait 40
            text ..............
            text .......................
            text .........................
            playSE(volume=80, pitch=100, name="013-Move01")
            var(1) = 139


            text [\N[1]]
                 A- Are you hungry yet, Sei-chan?
            text [Seita]
                 Of course I'm hungry!!
            text [\N[1]]
                 Then I'll prepare dinner for both of us, wait for me.
            text [Seita]
                 Yeah!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 139" ],
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
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
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 153" ],
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
      "name" => "EV006",
      "x" => 34,
      "y" => 20,
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
          "conditions" => [ "var(1) >= 131" ],
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
                 (I can't leave them behind like this.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
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
      "id" => 23,
      "name" => "Hiroshi",
      "x" => 12,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 138" ],
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
          "conditions" => [ "var(1) >= 139" ],
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
      "name" => "Hiroshi",
      "x" => 18,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 4,
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
              opacity(255)
            movewait
            wait 10

            screen_tone(0,0,0,0,duration=0)

            wait 15
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Ah, \N[1]-san!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 She has come too!?
            text [Seita]
                 Yeah-
            script $pose = Pose.new("A","A","E07",0,0)
                   $pose.slide
            text [\N[1]]
                 Is there any problem?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 No, it's great!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Having \N[1]-san playing with us, so amazing!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A02",0,0)
                   $pose.pop
            text [\N[1]]
                 Heheh...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Actually I'm worried about your safety so I come to 
                 watch you out.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Since you're already here, why don't you play with 
                 us!? 
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Hahah...!
                 Okay, what will we play?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Let's play hide and seek!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Yeah, let's play it!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Sounds fun!
                 I'm in!
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Who's gonna be 'it'!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Not me, of course!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Let's do ROCK-PAPER-SCISSOR like always guys!!
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Takashi]
                 C'mon!!
                 One... Two... Three!


              text [Takashi]
                   I'm PAPER!
              text [Seita]
                   Hahah!! Me too!!
              text [Hiroshi]
                   I'm also PAPER!!
                   You've lost, \N[1]-san!!
              text [\N[1]]
                   Geez...
                   Guess I'll be 'it' then.
              wait 20
              text [\N[1]]
                   Okay, I'll count to three, you guys better hide quick!
              text [\N[1]]
                   One...
              text [\N[1]]
                   ...Two.
              text [\N[1]]
                   Three!
              text [\N[1]]
                   (They're all gone hiding...)
              text [\N[1]]
                   (Here I go...!!)

              var(1) = 131
              wait 10

              screen_tone(0,0,0,0,duration=0)

              wait 20
              text [\N[1]]
                   (Now I gotta find them all.)

              text [Takashi]
                   I'm SCISSOR!
              text [Seita]
                   Hahah!! Me too!!
              text [Hiroshi]
                   I'm also SCISSOR!!
                   You've lost, \N[1]-san!!
              text [\N[1]]
                   Geez...
                   Guess I'll be 'it' then.
              wait 20
              text [\N[1]]
                   Okay, I'll count to three, you guys better hide quick!
              text [\N[1]]
                   One...
              text [\N[1]]
                   ...Two.
              text [\N[1]]
                   Three!
              text [\N[1]]
                   (They're all gone hiding...)
              text [\N[1]]
                   (Here I go...!!)

              var(1) = 131
              wait 10

              screen_tone(0,0,0,0,duration=0)

              wait 20
              text [\N[1]]
                   (Now I gotta find them all.)

              text [Takashi]
                   I'm ROCK! 
              text [Seita]
                   Hahah!! Me too!!
              text [Hiroshi]
                   I'm also ROCK!!
                   You've lost, \N[1]-san!!
              text [\N[1]]
                   Geez...
                   Guess I'll be 'it' then.
              wait 20
              text [\N[1]]
                   Okay, I'll count to three, you guys better hide quick!
              text [\N[1]]
                   One...
              text [\N[1]]
                   ...Two.
              text [\N[1]]
                   Three!
              text [\N[1]]
                   (They're all gone hiding...)
              text [\N[1]]
                   (Here I go...!!)

              var(1) = 131
              wait 10

              screen_tone(0,0,0,0,duration=0)

              wait 20
              text [\N[1]]
                   (Now I gotta find them all.)

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 131" ],
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
          "conditions" => [ "var(1) >= 134" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [\N[1]]
                 That's it, I'm the winner!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 You're so good at this game, \N[1]-san!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Hahaha...!! It was fun!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Let's play again!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Yeah, another round!!
            wait 15
            screen_tone(0,0,0,0,duration=30)
            wait 40
            text [Takashi]
                 ONE...
            text [Hiroshi]
                 TWO...
            text [Seita]
                 THREE...!


              text [Takashi]
                   I'm PAPER!
              text [Hiroshi]
                   I'm also PAPER!!
              text [Seita]
                   Wait... I'm ROCK...!!
                   No!!!
              text [Takashi]
                   Hahah!! He's gonna be 'it'!!
              text [Hiroshi]
                   Let's hide, \N[1]-san!!
              text [\N[1]]
                   Oh- Okay!!
                   Good luck Sei-chan!
              text [Seita]
                   Okay... I'm counting!
              text [Seita]
                   One...
              text [Seita]
                   ...Two.
              text [Seita]
                   Three!
              text [Seita]
                   Let's see if I can spot them all...

              var(1) = 135

              text [Takashi]
                   I'm ROCK!
              text [Hiroshi]
                   I'm also ROCK!!
              text [Seita]
                   Wait... I'm SCISSOR...!!
                   No!!!
              text [Takashi]
                   Hahah!! He's gonna be 'it'!!
              text [Hiroshi]
                   Let's hide, \N[1]-san!!
              text [\N[1]]
                   Oh- Okay!!
                   Good luck Sei-chan!
              text [Seita]
                   Okay... I'm counting!
              text [Seita]
                   One...
              text [Seita]
                   ...Two.
              text [Seita]
                   Three!
              text [Seita]
                   Let's see if I can spot them all...

              var(1) = 135

              text [Takashi]
                   I'm SCISSOR!
              text [Hiroshi]
                   I'm also SCISSOR!!
              text [Seita]
                   Wait... I'm PAPER...!!
                   No!!!
              text [Takashi]
                   Hahah!! He's gonna be 'it'!!
              text [Hiroshi]
                   Let's hide, \N[1]-san!!
              text [\N[1]]
                   Oh- Okay!!
                   Good luck Sei-chan!
              text [Seita]
                   Okay... I'm counting!
              text [Seita]
                   One...
              text [Seita]
                   ...Two.
              text [Seita]
                   Three!
              text [Seita]
                   Let's see if I can spot them all...

              var(1) = 135

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 135" ],
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
          "conditions" => [ "var(1) >= 136" ],
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
            screen_tone(0,0,0,0,duration=25)
            wait 25
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Hahah!! I've found all of you!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Geez... you just got lucky!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Y- yeah...!!! Let's play again, you won't get me this 
                 time!
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 ...........
            text [\N[1]]
                 (I hope I won't get stucked with Hiro-kun this time...)
            script $pose.clear
                   $pose = nil
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 40
            text [Takashi]
                 ONE...
            text [Hiroshi]
                 TWO...
            text [Seita]
                 THREE...!
            text [Hiroshi]
                 Hahah!!
                 Seita has lost again!!
            text [Takashi]
                 Now I know he's bad at playing Rock-paper-scissor!!
            text [\N[1]]
                 It's just unlucky for him, right, Sei-chan?
            text [Seita]
                 Yeah,
                 I will just win again, just wait and see!
            text [Seita]
                 Hide fast before I catch all of you!
            wait 20
            text [Seita]
                 I'm counting...!!
            text [Seita]
                 ONE...!!
            text [Seita]
                 TWO....!!!
            text [Takashi]
                 This way, \N[1]-san!!
            text [\N[1]]
                 Eh...!?
            text [\N[1]]
                 Don't drag my hand....!!
            text [Seita]
                 THREE!!
            text .........
            text ................

            var(1) = 137
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 137" ],
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
      "id" => 18,
      "name" => "Hiroshi",
      "x" => 2,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 135" ],
          "graphic" => { "character" => "hiro_sleep01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.shake
            text [\N[1]]
                 (H- Hey...!
                 Why you are here!?)
            screen_tone(0,0,0,0,duration=20)
            wait 15
            moveroute()
              face right
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 (Sorry, \N[1]-san...
                 I was running out of time!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.shake
            text [\N[1]]
                 (D- Don't jump, we could be found out!)
            moveroute()
              face down
            movewait
            text [Hiroshi]
                 (S- Sorry...!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",1,0)
                   $pose.pop
            text [\N[1]]
                 (...and keep your voice down!)
            script $pose.clear
                   $pose = nil
            text [Hiroshi]
                 (..........okay.)
            text [Hiroshi]
                 (...............)
            text [\N[1]]
                 (.................)
            moveroute()
              unknown19
            movewait
            script $pose = Pose.new("A","A","E02",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E02",0,1)
                   $pose.shake
            text [\N[1]]
                 (..........
                 You're so close to me!)
            text [Hiroshi]
                 (I can't help, this spot is tight!)
            script $pose.clear
                   $pose = nil
            moveroute()
              face down
            movewait
            text [\N[1]]
                 (Hmm....)
            text [\N[1]]
                 (...as long as we're safe...)
            text [Hiroshi]
                 (This is so exciting!)
            text [\N[1]]
                 (Hmm... Just hide carefully.)
            text [\N[1]]
                 (I will watch out for us.)
            script $Ev004 = Ev004.new("A01","E01",0)
                   $Ev004.pop
            text [Hiroshi]
                 (....!!!)
            text [\N[1]]
                 (Seems like Sei-chan isn't looking this way...)
            text [Hiroshi]
                 (It's her panty... she's showing it!)
            text [Hiroshi]
                 (I'm starting to love this game more...)
            script $Ev004.clear
                   $Ev004 = nil
            moveroute()
              unknown19
            movewait
            script $pose = Pose.new("A","A","E05",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",0,1)
                   $pose.shake
            text [\N[1]]
                 (H- Hey...!
                 Don't push me from behind!)
            text [Hiroshi]
                 (Oops... I'm sorry... it's too tight here!)
            text [Hiroshi]
                 (Wait..!! He's coming this way!)
            script $pose.clear
                   $pose = nil
            moveroute()
              face down
            movewait
            text [\N[1]]
                 (Shhh.... be quiet!)
            text [\N[1]]
                 (He's coming!)
            wait 20
            moveroute()
              opacity(255)
              speed(1)
              transfer player
              transfer player
              transfer player
              transfer player
              transfer player
              transfer player
              transfer player
              unknown15
              face left
              unknown15
              face right
              unknown15
              unknown15
              face down
            movewait
            text [\N[1]]
                 (He's still standing there-)
            moveroute()
              unknown19
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose = Pose.new("C","B","E03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I said stop pushing me from behind!!)
            text [Hiroshi]
                 (B- But....)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","E02",0,0)
                   $pose.pop
            text [\N[1]]
                 (What's wrong?)
            text [Hiroshi]
                 (I... I wanted to see your panties!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","E05",0,1)
                   $pose.pop
            text [\N[1]]
                 (Wh- what!?)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 (It's... it's because you keep sticking your butt 
                 towards me!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","B04",0,1)
                   $pose.pop
            text [\N[1]]
                 (Really...?
                 I'm sorry, I didn't mean...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 (Please, pleaaase...!!)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 (He's so noisy...!!)


              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E07",0,1)
                     $pose.shake
              text [\N[1]]
                   (Alright, alright... I got it!)
              text [\N[1]]
                   (Just only this time, okay?)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Hiroshi]
                   (Yess! I promise!!)
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D07",0,1)
                     $pose.pop
              text [\N[1]]
                   (*Sigh...*
                   Stop jumping already...)
              script $pose.clear
                     $pose = nil
              moveroute()
                face down
              movewait
              wait 15
              script $Ev004 = Ev004.new("C01","D05",1)
                     $Ev004.pop
              text [\N[1]]
                   (Here it is...!)
              text [Hiroshi]
                   (Woaa.... a-ma-zing...!)
              script $Ev004.clear
                     $Ev004 = nil
              script $Ev004 = Ev004.new("A01","D05",1)
                     $Ev004.pop
              text [\N[1]]
                   (Now you've seen it.
                   Are you sastified?)
              text [Hiroshi]
                   (N- Not yet...!
                   Please hold it a little bit more!)
              text [\N[1]]
                   (*Sigh...*)
              script $Ev004.clear
                     $Ev004 = nil
              script $Ev004 = Ev004.new("C01","D05",1)
                     $Ev004.pop
              text [\N[1]]
                   (You better be quick.)
              wait 15
              script $Ev004.clear
                     $Ev004 = nil
              script $Ev004 = Ev004.new("C01","D01",1)
                     $Ev004.pop
              text [\N[1]]
                   (Ar- Are you sniffing it...!?)
              text [Hiroshi]
                   (*Sniff sniff*
                   Fuaaa...haah...)
              text [Hiroshi]
                   (Your panties smell so good...!!)
              script $Ev004.clear
                     $Ev004 = nil
              moveroute()
                unknown19
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [\N[1]]
                   S- Stop it...!!
              text [\N[1]]
                   (Oops.........!!)
              wait 25
              moveroute()
                unknown19
                unknown15
                transfer player
                transfer player
                transfer player
                transfer player
                unknown3
                unknown15
                face down
                unknown15
                face left
              movewait
              moveroute()
                face down
              movewait
              text [\N[1]]
                   (It's Sei-chan, he heard my voice!)
              text [Hiroshi]
                   (*Sniff sniff*)
              moveroute()
                unknown19
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [\N[1]]
                   Hey!! I said stop sniffing my panties!!
              moveroute()
                unknown19
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
                unknown15
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   AAh!!
                   I've found you guys!!
              text [Seita]
                   Two at once!!
              moveroute()
                face down
              movewait
              script $pose = Pose.new("A","A","D06",1,0)
                     $pose.slide
              text [\N[1]]
                   Ah-hahah... Good job, Sei-chan...
              text [Seita]
                   I heard you two were making noise, that's why!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   (It's because of you, Hiro-kun!)
              script $pose.clear
                     $pose = nil
              text [Hiroshi]
                   (Heheh...
                   I'm sorry!)
              screen_tone(0,0,0,0,duration=20)
              wait 25


              var(1) = 136

              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E07",0,1)
                     $pose.pop
              text [\N[1]]
                   (No, I won't show my panties to you.)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Hiroshi]
                   NOOO!!!
                   I WANT IT!!!
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E05",1,0)
                     $pose.pop
              text [\N[1]]
                   (Hey!! Quiet down!)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Hiroshi]
                   PLEASE PLEASE PLEASEEEE!!!
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("C","B","E03",1,0)
                     $pose.pop
              text [\N[1]]
                   (You silly! He will hear us!)
              script $pose.clear
                     $pose = nil
              wait 15
              moveroute()
                speed(6)
                transfer player
                transfer player
                transfer player
                transfer player
                unknown3
                unknown3
                unknown19
              movewait
              wait 10
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
                unknown15
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   AAh!!
                   I've found you guys!!
              text [Seita]
                   Two at once!!
              moveroute()
                face down
              movewait
              script $pose = Pose.new("A","A","D06",1,0)
                     $pose.slide
              text [\N[1]]
                   Ah-hahah... Good job, Sei-chan...
              text [Seita]
                   I heard you two were making noise, that's why!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   (It's because of you, Hiro-kun!)
              script $pose.clear
                     $pose = nil
              text [Hiroshi]
                   (I'm sorry....)
              screen_tone(0,0,0,0,duration=20)
              wait 25


              var(1) = 136

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 136" ],
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
      "x" => 34,
      "y" => 21,
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
          "conditions" => [ "var(1) >= 131" ],
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
                 (I can't leave them behind like this.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
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
      "id" => 13,
      "name" => "Seita",
      "x" => 17,
      "y" => 17,
      "pages" => [
        {
          "conditions" => [],
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
        },
        {
          "conditions" => [ "var(1) >= 131" ],
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
      "x" => 10,
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
      "id" => 19,
      "name" => "SeitaFinding",
      "x" => 1,
      "y" => 15,
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
          "conditions" => [ "var(1) >= 135" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 136" ],
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
          "conditions" => [ "var(1) >= 137" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 138" ],
          "graphic" => { "character" => "", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
      "name" => "Takashi",
      "x" => 3,
      "y" => 1,
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
          "conditions" => [ "var(1) >= 131" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Takashi]
                 Oops!! I've been found!!
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 You're bad at hiding.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 1

            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 131" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Takashi]
                 Hurry and find the others!!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 134" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 135" ],
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
          "conditions" => [ "var(1) >= 136" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 137" ],
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
      "name" => "Takashi",
      "x" => 1,
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
          "conditions" => [ "var(1) >= 137" ],
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
            wait 30

            screen_tone(0,0,0,0,duration=30)
            wait 30
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.shake
            text [\N[1]]
                 (Why you dragged me here...?)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 (I think this spot is a good one for hiding!)
            text [\N[1]]
                 (But isn't it too small for two?)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 (It's because.... I want to see your panties too!!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 (Not again...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 (Hiroshi has told me about it!)
            text [Takashi]
                 (Now I want to see it too!!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D04",1,1)
                   $pose.shake
            text [\N[1]]
                 (He did tell you...?!
                 How could he...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 (Please, \N[1]-san!!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",1,0)
                   $pose.pop
            text [\N[1]]
                 (No!!
                 Don't be ridiculous!)
            text [Takashi]
                 (Really!? It isn't fair...!!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E07",1,1)
                   $pose.pop
            text [\N[1]]
                 (I won't show my panty to anyone again.)
            text [Takashi]
                 (Hmm.... so...
                 ...What about your boobies?)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,1)
                   $pose.pop
            text [\N[1]]
                 (Wh- What are you saying, Taka-kun!?)
            text [Takashi]
                 (But you did it with Hiroshi, why can't you do it for 
                 me!!?)
            text [Takashi]
                 (I bet Seita has seen them too!! Why can't I...!?)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (...............)
            text [Takashi]
                 (Maybe... maybe a little touching?
                 Is it okay with you...?)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C01",0,1)
                   $pose.pop
            text [\N[1]]
                 (Should I let him touch my breasts...?)


              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E03",0,1)
                     $pose.pop
              text [\N[1]]
                   (Okay... just a little bit, got it?)
              script $pose.clear
                     $pose = nil
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   (Yaaayy!!!)
              script $Ev007 = Ev007.new("B05","A03","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (H- Hey...!
                   Not so suddenly...)
              text [Takashi]
                   (Whooa.... they're so soft!!)
              text [Takashi]
                   (I didn't know girls' boobies feel this good!!)
              script $Ev007.clear
                     $Ev007 = nil
              script $Ev007 = Ev007.new("B05","A02","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (...So embarassing...)
              text [Takashi]
                   (\N[1]-san, do you know that they are the biggest 
                   boobies I've seen!?)
              script $Ev007.clear
                     $Ev007 = nil
              script $Ev007 = Ev007.new("B05","A03","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (It- It's not something to be proud of!)
              text [Takashi]
                   (\N[1]-san,
                   I... I want to ask a question!)
              script $Ev007.clear
                     $Ev007 = nil
              script $Ev007 = Ev007.new("B05","A02","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (...Haah...
                   What is it...?)
              text [Takashi]
                   (Umm....
                   ...Has Seita ever got to feel your boobies like this?)
              script $Ev007.clear
                     $Ev007 = nil
              script $Ev007 = Ev007.new("B05","A03","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (Wh- What kind of question is that...?!)
              text [Takashi]
                   (Please...!! I just want to know!!)
              text [\N[1]]
                   (Aah..!! Don't suddenly grope them like that!)
              text [Takashi]
                   (So answer me!!)
              text [\N[1]]
                   (Haah... I- I've never let him had a chance to do that!)
              script $Ev007.clear
                     $Ev007 = nil
              script $Ev007 = Ev007.new("B05","A02","A06","A02",2,1)
                     $Ev007.pop
              text [\N[1]]
                   (Because we... We are siblings!!
                   ..Haah....)
              text [Takashi]
                   (Heheh!! That's it!!
                   I can't lose to him!)
              text [\N[1]]
                   (Haaahh....
                   ...This isn't a competition...!)
              text [Takashi]
                   (So... what about your panties?
                   You've never shown them to him too, right!?)
              text [\N[1]]
                   (Ugh.... Y- yes...!
                   As I said... we are s-
              script $Ev007.clear
                     $Ev007 = nil
              moveroute()
                face down
              movewait
              text [Takashi]
                   (Oops...!! He's coming this way!!)
              moveroute()
                opacity(255)
                speed(4)
                transfer player
                transfer player
                transfer player
                unknown2
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                unknown15
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Hahahah!!
                   You guys are spotted again!!
              text [Takashi]
                   (Damn this spoiled brat!!)
              moveroute()
                face down
              movewait
              text [\N[1]]
                   (Looks like he didn't see that.
                   Phew..........)
              screen_tone(0,0,0,0,duration=20)
              wait 20


              var(1) = 138


              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","E07",0,1)
                     $pose.pop
              text [\N[1]]
                   (Not a chance!!)
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Takashi]
                   (Please...!!
                   Please, \N[1]-san...!!)
              text [\N[1]]
                   (Crying all you want,
                   I won't show them to you!)
              script $pose.clear
                     $pose = nil
              text [Takashi]
                   WAAAAHHH!!!!
                   IT'S NOT FAIR!!!
              moveroute()
                opacity(255)
                speed(4)
                transfer player
                transfer player
                transfer player
                unknown2
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                transfer player
                unknown15
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Seita]
                   Hahahah!!
                   You guys are spotted again!!
              text [Takashi]
                   (..............)
              moveroute()
                face down
              movewait
              text [\N[1]]
                   (...............)
              screen_tone(0,0,0,0,duration=20)
              wait 20


              var(1) = 138

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 138" ],
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
      "x" => 17,
      "y" => 20,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text < West Forest | Waterfall Village >
          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "Hiroshi",
      "x" => 1,
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
          "conditions" => [ "var(1) >= 131" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Hiroshi]
                 What!?
                 How can you find me!?
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Hahah... too easy!
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 1

            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 131" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 4,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Hiroshi]
                 You're lucky this time!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 134" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 135" ],
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
          "conditions" => [ "var(1) >= 136" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "var(1) >= 137" ],
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
      "x" => 30,
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
      "id" => 21,
      "name" => "Takashi",
      "x" => 10,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 138" ],
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

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 139" ],
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
      "name" => "Takashi",
      "x" => 17,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 4,
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
            text [Takashi]
                 You've come!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 131" ],
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
