map = {
  "tileset" => 43,
  "width" => 25,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "036-Dungeon02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "016-Drips01", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 0,
      "y" => 26,
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

            screen_tone(0,0,0,0,duration=0)
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
            script $pose = Pose.new("A","B","C01",0,0)
                   $pose.slide
            text [\N[1]]
                 (I can't leave him behind...)
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
      "id" => 1,
      "name" => "EV001",
      "x" => 5,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "194-Support02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 10,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 1,
          "commands" => <<-COMMANDS
            screen_tone(0,0,0,0,duration=20)


            moveroute()
              graphic(name="", 0, 2, 0)
            movewait
            wait 20

            var(51) = 6
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 We're really close to them, Yuuki-san!!
            text [Bearded Man]
                 I believe there are tons of them on the higher ground!
            text [Bearded Man]
                 *sniff sniff*
            text [Bearded Man]
                 This smell, it can't be wrong, there are TONS of them!!
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 I'm glad we could make it.
            text [Bearded Man]
                 Yeah!!
                 Climb up using these ladders and we're all rich!
            moveroute()
              face left
            movewait
            text [Bearded Man]
                 Oh, wait...
            text [Bearded Man]
                 The left one is broken...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 I guess we have to use the right one then...
            script $pose.clear
                   $pose = nil
            text [Bearded Man]
                 Yeah, one-by-one.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 Let's go!!
            moveroute()
              unknown19
            movewait
            text [Bearded Man]
                 Ehm... but there might be some dangers awaiting for 
                 us, so...
            moveroute()
              face left
            movewait
            text [Bearded Man]
                 I think the best solution is... you go first!
            text [Bearded Man]
                 I will follow right after, just to back you up if anything 
                 happens!
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.slide
            text [\N[1]]
                 ....Is that so?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 I guess it can't be helped.
            script $pose.clear
                   $pose = nil
            moveroute()
              speed(1)
              unknown19
              unknown15
              transfer player
            movewait
            text [\N[1]]
                 I'm going.
            text [Bearded Man]
                 Please be careful, \N[1]-san.
            wait 20
            moveroute()
              speed(1)
              unknown2
              unknown19
            movewait

            wait 20
            script $Ev006 = Ev006.new("A01", 0, 0)
                   $Ev006.pop
            text As she slowly climbed up the ladder with him 
                 standing right below her, he knew his plan was a 
                 success...
            text [Bearded Man]
                 (Woooh...!!
                 What a sight!!)
            text [Bearded Man]
                 (That was the best idea I've ever had!)
            text [\N[1]]
                 *Climbing*
            text [\N[1]]
                 Hff... hffp...
                 This ladder is old and so creaky.
            text [Bearded Man]
                 Y-yeah... it's old though.
                 Not many knows about this place...
            text [Bearded Man]
                 Even if they knows, they couldn't get this far.
            text [\N[1]]
                 Oh... I see...
            text [Bearded Man]
                 Please be careful, hahah...
                 (Damn..!!)
            text [Bearded Man]
                 (Her ass is so beautiful...!!)
            text [Bearded Man]
                 (Its round shape and its smooth skin had me turned 
                 on!)
            text [Bearded Man]
                 (I've never been this close to such a perfect ass like 
                 this before...)
            text [Bearded Man]
                 (So close... I can even smell the fragrance of her 
                 panties, so fucking good!!)
            text [Bearded Man]
                 (If I stretch my head a little bit closer, I will be able to 
                 smel-)
            playSE(volume=80, pitch=100, name="015-Jump01")
            text [\N[1]]
                 .............!!!!
            text As he sticking out his nose closer to her ass, he 
                 accidentally bumped it to her crotch as their 
                 movements didn't match eachother.
            text [Bearded Man]
                 Ooops!!!
                 I'm- I'm sorry!!
            text [Bearded Man]
                 I didn't mean to... it's just... because you suddenly 
                 stopped moving- so...!!!
            text [\N[1]]
                 ...It's... It's fine.
            text [\N[1]]
                 It's my fault, I'm sorry...
                 Are you OK?
            text [Bearded Man]
                 Ahah-hah...!!
                 I'm okay, my nose is fine!!
            text [Bearded Man]
                 Please keep moving!!
            text [\N[1]]
                 O- Okay...
            text [\N[1]]
                 ................
            text [Bearded Man]
                 (What a naive girl, she didn't even notice?) 
            text [Bearded Man]
                 (Anyway, my nose touched her crotch, heheh...)
            text [Bearded Man]
                 (Its smell made me rocking hard down here...)
            text [Bearded Man]
                 (...........)
            script $Ev006.clear
                   $Ev006 = nil

            screen_tone(0,0,0,0,duration=0)
            wait 45
            text [\N[1]]
                 Finally, uncle-san!
                 Come and see what we have here!
            text [Bearded Man]
                 *Pants* *Pants*
                 Wait.... I'm almost there...!!
            var(51) = 10

            screen_tone(0,0,0,0,duration=20)
            playME(volume=80, pitch=100, name="002-Victory02")

            wait 30
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 Hooooraaay!!!
                 We did it!!
            text [Bearded Man]
                 We found them, clear crystals!!
            text [Bearded Man]
                 There are so many, many around here, just like I 
                 thought!!
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 Thank you so much, Yuuki-san!!
                 If it wasn't you...
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 You're welcome.
                 It was quite an exploration for me!
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown19
            moveroute()
              unknown19
            movewait
            text [Bearded Man]
                 Now if you don't mind...
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 I'm gonna dig and bring some of them back to the 
                 village!
            text [Bearded Man]
                 Please stay until it's done, Yuuki-san.
                 I can't leave this cave without your protection...
            text [\N[1]]
                 I understand.
                 Please take your time.
            text [Bearded Man]
                 Allll-righty!
                 Let's get to work!
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="158-Skill02")
            wait 10
            playSE(volume=80, pitch=100, name="158-Skill02")
            wait 10
            playSE(volume=80, pitch=100, name="158-Skill02")
            wait 10
            playSE(volume=80, pitch=100, name="095-Attack07")
            wait 10
            playSE(volume=80, pitch=100, name="095-Attack07")
            wait 10
            playSE(volume=80, pitch=100, name="095-Attack07")
            wait 10
            wait 45
            text Many hours later....
            moveroute()
              face right
            moveroute()
              face left
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Bearded Man]
                 Phew....
                 This should be enough, let's go back, Yuuki-san.
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.slide
            text [\N[1]]
                 ....Yes!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 (I'm almost fell asleep...)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 40
            var(51) = 15
            moveroute()
              speed(4)

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
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 14,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "194-Support02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
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
      "y" => 24,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 5" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
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
            text [Bearded Man]
                 We're really close to them!
                 I can see many crystal mines around here!
          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 6" ],
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
      "x" => 10,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "194-Support02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => true,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 11,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 0" ],
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
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 6" ],
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
    },
    {
      "id" => 4,
      "name" => "EV004",
      "x" => 10,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [ "var(51) >= 20" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            wait 50

            screen_tone(0,0,0,0,duration=0)

            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Bearded Man]
                 Phew~
                 We've made it through safely, thanks to you!
            text [Bearded Man]
                 Come on, you go first, climb up!
            script $pose = Pose.new("A","A","A04",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",1,0)
                   $pose.shake
            text [\N[1]]
                 O- Okay, stop being so pushy.
            script $pose.clear
                   $pose = nil
            text [Bearded Man]
                 (Heheh... easy as a cake!)
            wait 10
            moveroute()
              speed(1)
              unknown19
              transfer player
            movewait
            moveroute()
              speed(1)
              transfer player
            movewait

            screen_tone(0,0,0,0,duration=20)

            script $Ev006 = Ev006.new("A01",0,0)
                   $Ev006.pop
            text Successfully the man tricked her into his plan.
                 Now her bottom is right in front of him and entirely 
                 exposed.
            text [Bearded Man]
                 (Yeass..!!
                 I got to see it again!)
            text [Bearded Man]
                 (She's completely an idiot.
                 Can't believe she could fall into this old trick...)
            text [Bearded Man]
                 (TWICE...!!)
            wait 20
            text [Bearded Man]
                 (Damn, her ass has got me hard once again!)
            text [Bearded Man]
                 (The sight and the smell coming from her crotch are 
                 killing me...!)
            text [Bearded Man]
                 *Sniffs*
                 *Sniffs*
            text Couldn't resist her smell, he sticked his nose closer to 
                 her crotch and started to sniff it constantly. Noises 
                 he made became louder and louder...
            text [\N[1]]
                 ......?
            text [\N[1]]
                 Wh- what's that sound...?
            text [Bearded Man]
                 (It- It must be from... the bats!
                 Th- They sound creepy, don't they!?)
            text [\N[1]]
                 .....
                 Bats?
            text [Bearded Man]
                 Yeah...!
                 Just don't mind them, keep going, \N[1]-san!
            text [\N[1]]
                 O- Okay...
            text [\N[1]]
                 .............
            wait 20
            script $Ev006.clear
                   $Ev006 = nil
            script $Ev006 = Ev006.new("A01","A01",0)
                   $Ev006.pop
            playSE(volume=80, pitch=100, name="015-Jump01")
            wait 20
            text Wanted to feel the smoothness of her skin, he 
                 reached out his hand and grabbed \N[1]'s thigh
                 then continued to fondle it lightly.
            text [\N[1]]
                 H- Hey...!!
            text [Bearded Man]
                 Oops...!!
                 My hands just slipped, s- sorry...!
            text [\N[1]]
                 Y- You're touching my thigh...!
            text [Bearded Man]
                 I- I know, but I almost fell down...!!
            text [Bearded Man]
                 This rope is so slippery, it can't be helped!!
            text [\N[1]]
                 I- I see.... But...
            text [Bearded Man]
                 I'm sorry, I didn't mean to-
            text [\N[1]]
                 But would you please put your hand off...?
            text [Bearded Man]
                 Aah- yes... I'm so sorry!!
                 (Heheh....)
            script $Ev006.clear
                   $Ev006 = nil
            screen_tone(0,0,0,0,duration=25)
            wait 25
            text [\N[1]]
                 (He touched my thigh...)
            text [Bearded Man]
                 (Heheheh....)
            text [Bearded Man]
                 (Her thighs feel so smooth!!)
            text [Bearded Man]
                 (Can't wait to get another chance to feel her ass too!)
            wait 20
            screen_tone(0,0,0,0,duration=20)

            wait 20
            moveroute()
              opacity(0)
            moveroute()
              opacity(255)
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Bearded Man]
                 Now this is my part!
            moveroute()
              face left
            moveroute()
              face right
            movewait
            text [Bearded Man]
                 Please watch out for me while I'm working.
            moveroute()
              unknown19
            movewait
            wait 20
            screen_tone(0,0,0,0,duration=20)
            wait 20

            wait 100

            wait 40

            moveroute()
              speed(4)
            movewait
            switch(42) = 1
            switch(43) = 1
            switch(44) = 0
            switch(52) = 0
            var(51) = 25
          COMMANDS
        },
        {
          "conditions" => [ "var(51) >= 25" ],
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
      "name" => "MinerEV10",
      "x" => 10,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "switch(52)", "var(51) >= 10" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "switch(52)", "var(51) >= 20" ],
          "graphic" => { "character" => "109-Civilian09", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
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
