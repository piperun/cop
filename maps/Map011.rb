map = {
  "tileset" => 51,
  "width" => 25,
  "height" => 25,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 75, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "Takashi",
      "x" => 10,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face left
            movewait


            wait 20
            screen_tone(0,0,0,0,duration=20)

            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 Taka-kun, are you working hard as usual?
            text [Takashi]
                 Ah, nee-san...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Woaaah!!
            text [Takashi]
                 There's a giant bug on your back, \N[1]-san!!

            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.shake
            text [\N[1]]
                 Really!?
                 Where is it!!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Now it's crawling over your skirt, nee-san!!
            text [Takashi]
                 I'll get it off for you, turn back, quick!!
            text [\N[1]]
                 ....O-Okay!!
            script $pose.clear
                   $pose = nil
            script $hip = Hip.new("F","D07",0,0)
                   $hip.pop
            text [\N[1]]
                 H-Have you seen it yet!?
            text [Takashi]
                 I just did but it got away now!
            text [Takashi]
                 It's hiding somewhere...
                 Maybe under your skirt?
            text [\N[1]]
                 ...Under my skirt?
            text [Takashi]
                 Can you raise up your skirt, onee-san?
            script $hip.clear
                   $hip = nil
            script $hip = Hip.new("F","D01",1,0)
                   $hip.pop
            text [\N[1]]
                 ...What?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Quickly!!
                 Do you want it to crawl further inside!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            script $hip.clear
                   $hip = nil
            script $hip = Hip.new("F","D07",1,0)
                   $hip.pop
            text [\N[1]]
                 ...O-okay!!
            script $hip.clear
                   $hip = nil
            script $hip = Hip.new("H","D08",1,0)
                   $hip.pop
            wait 25
            text [\N[1]]
                 ...Have you seen it!?
            text [Takashi]
                 ...............
            text [Takashi]
                 ....white.
            text [\N[1]]
                 ...........?
            script $hip.clear
                   $hip = nil
            script $hip = Hip.new("H","D01",1,0)
                   $hip.pop
            text [\N[1]]
                 Taka-kun...?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 IT'S WHITE, HAHAHAH!!!
            script $hip.clear
                   $hip = nil
            text [\N[1]]
                 ......................
            script $pose = Pose.new("A","A","E03",1,1)
                   $pose.slide
            text [\N[1]]
                 So... it's just a prank?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Hahahah~ yes!
                 I got to see your panties!!
            text [Takashi]
                 I love your panties, \N[1]-san!!
                 I LOVE WHITE PANTIES!!
            text [\N[1]]
                 .................
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.pop
            text [\N[1]]
                 You idiot....
            script $pose.clear
                   $pose = nil

            text [Takashi]
                 Ouchh!!

            wait 25
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face right
            moveroute()
              face down
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 20
            switch(126) = 0

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 15" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Takashi]
                 ...Sorry, 'nee-chan.
            script $pose = Pose.new("A","A","A06",1,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.shake
            text [\N[1]]
                 (His father saw it all...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 40" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Takashi]
                 Working all day.... I hate this.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Takashi]
                 I heard you and Sei-kun will have a dinner at Hiro-
                 kun's place tonight...
            text [Takashi]
                 Wish I could come too...
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
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 3,
          "move_speed" => 4,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [\N[1]]
                 You're working hard, Taka-kun!
            text [Takashi]
                 Ah, \N[1]-san!!
            text [Takashi]
                 Let me touch your boobies!!

            playSE(volume=80, pitch=100, name="089-Attack01")
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.shake
            text [\N[1]]
                 Don't yell it out or someone will hear it.
            script $pose.clear
                   $pose = nil
            text [Takashi]
                 O-ouch....!!
                 I'm sorry...
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 3,
          "move_speed" => 4,
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
            text [Takashi]
                 Ah, \N[1]-san!!
                 *Pants*
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.shake
            text [\N[1]]
                 You're sweating.
                 Is everything okay?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 *Pants*
                 Don't worry, I'm used to it!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Don't you need any help?
                 I can give you a hand.
            text [Takashi]
                 W- well... If you don't mind, can you help me watering 
                 the crop field?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Sure!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Meanwhile you should take a break, don't push 
                 yourself too hard.
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Thank you, \N[1]-san!!
            screen_tone(0,0,0,0,duration=20)
            wait 20
            switch(127) = 0
            moveroute()
              opacity(0)
            movewait


            wait 50

            screen_tone(0,0,0,0,duration=20)
            wait 45
            text Standing from behind, both father and son were 
                 enjoying the sight entirely.
            text [Kaesan]
                 ......
            text [Takashi]
                 ......
            wait 20
            text [Kaesan]
                 What a sight, son.
            text [Takashi]
                 Y- yes...!
            text [Kaesan]
                 This makes me want to be young again...
            wait 20
            screen_tone(0,0,0,0,duration=20)
            script $Ev020 = Ev020.new("A",1,1,1,1)
                   $Ev020.pop
            text Once again, Yuuki's innocence turned her into a 
                 victim of perverted plans. She accidentally exposed 
                 her panties while they were watching from behind.
            text [Kaesan]
                 .......
            text [Kaesan]
                 I guess this is what you used to see, right?
            text [Takashi]
                 ...Yeah, dad.
                 She's totally not aware of it!
            text [Takashi]
                 It's pretty easy for me to have a peek without getting 
                 caught by her!
            text [Kaesan]
                 ...
                 You're lucky, son.
            text [Takashi]
                 Heheh....
            text [Kaesan]
                 (This brat got to see this everyday, seriously??)
            text [Kaesan]
                 (Look at her booty, he's got to see this booty all the 
                 time...!?)
            text [Kaesan]
                 Damn son!
            text [Takashi]
                 Y- yes, dad...?
            text [Kaesan]
                 Ah- nope, nothing!
                 Let's just enjoy this view.
            text [Takashi]
                 .........
                 Daddy, I have an idea!
            text [Kaesan]
                 Wh- what is it!?
            text [Takashi]
                 Do you want to see her taking her jacket off!?
            text [Takashi]
                 I can talk her out, I did this before!
            text [Kaesan]
                 R- Really...!?
            text [Takashi]
                 Yes, and give me your water bottle too!
                 I had a plan!
            text [Kaesan]
                 Oi- okay...!!
            script $Ev020.clear
                   $Ev020 = nil

            screen_tone(0,0,0,0,duration=20)
            wait 65

            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 \N[1]-san!
            wait 20
            moveroute()
              face down
            movewait
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.shake
            text [\N[1]]
                 *Pants*
                 What is it, Taka-kun?
            text [Takashi]
                 Why don't you take a break and drink some water?
            text [Takashi]
                 You're sweating alot!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 Right...
                 *Haah...*
            text [\N[1]]
                 Working under the sun like this is so exhausting...!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Here, you can drink from this bottle!

            text [Takashi]
                 ....
                 And you should also take your jacket off.
            text [Takashi]
                 T- to cool yourself off, you know...!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,1)
                   $pose.pop
            text [\N[1]]
                 Oh... yeah, it's all wet.
                 Must be because of my sweat...
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            script $Ev003 = Ev003.new("A02","A17",1)
                   $Ev003.pop
            text [\N[1]]
                 Phew... it's sure hot wearing this jacket...
            text Not knowing anything about Takashi's plan, \N[1] 
                 began to take her jacket off unveiling her healthy 
                 bright skin to their eyes.
            wait 35
            text [Kaesan]
                 (Ooh... She's taking it off!)
            text [Takashi]
                 (Heheh...
                 Isn't it amazing, dad...?)
            text [Kaesan]
                 (Yeah...!
                 Women are sexiest when undressing!!)
            wait 25
            script $Ev003.clear
                   $Ev003 = nil
            var(3) = 2
            script $Ev003 = Ev003.new("A04","A17",1)
                   $Ev003.pop
            playSE(volume=80, pitch=100, name="undress")
            text [Kaesan]
                 (Damn...!!
                 She's now adjusting her camisole strings...!!)
            text [Kaesan]
                 (It's like she's gonna take it off too... so hot!)
            text [Takashi]
                 (Hey...!
                 Y- you're being too loud, dad...!)
            script $Ev003.clear
                   $Ev003 = nil
            script $Ev003 = Ev003.new("A03","A17",1)
                   $Ev003.pop
            text [\N[1]]
                 Haah...!
                 It's so refreshing!
            script $Ev003.clear
                   $Ev003 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 30
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 ........
            text [\N[1]]
                 What is it?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Kaesan]
                 N- Nothing! 
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 H- Here, drink some water...!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Thanks, Taka-kun!
            script $pose.clear
                   $pose = nil
            wait 20
            screen_tone(0,0,0,0,duration=20)
            script $Ev017 = Ev017.new("E01",1,0,1,1,0)
                   $Ev017.pop
            text [\N[1]]
                 ........
            text Soaked in sweat, the picture of her, a pretty girl 
                 drinking water became too arousing for them father 
                 and son.
            text [Kaesan]
                 *Gulps*
            text [Kaesan]
                 (This is so freaking hot...!!)
            text [Kaesan]
                 (She's drinking water from my bottle.)
            text [Kaesan]
                 (The way she puts her lips on where I put mine...)
            text [Kaesan]
                 (Isn't this what they call 'Indirect Kiss'...!?)
            text [Takashi]
                 (Heheh...
                 How about it, dad?)
            text [Kaesan]
                 (W- Well done, son!!)
            text [Kaesan]
                 (What a bless for being a kid!!)
            wait 20
            script $Ev017.clear
                   $Ev017 = nil
            script $Ev017 = Ev017.new("E02",1,0,1,0,0)
                   $Ev017.pop
            text [\N[1]]
                 Haaah...!!
            text [\N[1]]
                 Even though it's just water, it's so delicious!
            script $Ev017.clear
                   $Ev017 = nil
            script $Ev017 = Ev017.new("A01",1,0,1,0,0)
                   $Ev017.pop
            text [\N[1]]
                 Hmm...?
                 There's something on my face?
            script $Ev017.clear
                   $Ev017 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Kaesan]
                 Ah-hahah...!!
                 N- Nothing!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Y- yeah...!!
                 We were looking at these plants!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Kaesan]
                 N- Now let's get back to working!
                 We still have many things to do!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 Y- yeah...!!
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20


            wait 50
            switch(127) = 1
            moveroute()
              opacity(255)
            movewait
            switch(42) = 1
            switch(44) = 1
            switch(43) = 0

            screen_tone(0,0,0,0,duration=20)
            wait 30
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (It's evening already?)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="undress")
            var(3) = 1
            wait 35
            screen_tone(0,0,0,0,duration=20)
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I should return home now...)
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 3,
          "move_speed" => 4,
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
            text [Takashi]
                 Ah, \N[1]-san!!
            script $pose = Pose.new("C","A","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Don't push yourself too hard, okay?
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
      "id" => 11,
      "name" => "EV011",
      "x" => 5,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
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
                 (I can't leave this job right now.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              transfer player
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 15" ],
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
      "x" => 14,
      "y" => 2,
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
                 (This cave is dangerous, I shouldn't go there without 
                 a purpose.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
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
          "conditions" => [ "switch(52)", "var(51) >= 15" ],
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
                 (This cave is dangerous, I shouldn't go there without 
                 a purpose.)
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
      "id" => 12,
      "name" => "EV012",
      "x" => 6,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
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
                 (I can't leave this job right now.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              transfer player
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 15" ],
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
      "name" => "Inn Door",
      "x" => 16,
      "y" => 21,
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
      "id" => 7,
      "name" => "Otto-san",
      "x" => 2,
      "y" => 22,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 Nice weather today, isn't it?
          COMMANDS
        },
        {
          "conditions" => [ "switch(126)", "var(1) >= 15" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 ......
            text [Kaesan]
                 I love white panties too.
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E06",1,1)
                   $pose.shake
            text [\N[1]]
                 Don't say that, it's embrassing...
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 There's a bat cave not far from here, Yuuki-san.
            text [Kaesan]
                 You better stay away from it.
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 Yes, we work until it's really dark.
                 We're farmers anyway.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 So many works needed to do and my son has gone 
                 to play with his friends.
            text [Kae-san]
                 I swear when he comes back...
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 Thanks for always watching out my son, \N[1]-san.
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 Thanks for always watching out my son, \N[1]-san.
          COMMANDS
        },
        {
          "conditions" => [ "switch(127)" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
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
          "conditions" => [ "switch(43)", "var(1) >= 151" ],
          "graphic" => { "character" => "143-Farmer01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 5,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Kaesan]
                 Yes, we work until it's really dark.
                 We're farmers anyway.
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
      "x" => 3,
      "y" => 22,
      "pages" => [
        {
          "conditions" => [ "switch(127)", "var(1) >= 151" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
      "id" => 2,
      "name" => "EV002",
      "x" => 8,
      "y" => 4,
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
            text ^ North Forest 
                 > Bat cave
          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "Farmer",
      "x" => 4,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 Please watch out for my son, he likes to play pranks 
                 on everybody.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 I'm really worried about my son's education, he's not 
                 as smart as other childrens.
            text [Mori-san]
                 I know you were helping him to learn, please keep 
                 doing so.
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            text [\N[1]]
                 Yes, I will.
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 Sometimes I feel bad about how our son not being 
                 happy because we're always working all day.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 My son's gone with his friend Hiro-kun earlier.
                 Maybe they're playing near the Green Lake.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 My son has returned, he's working over there.
          COMMANDS
        },
        {
          "conditions" => [ "switch(42)", "var(1) >= 151" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 You're walking around all day yet your skin is so 
                 bright...
            text [Mori-san]
                 (It's so unfair...)
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 151" ],
          "graphic" => { "character" => "144-Farmer02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Mori-san]
                 It's already this late?
                 I need to make dinner for them soon.
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
      "id" => 3,
      "name" => "EV003",
      "x" => 13,
      "y" => 3,
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
            text \c[6][DANGER]
                 \c[0]Be careful of Vampire Bats.
          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 9,
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 160" ],
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
          "conditions" => [ "switch(52)" ],
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
                 (Leaving him behind...?)
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
      "id" => 4,
      "name" => "EV004",
      "x" => 20,
      "y" => 24,
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "EV010",
      "x" => 15,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 2,
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
            text [Bearded Man]
                 Let's explore this cave!
          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 10" ],
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
