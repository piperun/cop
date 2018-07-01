map = {
  "tileset" => 52,
  "width" => 30,
  "height" => 25,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "Bird", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 10,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "165-Small07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 8 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
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
      "id" => 6,
      "name" => "EV006",
      "x" => 10,
      "y" => 10,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
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
          "conditions" => [ "var(1) >= 141" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 4,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","E03",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",1,0)
                   $pose.shake
            text [\N[1]]
                 Hey, you there!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thief]
                 Woaah!!!
                 Please don't k-
            text [Thief]
                 .........
            text [Thief]
                 W- what...?
            text [Thief]
                 Just... only a girl?!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Thief]
                 Hahahah...!!
                 You must be crazy to face me alone!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,0)
                   $pose.pop
            text [\N[1]]
                 Hmm...
                 Let's see!
            script $pose.clear
                   $pose = nil


              script $pose = Pose.new("A","A","E01",0,0)
                     $pose.slide
              text [\N[1]]
                   Heh...
                   Don't look down on me!
              text [Thief]
                   I- I'M SORRY!!
              text [Thief]
                   (Damn it, she's incredibly strong!!)
              text [Thief]
                   (I didn't expect such a strong fighter like that in this 
                   small village!)
              text [Thief]
                   (Not only strong... she looks pretty hot too!)
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.shake
              text [\N[1]]
                   ...Hey, what are you looking at?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   Tell me who you are!
                   I've never seen your face before.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Thief]
                   Woa...!! Take it easy!
              text [Thief]
                   I'll tell you, and of course, I will return what I've 
                   stolen.
              text [Thief]
                   Just don't turn me in, please!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   ...
                   It depends.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   Now answer it, before I change my mind.
              text [Thief]
                   Ok- OK!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.pop
              text [Thief]
                   My name is Theff.
                   I came from 'Coal Village', not far in the north.
              text [Theff]
                   Me and my brothers just got here 2 days ago, tired 
                   and hungry.
              text [Theff]
                   So we splitted up and try to survive by doing what 
                   we do best.
              text [Theff]
                   I swear if I knew this village has such a fighter like 
                   you, I'd never-
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E05",1,0)
                     $pose.shake
              text [\N[1]]
                   You came here in group!?
                   How many of you...!?
              text [Theff]
                   Jus- just a few!!
              text [Theff]
                   We were in a bandit gang before, but recently we 
                   heard some bad news...
              text [Theff]
                   Rumors say that the King has sent a troop hunting for 
                   us, and they're already moving!
              text [Theff]
                   Some of us didn't want to die so we ran off here, 
                   hiding and waiting for it to be over.
              text [Theff]
                   I don't know if it's true or not, but... just to be safe, 
                   right!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   Looks like you're telling the truth...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",0,0)
                     $pose.pop
              text [\N[1]]
                   ...But stealing is a crime, you have to take the 
                   punishment!
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Wh- what?!
                   NOO!!!
              text [Theff]
                   I've already told you all I know, please!!
              text [Theff]
                   Besides, I only stole one small thing from that 
                   woman!! I'll return it!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E05",0,0)
                     $pose.pop
              text [\N[1]]
                   Stop making excuses-
              playSE(volume=80, pitch=100, name="056-Right02")
              text Received a \c[6]'Smelly Panties'.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   .......
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",1,1)
                     $pose.pop
              text [\N[1]]
                   W- what is this...?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   A panties!
                   That's the only thing I stole!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   .......
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",1,1)
                     $pose.pop
              text [\N[1]]
                   ...Are you serious?
              text [Theff]
                   Now you see!
                   It's just a pair of panties, nothing big, right!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,1)
                     $pose.pop
              text [\N[1]]
                   .........
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,1)
                     $pose.pop
              text [\N[1]]
                   ....So you're not only a thief, you're also a pervert as 
                   well!
              text [Theff]
                   W- Whatever you call me, but it's not something that 
                   can throw me into jail, right!?
              text [Theff]
                   Please!! I promise I won't do it again, it's just... just
                   a bad habit, nothing more!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   .........
              text [Theff]
                   Well... please!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.shake
              text [\N[1]]
                   Al- alright!
                   You can go...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   ...You and your friends, don't you ever go back here 
                   again!
              text [\N[1]]
                   Next time I'll have to turn you in, got it!?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Y- YES!!
                   Thank you so much!!
              text [Theff]
                   We will never get back to this village again, I swear 
                   to god!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.pop
              text [\N[1]]
                   ..........
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 65
              playSE(volume=80, pitch=100, name="013-Move01")
              script $pose = Pose.new("A","A","A03",1,0)
                     $pose.slide
              text [\N[1]]
                   So... the rumor about our neighbor village has been 
                   attacked by bandits was true.
              text [\N[1]]
                   I should report this to the Mayor, he needs to know 
                   this...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D07",1,1)
                     $pose.pop
              text [\N[1]]
                   But... what about this panties?
                   It... smells...
              text [\N[1]]
                   Do I really need to return this to that oba-san?
              text [\N[1]]
                   *Sighs*
              script $pose.clear
                     $pose = nil
              actor(1).hp += 9999
              var(1) = 142


              text [Thief]
                   Told ya, hahahah...!!!
              script $pose = Pose.new("D","A","E02",1,0)
                     $pose.slide
              text [\N[1]]
                   Tss...!!
                   There's no way I could lose to him!!
              text [Thief]
                   See you later, babe!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("D","A","E01",1,0)
                     $pose.pop
              text [\N[1]]
                   You won't get away that easily!!
              script $pose.clear
                     $pose = nil
              playSE(volume=80, pitch=100, name="105-Heal01")
              actor(1).hp += 9999
              actor(1).sp += 9999




          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 141" ],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 1,
          "move_speed" => 5,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS






              script $pose = Pose.new("A","A","E01",0,0)
                     $pose.slide
              text [\N[1]]
                   Heh...
                   Don't look down on me!
              text [Thief]
                   I- I'M SORRY!!
              text [Thief]
                   (Damn it, she's incredibly strong!!)
              text [Thief]
                   (I didn't expect such a strong fighter like that in this 
                   small village!)
              text [Thief]
                   (Not only strong... she looks pretty hot too!)
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.shake
              text [\N[1]]
                   ...Hey, what are you looking at?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   Tell me who you are!
                   I've never seen your face before.
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Thief]
                   Woa...!! Take it easy!
              text [Thief]
                   I'll tell you, and of course, I will return what I've 
                   stolen.
              text [Thief]
                   Just don't turn me in, please!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   ...
                   It depends.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   Now answer it, before I change my mind.
              text [Thief]
                   Ok- OK!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.pop
              text [Thief]
                   My name is Theff.
                   I came from 'Coal Village', not far in the north.
              text [Theff]
                   Me and my brothers just got here 2 days ago, tired 
                   and hungry.
              text [Theff]
                   So we splitted up and try to survive by doing what 
                   we do best.
              text [Theff]
                   I swear if I knew this village has such a fighter like 
                   you, I'd never-
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E05",1,0)
                     $pose.shake
              text [\N[1]]
                   You came here in group!?
                   How many of you...!?
              text [Theff]
                   Jus- just a few!!
              text [Theff]
                   We were in a bandit gang before, but recently we 
                   heard some bad news...
              text [Theff]
                   Rumors say that the King has sent a troop hunting for 
                   us, and they're already moving!
              text [Theff]
                   Some of us didn't want to die so we ran off here, 
                   hiding and waiting for it to be over.
              text [Theff]
                   I don't know if it's true or not, but... just to be safe, 
                   right!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   Looks like you're telling the truth...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",0,0)
                     $pose.pop
              text [\N[1]]
                   ...But stealing is a crime, you have to take the 
                   punishment!
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Wh- what?!
                   NOO!!!
              text [Theff]
                   I've already told you all I know, please!!
              text [Theff]
                   Besides, I only stole one small thing from that 
                   woman!! I'll return it!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E05",0,0)
                     $pose.pop
              text [\N[1]]
                   Stop making excuses-
              playSE(volume=80, pitch=100, name="056-Right02")
              text Received a \c[6]'Smelly Panties'.
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   .......
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",1,1)
                     $pose.pop
              text [\N[1]]
                   W- what is this...?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   A panties!
                   That's the only thing I stole!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",1,1)
                     $pose.pop
              text [\N[1]]
                   .......
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E07",1,1)
                     $pose.pop
              text [\N[1]]
                   ...Are you serious?
              text [Theff]
                   Now you see!
                   It's just a panties, nothing big, right!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,1)
                     $pose.pop
              text [\N[1]]
                   .........
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,1)
                     $pose.pop
              text [\N[1]]
                   ....So you're not only a thief, you're also a pervert as 
                   well!
              text [Theff]
                   W- Whatever you call me, but it's not something that 
                   can throw me into jail, right!?
              text [Theff]
                   Please!! I promise I won't do it again, it's just... just
                   a bad habit, nothing more!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E06",0,0)
                     $pose.pop
              text [\N[1]]
                   .........
              text [Theff]
                   Well... please!?
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.shake
              text [\N[1]]
                   Al- alright!
                   You can go...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E03",0,0)
                     $pose.pop
              text [\N[1]]
                   ...You and your friends, don't you ever go back here 
                   again!
              text [\N[1]]
                   Next time I'll have to turn you in, got it!?
              moveroute()
                jump(x=0, y=0)
                playSE(volume=80, pitch=100, name="015-Jump01")
              movewait
              text [Theff]
                   Y- YES!!
                   Thank you so much!!
              text [Theff]
                   We will never get back to this village again, I swear 
                   to god!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","E02",0,0)
                     $pose.pop
              text [\N[1]]
                   ..........
              script $pose.clear
                     $pose = nil
              screen_tone(0,0,0,0,duration=20)
              wait 60
              playSE(volume=80, pitch=100, name="013-Move01")
              script $pose = Pose.new("A","A","A03",1,0)
                     $pose.slide
              text [\N[1]]
                   So... the rumor about our neighbor village has been 
                   attacked by bandits was true.
              text [\N[1]]
                   I should report this to the Mayor, he needs to know 
                   this...
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("A","A","D07",1,1)
                     $pose.pop
              text [\N[1]]
                   But... what about this panties?
                   It... smells...
              text [\N[1]]
                   Do I really need to return this to that oba-san?
              text [\N[1]]
                   *Sighs*
              script $pose.clear
                     $pose = nil
              actor(1).hp += 9999
              var(1) = 142




              text [Thief]
                   Told ya, hahahah...!!!
              script $pose = Pose.new("D","A","E02",1,0)
                     $pose.slide
              text [\N[1]]
                   Tss...!!
                   There's no way I could lose to him!!
              text [Thief]
                   See you later, babe!!
              script $pose.clear
                     $pose = nil
              script $pose = Pose.new("D","A","E01",1,0)
                     $pose.pop
              text [\N[1]]
                   You won't get away that easily!!
              script $pose.clear
                     $pose = nil
              playSE(volume=80, pitch=100, name="105-Heal01")
              actor(1).hp += 9999
              actor(1).sp += 9999



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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 29,
      "y" => 11,
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
      "id" => 2,
      "name" => "EV002",
      "x" => 0,
      "y" => 11,
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
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","B01",1,0)
                   $pose.shake
            text [\N[1]]
                 (Isn't he standing over there?)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
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
      "id" => 3,
      "name" => "EV003",
      "x" => 7,
      "y" => 2,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "165-Small07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
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
      "id" => 4,
      "name" => "EV004",
      "x" => 22,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "165-Small07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 6 },
          "move_type" => 1,
          "move_speed" => 4,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => true,
          "always_on_top" => true,
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
    }
  ]
}
