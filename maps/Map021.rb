map = {
  "tileset" => 54,
  "width" => 20,
  "height" => 20,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 17,
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
          "conditions" => [ "var(1) >= 144" ],
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

            wait 10
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.shake
            text [\N[1]]
                 South Gate it is...
                 It must be located in the... south, right?
            text [\N[1]]
                 Let's head to the South starting from \c[6]'Main 
                 Village'.
            script $pose.clear
                   $pose = nil
            var(1) = 145
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
            goto event 10
            playSE(volume=80, pitch=100, name="024-Door01")

          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 8,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Mayor",
      "x" => 6,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
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
            text [Mayor]
                 Oh... so you have come, I've been waiting.
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",1,0)
                   $pose.shake
            text [\N[1]]
                 Y-yes, I want to inform you about-

            text [Mayor]
                 I already knew it.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.shake
            text [\N[1]]
                 ...........
            text [Mayor]
                 I can sense a magical aura lingers in the air, weak but 
                 noticable.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.shake
            text [\N[1]]
                 ..........!!
            text [Mayor]
                 It comes from the east, maybe deep into the east 
                 forest....
            text [Mayor]
                 I believe it's the cause that makes wild animals 
                 around here become aggressive more than before.
            text [Mayor]
                 Its power is still weak to human like us, but we must 
                 be cautious.
            moveroute()
              face down
            movewait
            wait 20
            text [Mayor]
                 ....................
            text [Mayor]
                 We must locate the source and destroy it before it 
                 becomes stronger.
            text [Mayor]
                 As the mayor of this village, I won't let anything bad 
                 happen to my people....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,0)
                   $pose.shake
            text [\N[1]]
                 ...I got it.
            text [\N[1]]
                 Please send me on the mission, I will find out what's 
                 happening out there.
            wait 20
            moveroute()
              face right
            movewait
            text [Mayor]
                 ...It might be dangerous, are you willingly risking your 
                 life for people's sake?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,0)
                   $pose.shake
            text [\N[1]]
                 Yes, I am.
            wait 20
            text [Mayor]
                 .......
                 Then I count on you.
            text [Mayor]
                 Go to Item store in the village, the owner there is 
                 my friend.
            text [Mayor]
                 Tell him I sent you, he will give you something to 
                 prepare for this mission.
            text [Mayor]
                 You should be going now.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 Thank you, mayor-san.
            script $pose.clear
                   $pose = nil

            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face down
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 20
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 20" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 May the force be with you.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 40" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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

            moveroute()
              opacity(255)
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Mayor]
                 .................
            text [Mayor]
                 So that was all because of a powerful demon...
            text [Mayor]
                 He's returned peace to our village, but 
                 unfortunately you've been cursed...
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 ...Yes.
            text [\N[1]]
                 But somehow I don't feel anything different...
            text [Mayor]
                 This reminds me of your mother.

            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 ....My mother?
            text [Mayor]
                 Yes, your mother, Kitamura-san.
            text [Mayor]
                 After a fight with a demon that I believe it's the same 
                 one you have encountered...
            text [Mayor]
                 ...She's been cursed.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Mom has been cursed!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",0,0)
                   $pose.pop
            text [\N[1]]
                 So everything that demon said was true?
            wait 20
            text [Mayor]
                 ....I'm afraid so.
            text [Mayor]
                 Your mother didn't tell us more than that.
            text [Mayor]
                 Until this day I still don't know what that curse did to 
                 her.
            text [Mayor]
                 But what surprised me was that she left this village 
                 without telling a word to anyone.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            text [\N[1]]
                 Yes... she's left us when Sei-kun was very little.
            wait 25
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 But we believe she has her own reason to do that.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, that's right!
                 She's our mom after all!
            text [Mayor]
                 .............
            text [Mayor]
                 Yes, maybe she went tracking down that demon, to 
                 make him lift the curse...
            text [Mayor]
                 ..........and to revenge for your father's death.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 ................
            text [Mayor]
                 Well...at least I have a good news for you.
            text [Mayor]
                 I heard that there's a doctor who's staying at the 
                 Togo-san's Inn who might be useful to you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.pop
            wait 40
            text [Mayor]
                 Thank you again, \N[1]-san.
                 You've done a great favour for this village.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Glad I could help.
            wait 25
            moveroute()
              face down
            moveroute()
              unknown19
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,0)
                   $pose.shake
            text [\N[1]]
                 Let's go, Sei-kun.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Yes, 'nee-chan!
            script $pose.clear
                   $pose = nil

            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 45


            moveroute()
              unknown45
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 If you ever need anything, don't hesitate to tell me.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 Our neighbor village are currently under attacked by 
                 a group of bandits.
            text [Mayor]
                 I hope they will be fine.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 143" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

            screen_tone(0,0,0,0,duration=0)

            wait 20
            text [Mayor]
                 .............
            text [Mayor]
                 So... a small group of bandits from next village has 
                 deserted their gang and just came here?
            text [Mayor]
                 This is a big threat for our people...
            text [Mayor]
                 Even when they told you they won't harrass us but 
                 it's just because of one reason.
            text [Mayor]
                 They're still afraid of the rumor that the King's troops 
                 are coming for them.
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.slide
            text [\N[1]]
                 ...Then what we should do now?
            text [Mayor]
                 ..............
            text [Mayor]
                 First we need to find out if the rumor was true.
            text [Mayor]
                 \N[1]-san, I need you to take a trip to the South Gate, 
                 not so far from the South Forest.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.pop
            text [\N[1]]
                 ......
            text [Mayor]
                 You have to talk to the soldiers there to get some 
                 informations.
            text [Mayor]
                 If you have something please let me know 
                 immediately.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.pop
            text [\N[1]]
                 I understand.
            text [Mayor]
                 Good.
                 You're the only one I can trust, \N[1]-san.
            wait 20
            text [Mayor]
                 Oh, and one more thing.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 ....?
            text [Mayor]
                 How do you feel recently?
            text [Mayor]
                 I believe you've met the doctor already.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,1)
                   $pose.pop
            text [\N[1]]
                 Y- Yeah....The meeting was... going well.
            text [\N[1]]
                 Not sure if it works, but he certainly gave me some 
                 useful instructions.
            text [Mayor]
                 I assume it's a good news.
            text [Mayor]
                 Because you need to be strong and well prepared 
                 for this quest.
            text [Mayor]
                 I really don't want to put all of this burden onto your 
                 shoulders.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Don't worry, I can handle it.
                 Just leave it to me.
            text [Mayor]
                 Your mother, if she can see this...
            text [Mayor]
                 ...She would be so proud of you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 .....
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            var(1) = 144
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 144" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 We rely on you, \N[1]-san.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 150" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

            screen_tone(0,0,0,0,duration=0)

            text [Mayor]
                 So, have you got anything?
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.slide
            text [\N[1]]
                 Yes,
                 I've talked to him but things weren't as expected...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.pop
            text [\N[1]]
                 What we heard was true, they've set a camp in 
                 South Forest, waiting for their chance.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 But the rumor was just his plan to lower enemies' 
                 moral.
            text [Mayor]
                 .....
            text [Mayor]
                 He's having trouble with his army?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D04",1,0)
                   $pose.pop
            text [\N[1]]
                 Y- yes.
                 They lack of men and are running out of stock.
            text [\N[1]]
                 The reinforcement is coming but it might take a while.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 He said the only thing we can do right now is waiting 
                 and praying.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Mayor]
                 Non-sense!
                 They're very close to us, those bandits!
            text [Mayor]
                 ............
                 We have to think a way out.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 ..........
            text [Mayor]
                 .........
                 I need time to think.
            text [Mayor]
                 You can leave now.
                 Thank you, \N[1]-san.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 I'm sorry...
            text [Mayor]
                 ......
            text [Mayor]
                 Meanwhile you should prepare your equipments well 
                 just to be safe.
            text [Mayor]
                 I think I'll have to borrow your strength again, one 
                 way or another.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.pop
            text [\N[1]]
                 ...
                 Understood.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 40
            playSE(volume=80, pitch=100, name="024-Door01")

            wait 20
            screen_tone(0,0,0,0,duration=20)
            switch(42) = 1
            switch(44) = 0
            switch(43) = 1
            wait 20
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Upgrade equipments...?)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 (Guess I have to visit the Item shop once again...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 (.........)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 (Oh... it's dark already?
                 I should get back home.)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 40
            playSE(volume=80, pitch=100, name="024-Door01")


            var(1) = 151
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 150" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 I'll let you know when I need you.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 Maybe we could use this man...
            text [Mayor]
                 *Thinking...*
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 152" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
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
              face down
            movewait
            screen_tone(0,0,0,0,duration=0)

            text [Mayor]
                 Have you got your equipment ready?
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 Yes, I'm ready for the next step.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 But have you figured it out yet?
            text [Mayor]
                 Don't worry, I had a plan.
            text [Mayor]
                 First step is... You have to get in contact with the 
                 thief you've encountered before.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,1)
                   $pose.shake
            text [\N[1]]
                 Th- that perverted thief!?
            text [\N[1]]
                 What does this thing have to do with him anyway!?
            text [Mayor]
                 I know he's a bad person, but my plan has him in it.
            text [Mayor]
                 You mentioned that he was in the gang before, right?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 ....Yes.
            text [Mayor]
                 Good, now you have to convince him to help you to 
                 get in his gang...
            text [Mayor]
                 ...as a prisoner.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,0)
                   $pose.shake
            text [\N[1]]
                 ....What!? Prisoner?
            wait 20
            text [Mayor]
                 ....
                 I know this isn't fair for you.
            text [Mayor]
                 But we really don't have any other choice.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C01",1,0)
                   $pose.pop
            text [\N[1]]
                 ......
            text [Mayor]
                 This will put you in danger, but I believe you can do it.
            text [Mayor]
                 You need to find a chance to be alone with their 
                 leader and kill him without being caught.
            text [Mayor]
                 From outside, army soldiers will engage while they're 
                 still in disorder.
            text [Mayor]
                 That's my plan.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.pop
            text [\N[1]]
                 B- But....
            text [Mayor]
                 .......
            text [Mayor]
                 Do not fear.
                 I believe in you.
            text [Mayor]
                 I'm sure none of them has ever met a Demon and 
                 came out alive, like you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 ..........
                 I understand.
            text [Mayor]
                 About convincing that thief, I'll give you an amount of 
                 gold to start with.
            text [Mayor]
                 I hope he won't demand more than this.
            wait 20

            playSE(volume=80, pitch=100, name="006-System06")
            text Received \c[6]5000G\c[8].
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 (Th- that's a really big amount!)
            text [Mayor]
                 Please, \N[1]-san.
                 You know many people's lives are on your hands.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 Yes, mayor-san.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 30

            screen_tone(0,0,0,0,duration=20)
            wait 40
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Now I have to find that perverted thief once again...)
            text [\N[1]]
                 (He must be living somewhere in West Forest, along 
                 with his men.)
            script $pose.clear
                   $pose = nil
            var(1) = 153
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 153" ],
          "graphic" => { "character" => "111-Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Mayor]
                 I know that General Commander, he'll listen I believe.
                 The rest is up to you.
          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "Seita",
      "x" => 7,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 40" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
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
          "conditions" => [ "var(1) >= 45" ],
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
    }
  ]
}
