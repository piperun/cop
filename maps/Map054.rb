map = {
  "tileset" => 54,
  "width" => 22,
  "height" => 15,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 8,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            moveroute()
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Shop owner]
                 Hey, don't get into my room without my permission!!
            script $pose = Pose.new("A","B","B02",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B02",0,1)
                   $pose.shake
            text [\N[1]]
                 S-sorry...!
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
            moveroute()
              face down
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Door",
      "x" => 20,
      "y" => 4,
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 10,
      "y" => 14,
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
        }
      ]
    },
    {
      "id" => 3,
      "name" => "Guest",
      "x" => 10,
      "y" => 13,
      "pages" => [
        {
          "conditions" => [ "switch(128)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian03", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
      "name" => "Shop owner",
      "x" => 10,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 15" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 Oh, isn't this \N[1]-san?
            text [Karmal]
                 I believe our mayor has something to discuss with  
                 you.
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 20" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Karmal]
                 Mayor-san sent you on a mission?
            text [Karmal]
                 This is quite interesting, it's been a long time since he 
                 has sent somebody out for mission.
            script $pose = Pose.new("A","A","D03",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D03",0,0)
                   $pose.shake
            text [\N[1]]
                 ..............
            text [Karmal]
                 Last time if I remember correctly, it was your mother.
            text [Karmal]
                 4 years, it passed so fast....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 ................
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Karmal]
                 Ouch, I'm sorry!!
                 I didn't mean to....
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D04",0,0)
                   $pose.pop
            text [\N[1]]
                 I- It's alright...
            text [Karmal]
                 Well then, as the mayor's instruction. I'm gonna give 
                 you some equiments for the mission.
            text [Karmal]
                 Of course they're all free, don't worry.
            text [Shop owner]
                 But I have to... erm-
            text [Karmal]
                 ...measure your body in order to give you the right 
                 size armor.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B01",0,1)
                   $pose.shake
            text [\N[1]]
                 ...........!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Karmal]
                 D- Don't worry!
                 This is just a formality!
            text [Karmal]
                 If we don't do it, there's no other way around for me 
                 to give you the right one!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (...........)
            text [\N[1]]
                 (...........................)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D03",0,1)
                   $pose.pop
            text [\N[1]]
                 I understand.
                 Please go ahead.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Karmal]
                 R-really!!?
            text [Karmal]
                 Very well.... then...
            script $pose.clear
                   $pose = nil

            wait 20

            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A01",1,"A",0,0)
            text [\N[1]]
                 (.............)
            text [Karmal]
                 Please stay still.
            switch(11) = 1
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","A05","A04",1,"B",1,0)
            text The man reached out and firmly grabbed \N[1]-chan 
                 delicious breasts.
            text [\N[1]]
                 Ah~
                 .......
            text [Karmal]
                 ....Is everything alright?
            script $ev001.p("A","C04","A02",1,"B",1,0)
            text [\N[1]]
                 Nevermind....
                 Please keep going.
            text [Karmal]
                 ..........
            text [Karmal]
                 ....Can you raise your arms a little bit?
                 It'd be easier if you do so...
            script $ev001.Graphics_freeze
            script $ev001.p("B","A01","A04",1,"B",1,0)
            text [\N[1]]
                 Like this...?
            text [Karmal]
                 Yes, it's perfect!
            text [Karmal]
                 Here we go.
            switch(11) = 0
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","C04","A06",1,"B",1,0)
            text [\N[1]]
                 Haah....
            text Suddenly the owner started to massage her breasts 
                 as she couldn't hold it but let out a little moan....
            text [\N[1]]
                 W- what are you doing....?
            text [Karmal]
                 Please calm down,
                 This is my measurement method.
            text [Karmal]
                 It will be over soon.
            script $ev001.p("B","C04","A02",1,"B",1,0)
            text [\N[1]]
                 ....Al-alright.
            script $ev001.massage_on("B","B",5)
            text [Karmal]
                 Thanks, just a little more.
            script $ev001.p("B","C05","A02",1,"B",1,0)
            text [\N[1]]
                 (He's having fun at teasing my chest, isn't he?)
            text [\N[1]]
                 (I regret for letting him do this...)
            text Knowing that was wrong but becasue of the armor, 
                 she let him feel her breasts a little more....
            wait 35
            script $ev001.p("B","C02","A06",1,"B",1,0)
            text [\N[1]]
                 .........
                 Are you done yet?
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Karmal]
                 Ah- yes!!
                 I got it!!
            text [Karmal]
                 Please wait a moment.
            wait 20
            moveroute()
              unknown19
              unknown15
              speed(2)
              move forward
              move forward
              move forward
              unknown15
            movewait
            text [Karmal]
                 (Damn, like mother like daughter, she's got huge 
                 breasts just like her mom...)
            text [Karmal]
                 (It's been damn 4 years since the last time I groped 
                 someone breasts!)
            text [Karmal]
                 (Her mother's breasts were the best I've touched, but 
                 her daughter breasts are special too!)
            text [Karmal]
                 (Wish I could feel them again... barely...
                 mumble mumble...)
            wait 25
            moveroute()
              unknown15
              face down
              move forward
              move forward
              move forward
              unknown15
            movewait
            text [Karmal]
                 Here they are!
                 All is brand new equiments.


            wait 20
            playME(volume=80, pitch=100, name="010-Item01")
            text Received
                 \c[6]Iron Sword +1, Green Apple +5.
            wait 20
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 Thanks.
            text [\N[1]]
                 (That was... embrassing...)
            text [Karmal]
                 Take care, \N[1]-san.
                 (Heheh...)
            script $pose.clear
                   $pose = nil

            screen_tone(0,0,0,0,duration=20)
            wait 20
            moveroute()
              face down
            movewait

            screen_tone(0,0,0,0,duration=20)
            wait 20
            var(1) = 25
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 25" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 You want another measurement?
                 *grins*
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 So... you've encountered that demon!?
            text [Karmal]
                 Did he cast a curse upon you!?
            script $pose = Pose.new("A","A","B02",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","B02",1,0)
                   $pose.pop
            text [\N[1]]
                 ........
                 How do you know that!?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Karmal]
                 AHAHahah....
            text [Karmal]
                 I- I just guess, you know...!!
            text [Karmal]
                 I'm glad that you're still alright!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E02",0,0)
                   $pose.pop
            text [\N[1]]
                 .............
            text [\N[1]]
                 (He must be hiding something...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 Ah, it's Yuuki-ch-
                 I mean, Yuuki-san, hahah...!!
            text [Karmal]
                 Do you need anything?

            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.slide
            text [\N[1]]
                 ........
                 Only apples?
            text [Karmal]
                 "Sorry, right now that's the only option available."
            text [Karmal]
                 That's what the maker told me.
                 ......
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 Hmm....
            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.slide
            text [\N[1]]
                 What's wrong....?
            script $pose.clear
                   $pose = nil
            text [Karmal]
                 I'm looking for someone who can help me run this 
                 shop.
            text [Karmal]
                 Nevermind, what do you want to buy?

            script $pose = Pose.new("A","B","B01",0,0)
                   $pose.slide
            text [\N[1]]
                 ........
                 Only apples?
            text [Karmal]
                 "Sorry, right now that's the only option available."
            text [Karmal]
                 That's what the maker told me.
                 ......
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 Hey, wanna buy something today?



              script $pose = Pose.new("A","B","B01",0,0)
                     $pose.slide
              text [\N[1]]
                   ........
                   Only apples?
              text [Karmal]
                   "Sorry, right now that's the only option available."
              text [Karmal]
                   That's what the maker told me.
                   ......
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","B","D07",1,0)
                     $pose.pop
              text [\N[1]]
                   ..............
              script $pose.clear
                     $pose = nil

              if CONDITION UNKNOWN
                text [Karmal]
                     You want me to upgrade your equipment?
                text [Karmal]
                     That would cost a lot,
                     I mean... some materials would be expensive.
                script $pose = Pose.new("A","A","A03",0,0)
                       $pose.slide
                text [\N[1]]
                     ........
                     How much for upgrading my sword?
                text [Karmal]
                     Well... Upgrading from 'Bronze Sword' to
                     'Iron Sword' would cost you...
                text [Karmal]
                     ...\c[6]4000G\c[8]!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A05",0,0)
                       $pose.shake
                text [\N[1]]
                     Oh... if so then I can afford it.
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     Wh- what...!?
                text [Karmal]
                     You can?
                text [Karmal]
                     This... you must be cheating, right?
                text [Karmal]
                     Then I guess you've missed something fun.
                     Very well...
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A04",0,0)
                       $pose.pop
                text [\N[1]]
                     What do you mean?
                script $pose.clear
                       $pose = nil
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     No- nothing!
                text [Karmal]
                     ......
                     I will upgradte it now, just a second.
                screen_tone(0,0,0,0,duration=20)
                wait 50
                playSE(volume=80, pitch=100, name="089-Attack01")
                wait 10
                playSE(volume=80, pitch=100, name="090-Attack02")
                wait 10
                playSE(volume=80, pitch=100, name="091-Attack03")
                wait 10
                playSE(volume=80, pitch=100, name="097-Attack09")
                wait 15
                playSE(volume=80, pitch=100, name="098-Attack10")
                wait 15
                playSE(volume=80, pitch=100, name="097-Attack09")
                wait 10
                playSE(volume=80, pitch=100, name="098-Attack10")
                wait 10
                playSE(volume=80, pitch=100, name="098-Attack10")
                wait 10
                playSE(volume=80, pitch=100, name="098-Attack10")
                wait 50
                screen_tone(0,0,0,0,duration=20)
                wait 20
                text [Karmal]
                     Here it is, your new sword.


                playSE(volume=80, pitch=100, name="056-Right02")
                text Received \c[6]'Iron Sword'\c[8].
                script $pose = Pose.new("A","B","A05",0,0)
                       $pose.slide
                text [\N[1]]
                     Oh... It looks stronger now.
                     Thank you!
                text [Karmal]
                     ........
                text [Karmal]
                     I know you're always on the mission to help the 
                     village, at least this is what I can do for you.

                text Received 3 \c[6]'Special Potions'\c[8].
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","B02",0,0)
                       $pose.shake
                text [\N[1]]
                     Oh... these potions...
                text [Karmal]
                     Hope they will help you out.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.shake
                text [\N[1]]
                     I'm sure they will.
                script $pose.clear
                       $pose = nil
                screen_tone(0,0,0,0,duration=20)
                wait 20
                script $pose = Pose.new("A","A","A01",0,0)
                       $pose.slide
                text [\N[1]]
                     Now my equipment is upgraded, I should talk to 
                     Mayor-san to hear about his next step.
                text [\N[1]]
                     But first I should make sure I didn't miss something 
                     out there.
                script $pose.clear
                       $pose = nil
                playSE(volume=80, pitch=100, name="056-Right02")
                text \c[6]Advancing further to the main storyline would 
                     make you miss some current events.
                text \c[6]Please make sure you explored the whole map 
                     before heading to Mayor's house.
                var(1) = 152

                screen_tone(0,0,0,0,duration=20)
                wait 20
              else
                text [Karmal]
                     You want me to upgrade your equipment?
                text [Karmal]
                     That would cost a lot,
                     I mean... some materials would be expensive.
                script $pose = Pose.new("A","A","A03",0,0)
                       $pose.slide
                text [\N[1]]
                     ........
                     How much for upgrading my sword?
                text [Karmal]
                     Well... Upgrading from 'Bronze Sword' to
                     'Iron Sword' would cost you...
                text [Karmal]
                     ...\c[6]4000G\c[8]!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","B01",1,0)
                       $pose.shake
                text [\N[1]]
                     W- what!?
                text [\N[1]]
                     It's so expensive!
                text [Karmal]
                     Sorry, it can't be helped.
                     That's the best I can offer.
                text [Karmal]
                     *Ehem*
                     But...
                text [Karmal]
                     I can lower the price for you-
                     No, I will even make it free...!
                text [Karmal]
                     But in return, you must do me a favor.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","E06",1,1)
                       $pose.pop
                text [\N[1]]
                     ..........
                text [\N[1]]
                     You... aren't thinking about something perverted?
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     N- No!
                     Why do you say so!?
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","D07",0,1)
                       $pose.pop
                text [\N[1]]
                     I- I'm sorry...
                     ...So, what is it?
                text [Karmal]
                     The job is very easy and simple...
                text [Karmal]
                     You just have to work for me, as a shopkeeper just 
                     for one day!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","B02",0,0)
                       $pose.shake
                text [\N[1]]
                     ........
                     Just that?
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     Y- yeah!!
                     Pretty easy, right!?
                text [Karmal]
                     Just need you to stand here, welcoming my guest 
                     with a smile and make them happy!
                text [Karmal]
                     Honestly I've always wanted to hire one like you to 
                     increase my sale.
                text [Karmal]
                     I think this will work out for both of us, don't you 
                     agree!?
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","D06",1,0)
                       $pose.pop
                text [\N[1]]
                     Well... I'm a little surprised.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A01",0,0)
                       $pose.pop
                text [\N[1]]
                     I think I can't say no on this!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","A","A06",0,0)
                       $pose.shake
                text [\N[1]]
                     Thank you, oji-san!
                script $pose.clear
                       $pose = nil
                text [Karmal]
                     You're welcome!
                     Why don't you start working right now!?
                screen_tone(0,0,0,0,duration=20)
                wait 40
                text [Karmal]
                     Don't be shy, just come here!
                text [Karmal]
                     This is where you stand, I also have a list of goods 
                     with prices here!
                text [Karmal]
                     I have something to do now but I'll just be right behind 
                     you, don't worry!
                text [\N[1]]
                     Oh- okay.
                     ...Thank you.
                text [Karmal]
                     Remember to always welcome them with a smile, got 
                     it!?


                wait 35

                screen_tone(0,0,0,0,duration=20)
                wait 45
                playSE(volume=80, pitch=100, name="024-Door01")
                switch(128) = 0
                wait 20
                moveroute(skippable)
                  speed(2)
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                movewait
                script $pose = Pose.new("A","B","A05",0,0)
                       $pose.slide
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",0,0)
                       $pose.shake
                text [\N[1]]
                     Welcome!
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Woaa!!
                     W- who are you!?
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",1,0)
                       $pose.pop
                text [\N[1]]
                     I'm Yuuki, the new worker here.
                text [\N[1]]
                     How may I-
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Y- you're so pretty!
                     How long have you been working here!?
                text [Villager]
                     Can't believe that old man could have a beautiful 
                     worker like you!!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",1,1)
                       $pose.pop
                text [\N[1]]
                     Th- thanks.
                text [\N[1]]
                     ...How may I help you then?
                text [Villager]
                     Hahah... I'm sorry!
                     It's because-
                text [Villager]
                     Nevermind!
                     I... erm... I want my armor to be repaired.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",0,0)
                       $pose.pop
                text [\N[1]]
                     Then you can leave it here, it will be repaired as soon 
                     as possible!
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Y- Yes, then I'll leave it here!!
                text [Villager]
                     I'll come back tomorrow, okay!?
                     Will you be here tomorrow!!?
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",1,0)
                       $pose.pop
                text [\N[1]]
                     Erm...
                     About me, I'm not sure.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",1,0)
                       $pose.pop
                text [\N[1]]
                     But I'm sure that your armor will be ready when you 
                     come back!
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     O- okay!!
                     I'll come back later!!
                text [Villager]
                     Hope to see you again!!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.pop
                text [\N[1]]
                     Y- Yes...
                     Thank you very much.
                wait 20
                moveroute(skippable)
                  unknown1
                  unknown1
                  unknown1
                  unknown1
                  unknown1
                  unknown15
                  playSE(volume=80, pitch=100, name="024-Door01")
                  opacity(0)
                movewait
                wait 45
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A01",0,0)
                       $pose.pop
                text [\N[1]]
                     Well, looks like this job isn't so bad.
                moveroute()
                  face down
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     Hey, is everything alright?
                moveroute()
                  unknown19
                movewait
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",0,0)
                       $pose.shake
                text [\N[1]]
                     Yes, everything is fine.
                text [Karmal]
                     That man earlier, he looked happy.
                     Good job!
                moveroute()
                  unknown19
                  graphic(name="Civilian11", 0, 8, 0)
                  opacity(255)
                  playSE(volume=80, pitch=100, name="024-Door01")
                movewait
                wait 20
                moveroute()
                  face down
                movewait
                wait 15
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","B02",0,0)
                       $pose.shake
                text [\N[1]]
                     Oh, another customer.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.pop
                text [\N[1]]
                     Please come in!
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Ooh!!
                     A girl!?
                moveroute(skippable)
                  speed(3)
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Hey there, beautiful~
                     Are you new here!?
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A05",1,0)
                       $pose.pop
                text [\N[1]]
                     Ah- yes!
                     H- how may I help you?
                script $pose.clear
                       $pose = nil
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Villager]
                     Of course you can help me, heheh....!!
                wait 35
                moveroute(skippable)
                  speed(2)
                  unknown1
                  unknown1
                movewait
                wait 25
                script $Ev019 = Ev019.new("B01","B",1,"A","A",1,0,0,0)
                       $Ev019.pop
                text The old man slowly crawled behind her and remained 
                     undetected while she did the talking with his 
                     customer.
                text [Karmal]
                     (Heheh... what a booty-ful day!)
                text [Karmal]
                     (I can almost see her panties, I wonder what color 
                     she's wearing right now...)
                text [Karmal]
                     (Haah....
                     Can't hold it anymore!)
                text [Karmal]
                     (It'd be a shame if she caught me doing this, but it's 
                     worth trying...)
                text [Karmal]
                     (Just need to be careful, light as a feather...)
                wait 30
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("B01","B",1,"A","A",1,"B",0,0)
                       $Ev019.pop
                wait 25
                text As she's busy talking with the customer, the old man 
                     silently got even closer and lower to the ground.
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("B04","B",1,"A","A",1,"B",0,0)
                       $Ev019.pop
                text [\N[1]]
                     Yes, we can fix your broken gloves, you can leave it 
                     right here.
                text [\N[1]]
                     Yes?
                     Oh, of course. It will be finished in a few days.
                wait 25
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("B22","B",1,"B","B",1,"B",0,1)
                       $Ev019.pop
                playSE(volume=60, pitch=100, name="undress")
                wait 20
                text [\N[1]]
                     Hahah... Please don't say that.
                     It's so embarrassing...!
                wait 30
                text [Karmal]
                     (Heheh... I did it, she still doesn't feel a thing!!)
                text [Karmal]
                     (Look at this ass, she sure got a big booty!)
                text [Karmal]
                     (Goddamnit! I want to touch it so bad...!!)
                text [Karmal]
                     (This is true blessing to an old man like me, it's been a 
                     really long time...)
                text [Karmal]
                     (It reminds me of her mother's ass...)
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("B17","B",1,"B","B",1,"B",1,0)
                       $Ev019.pop
                text [\N[1]]
                     Phew... finally he's left.
                     What a talky man...
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("B03","B",1,"B","B",1,"B",0,0)
                       $Ev019.pop
                text [\N[1]]
                     Hmm....?
                script $Ev019.clear
                       $Ev019 = nil
                script $Ev019 = Ev019.new("A03","A",1,"B","B",1,"B",0,0)
                       $Ev019.pop
                text [\N[1]]
                     Oji-san...?
                     What are you doing?

                moveroute()
                  opacity(0)
                movewait
                script $Ev019.clear
                       $Ev019 = nil

                moveroute()
                  unknown19
                movewait
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     No- nothingg...!!
                text [Karmal]
                     I- I was just checking out how everything is going!!
                     ...Hahahah~
                script $pose = Pose.new("A","B","A04",0,0)
                       $pose.slide
                text [\N[1]]
                     ...Is that so?
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [Karmal]
                     Y- Yeah!!
                     I see you're doing great, keep it up!
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.shake
                text [\N[1]]
                     It's not so hard, but thank you!
                script $pose.clear
                       $pose = nil
                text [Karmal]
                     Yeah-
                     Hahah...!!
                moveroute()
                  graphic(name="Civilian01", 0, 8, 0)
                  playSE(volume=80, pitch=100, name="024-Door01")
                  unknown15
                  opacity(255)
                movewait
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                wait 25
                text [Karmal]
                     L- Look, another customer!!
                moveroute()
                  face down
                  unknown15
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                text [\N[1]]
                     Please come in!
                moveroute()
                  jump(x=0, y=0)
                  playSE(volume=80, pitch=100, name="015-Jump01")
                movewait
                wait 15
                text [Villager]
                     Wow...!
                     Hey old man, where did you find this girl!?
                text [Villager]
                     I've just been told that there's a pretty girl here 
                     working for you.
                text [Villager]
                     You damn lucky old bastard!
                text [\N[1]]
                     (.........)
                moveroute(skippable)
                  speed(2)
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                  transfer player
                screen_tone(0,0,0,0,duration=40)
                wait 40
                text [Villager]
                     I'll buy something today then!
                     Can you show me what've you guys got?
                text [Karmal]
                     Uhm....
                     We have freshest apples today!!
                text [Villager]
                     Not those goddamn apples again!?
                text [\N[1]]
                     ............
                text ..............
                text .....................
                playME(volume=80, pitch=100, name="014-Inn01")
                switch(128) = 1


                wait 40
                screen_tone(0,0,0,0,duration=20)
                wait 20
                text [Karmal]
                     Well done, \N[1]-san!
                     Our sale was highly increased today, thanks to you!
                text [Karmal]
                     Here is what I promised,
                     your upgraded \c[6]'Iron Sword'\c[8]!
                playSE(volume=80, pitch=100, name="056-Right02")


                text Received an \c[6]'Iron Sword'\c[8].
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.slide
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.shake
                text [\N[1]]
                     Thank you so much!
                text [Karmal]
                     Even though it's only just one day, but I really hope 
                     that you will be working here once again.
                text [Karmal]
                     Of course your share will be good, base on the total 
                     income of that day.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A01",0,0)
                       $pose.shake
                text [\N[1]]
                     ........
                     Sure, I will think about it.
                text [Karmal]
                     I know you're always on the mission to help the 
                     village, at least this is what I can do for you.

                playSE(volume=80, pitch=100, name="056-Right02")
                text Received 3 \c[6]'Special Potions'\c[8].
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","B02",0,0)
                       $pose.shake
                text [\N[1]]
                     Oh... these potions...
                text [Karmal]
                     Hope they will help you out.
                script $pose.clear
                       $pose = nil
                script $pose = Pose.new("A","B","A06",0,0)
                       $pose.shake
                text [\N[1]]
                     I'm sure they will.
                script $pose.clear
                       $pose = nil
                screen_tone(0,0,0,0,duration=20)
                wait 20
                script $pose = Pose.new("A","A","A01",0,0)
                       $pose.slide
                text [\N[1]]
                     Now my equipment is upgraded, I should talk to 
                     Mayor-san to hear about his next step.
                text [\N[1]]
                     But first I should make sure I didn't miss something 
                     out there.
                script $pose.clear
                       $pose = nil
                playSE(volume=80, pitch=100, name="056-Right02")
                text \c[6]Advancing further to the main storyline would 
                     make you miss some current events.
                text \c[6]Please make sure you explored the whole map 
                     before heading to Mayor's house.
                var(1) = 152

                screen_tone(0,0,0,0,duration=20)
                wait 20
              end


          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 152" ],
          "graphic" => { "character" => "147-Storekeeper01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Karmal]
                 Please take care of yourself.
            text [Karmal]
                 I'd love to hire you again, so don't get hurt, okay?
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 I got it.
            text [Karmal]
                 So, you wanna buy something?
            script $pose.clear
                   $pose = nil





          COMMANDS
        }
      ]
    }
  ]
}
