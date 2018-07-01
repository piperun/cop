map = {
  "tileset" => 38,
  "width" => 20,
  "height" => 15,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 6,
      "y" => 14,
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
      "id" => 11,
      "name" => "EV011",
      "x" => 8,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Thug]
                 I admit that you're stronger than me, but who knows. 
                 Heheheh...
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 16,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "173-Door04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 2, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            goto event 4
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Candle",
      "x" => 9,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "EV012",
      "x" => 6,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Thug]
                 I bet Theff already had your panties, right?
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            text [\N[1]]
                 (...........)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 14,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
      "id" => 2,
      "name" => "Candle",
      "x" => 3,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "EV013",
      "x" => 6,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            if switch(42) == true
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Oi, you've come!
              text [Theff]
                   .......
                   You're wearing a new pair of panties today?
              script $pose = Pose.new("A","A","E06",0,1)
                     $pose.slide
              text [\N[1]]
                   ......
                   Do I need to answer that question?
              text [Theff]
                   Heheheh... just kidding.
              text [Theff]
                   Ready to move?
                   It'd take a day or two depends on our speed.


                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A03",0,0)
                       $pose.slide
                text [\N[1]]
                     Yeah, we must hurry.
                script $pose.clear
                       $pose = nil
                text [Theff]
                     Alright then!
                     Let's go to 'North Forest'!
                screen_tone(0,0,0,0,duration=20)
                wait 40
                playSE(volume=80, pitch=100, name="014-Move02")
                wait 20

                screen_tone(0,0,0,0,duration=20)


                text [Theff]
                     Ok, take whatever you need.
                script $pose.clear
                       $pose = nil

            else
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Oi, you've come!
              text [Theff]
                   .......
                   You're wearing a new pair of panties today?
              script $pose = Pose.new("A","A","E06",0,1)
                     $pose.slide
              text [\N[1]]
                   ......
                   Do I need to answer that question?
              text [Theff]
                   Heheheh... just kidding.
              text [Theff]
                   Ready to move?
                   It'd take a day or two depends on our speed.


                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A03",0,0)
                       $pose.slide
                text [\N[1]]
                     Yeah, we must hurry.
                script $pose.clear
                       $pose = nil
                text [Theff]
                     Alright then!
                text [Theff]
                     But it's a little bit late right now, really dangerous to go 
                     at this time.
                text [Theff]
                     Just rest until morning and we will move.
                screen_tone(0,0,0,0,duration=20)
                wait 40
                goto event 13
                wait 40

                screen_tone(0,0,0,0,duration=20)
                wait 25


                text [Theff]
                     Ok, take whatever you need.
                script $pose.clear
                       $pose = nil

            end
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
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 17,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
      "name" => "Candle",
      "x" => 15,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 6,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 153" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            moveroute(skippable)
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
            text [Theff]
                 Wh- Why are you coming after me!?
            text [Theff]
                 I thought we're done before!
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 ...........
                 I'm not going to harm you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 Actually...
                 I need your help.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 ...What!?
                 You need my help?
            text [Theff]
                 Are you serious?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",1,0)
                   $pose.pop
            text [\N[1]]
                 I'm totally serious.
                 Many people's lives are involved.
            text [Theff]
                 What do you want from a thief?
            text [\N[1]]
                 Well....
            text [Theff]
                 W- Wait...!
            text [Theff]
                 I can't let this opportunity slip away!
            script $pose.clear
                   $pose = nil

            screen_tone(0,0,0,0,duration=20)
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A01",0,"A",0,0)
            text [Theff]
                 I'm not gonna hold back!
            switch(11) = 0
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A05","A04",0,"B",0,0)
            text Suddenly, the perverted thief became aggressive.
                 He reached out his hands and began to maasage
                 \N[1]'s breasts.
            script $ev001.p("B","B01","A05",1,"B",0,0)
            text [\N[1]]
                 H- Hey...!!
            text [Theff]
                 Woah... watch your tone!
            text [Theff]
                 You're the one seeking for my help, remember!?
                 And where is your gratitude!?
            script $ev001.p("B","C02","A02",1,"B",0,0)
            text [\N[1]]
                 You....!
            text [\N[1]]
                 You do this... because I've beaten you before?
            text [Theff]
                 Heheheh...
                 You're smart, girl.
            text [Theff]
                 But there's nothing you can do about it, leave or stay, 
                 the choice is yours.
            text [\N[1]]
                 .......!
            text [Theff]
                 Now say what you want to say, I will see if I want to 
                 help you or not.
            script $ev001.p("B","C01","A05",1,"B",0,0)
            text [\N[1]]
                 Y- You want me to talk like this...!?
            text [Theff]
                 Of course, heheheh...
            script $ev001.p("B","C04","A06",1,"B",0,0)
            text [\N[1]]
                 F- Fine!
            script $ev001.p("B","C04","A02",1,"B",0,0)
            text [\N[1]]
                 (...I must stay strong!)
            script $ev001.p("B","C02","B07",1,"B",0,0)
            text [\N[1]]
                 You've told me you were in that bandit gang before, 
                 have you?
            text [Theff]
                 Yes, we all here were in the gang.
            script $ev001.p("B","C02","A02",1,"B",0,0)
            text [\N[1]]
                 Then... I need you to help me get in their base, in 
                 disguise.
            script $ev001.massage_off
            wait 20
            text [Theff]
                 Wh- what!?
            text [Theff]
                 No, I won't return to that place again, the boss will 
                 chop my head off!!
            script $ev001.p("B","C01","A05",1,"B",0,0)
            text [\N[1]]
                 So use your speech, or gold, or anything!
                 That's why I need you.
            wait 35
            script $ev001.massage_on("A","B",5)
            text [Theff]
                 ....It's too risky for me.
                 But if the price is good enough...
            script $ev001.massage_off
            script $ev001.p("B","B04","B07",1,"A",1,"B")
            text [\N[1]]
                 D- Don't worry, I have a lot of g-
            text Didn't let her finish the line, Theff stopped playing 
                 with her breasts for a moment to pull her camisole 
                 straps down, he clearly wanted to strip it off.
            script $ev001.p("B","B05","A05",1,"A",1,"B")
            text [\N[1]]
                 Wait- what are you doing!?
            text [Theff]
                 What do you think I'm doing?
            text [Theff]
                 I'm gonna put my life on this, so listen my conditions 
                 carefully.
            wait 15
            script $ev001.p("B","C04","A06",1,"A",2,0)
            script $ev001.shake_on
            text [\N[1]]
                 ...Aah!
            wait 20
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","C04","A06",1,"H",2,0)
            text After stripped her top down, Theff once again began 
                 to massage her breasts, directly.
            text A direct touching to her bare breasts made \N[1] 
                 tremble in pleasure a little bit, her voice became weak 
                 as she started to breath heavily.
            text [Theff]
                 First: you will give me 5000G, just in case I 
                 need to bribe someone.
            text [\N[1]]
                 *Haah...*
                 Y- Yes, I have a lot of gold!
            if CONDITION UNKNOWN
              playSE(volume=80, pitch=100, name="006-System06")
              text \c[6]Removed 5000G.

            else
              text [Theff]
                   Wait, you don't have enough.
              text [Theff]
                   Hmm.... Fine!
                   I'll take whatever is left.

              playSE(volume=80, pitch=100, name="006-System06")
            end
            text [Theff]
                 Second: you will do anything I say.
            text [\N[1]]
                 Hyaah...!
                 A- Anything...?
            text [Theff]
                 Yeah...
                 And last one: ....
            text [Theff]
                 ...You're gonna give me your panties you're wearing, 
                 right now.
            script $ev001.p("B","C02","A06",1,"H",2,0)
            text [\N[1]]
                 ...Wh- what!?
            text [\N[1]]
                 ...My panties!?
            text [Theff]
                 Heheheh...
                 That's right!
            text [Theff]
                 I freaking love panties, especially when it belongs to 
                 a good looking girl like you!
            text [\N[1]]
                 ...H- How about a spared one?
            text [Theff]
                 No, only the one you're wearing!
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","C04","B06",1,"G",2,0)
            goto event 21
            text [\N[1]]
                 Hyaah...!!
                 N- Not my nipples!!
            text [Theff]
                 Heheheh....
                 Are you gonna do it or not!?
            text The feeling was too strong, her mind couldn't think 
                 clearly as she ended up agreed on every condition 
                 he told her to.
            text [\N[1]]
                 Okay....!!
                 I- I will do it!
            goto event 21
            text [\N[1]]
                 I- I'm gonna...!!
            goto event 21
            wait 15
            goto event 22
            text [\N[1]]
                 Hy- Hyaah....!!
            script $ev001.massage_off
            text Theff's nipples teasing worked really well on her.
                 She couldn't resist the pleasure and let out a loud 
                 moan while her body was quivering with excitement.
            text [\N[1]]
                 Hah... Haah...!
            text [Theff]
                 D- Did you just cum?
            text [Theff]
                 Hahah...!!
                 My first time watching a woman having an orgasm!!
            text [Theff]
                 You sure have a sensitive body, it feels amazing, 
                 right!?
            script $ev001.p("A","C04","A05",1,"A",2,0)
            text [\N[1]]
                 (*Haahh...*
                 It must be because of the curse inside me!)
            text [\N[1]]
                 (I- I can't help but going numb when they tease my 
                 nipples...!)
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 25
            text [Theff]
                 Now your panties must be soaked already which is 
                 good for me!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 Turn your ass this way and take it off quickly!
                 I can't wait to see it!
            wait 20
            moveroute()
              face down
            movewait
            wait 30
            script $Ev004 = Ev004.new("A01","D03",1)
                   $Ev004.pop
            text \N[1] turned her back against the perverted thief as 
                 she sticked out her perfect rounded ass to him 
                 willingly.
            text Thinking about her current shameful situation, she felt 
                 a little exciting.
            text [\N[1]]
                 (.........
                 Can't believe I'm doing this for a thief.)
            text [\N[1]]
                 (But I have to endure it... for a greater good.)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 What a great ass, I have to admit!
            text [Theff]
                 C'mon, pull it down, don't make me wait!
            text [\N[1]]
                 ..........
            text [Theff]
                 Hey, what are you waiting for?
                 I'm gonna risk my life for your goddamn village!
            script $Ev004.clear
                   $Ev004 = nil
            script $Ev004 = Ev004.new("B01","D03",1)
                   $Ev004.pop
            text [\N[1]]
                 (Ugh...
                 I have no choice...!)
            text [\N[1]]
                 (Giving him my... dirty panties, it's so... wrong.)
            playSE(volume=80, pitch=100, name="undress")
            script $Ev004.clear
                   $Ev004 = nil
            script $Ev004 = Ev004.new("C02","D03",1)
                   $Ev004.pop
            var(3) = 11
            state(actor=1, state=17) = true
            switch(1) = 0
            wait 20
            text \N[1] completely took her panties off as she kept 
                 exposing her ass to the perverted man.
            text [\N[1]]
                 ...Satisfied now?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Theff]
                 Woooh!
                 What a sight!!
            text [Theff]
                 An invincible strong swordswoman is taking her 
                 panties off to give them to a filthy thief!
            text [Theff]
                 Who could have believe this, hahahah!!!
            text [\N[1]]
                 .........
            script $Ev004.clear
                   $Ev004 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              unknown19
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 25
            script $pose = Pose.new("A","B","E02",0,1)
                   $pose.slide
            text [\N[1]]
                 ...It's done.
                 Now we have an agreement.
            text [Theff]
                 Yeah, you have my words.
            text [Theff]
                 Come to see me later whenever you're ready to go.
            text [Theff]
                 Be prepared, those bandits are evils, they won't go 
                 easy on you.
            text [Theff]
                 Now I have something to do with these panties~
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",1,1)
                   $pose.pop
            text [\N[1]]
                 (.......
                 What a pervert!)
            script $pose.clear
                   $pose = nil

            screen_tone(0,0,0,0,duration=20)
            wait 50
            var(1) = 154
            moveroute(skippable)
              speed(4)
            movewait

            switch(44) = 0
            switch(43) = 1
            switch(42) = 1
            goto event 10
            wait 35
            script $pose = Pose.new("A","B","E06",1,1)
                   $pose.slide
            text [\N[1]]
                 (I should get back home quickly, it'd be the shame if 
                 anyone knows that I don't wear anything down here)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "Candle",
      "x" => 11,
      "y" => 11,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "EV010",
      "x" => 4,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 155" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Thug]
                 Heheheh...
                 Good luck on your trip with Theff.
          COMMANDS
        }
      ]
    }
  ]
}
