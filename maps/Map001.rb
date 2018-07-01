map = {
  "tileset" => 9,
  "width" => 35,
  "height" => 35,
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
      "x" => 4,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            script $ev021 = Ev021.new
                   $ev021.pop("A")
            text asdzxc
            switch(15) = 0
            script $ev021.massage_on("A",10)
            text asdzxc
            script $ev021.pop("F")
            script $ev021.massage_on("B",10)
            text asdzxc
            script $ev021.pop("M")
            script $ev021.massage_on("B",10)
            text asdzxc
            script $ev021.massage_off
            switch(15) = 1
            script $ev021.clear
                   $ev021 = nil
            screen_tone(0,0,0,0,duration=20)
          COMMANDS
        }
      ]
    },
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 0,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "hiro_sleep02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
              move toward player
              move toward player
              move toward player
              move toward player
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 27,
      "name" => "EV027",
      "x" => 4,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "kid_02_02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
      "id" => 22,
      "name" => "EV022",
      "x" => 13,
      "y" => 17,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
          "graphic" => { "character" => "Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "conditions" => [ "switch(131)", "var(1) >= 0" ],
          "graphic" => { "character" => "Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text 2

          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 0" ],
          "graphic" => { "character" => "Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text 3
            switch(131) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 0" ],
          "graphic" => { "character" => "Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text 4
          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "EV011",
      "x" => 11,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            script $Ev007 = Ev007.new("B05","A03","A05","A02",2,1)
                   $Ev007.pop
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 0,
      "y" => 0,
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
          "trigger" => 3,
          "commands" => <<-COMMANDS
            var(3) = 1
            switch(3) = 0
            switch(2) = 1
            var(11) = 100
            var(10) = 100
            var(8) = 100
            var(9) = 100
            var(5) = 5
            switch(7) = 0
            switch(1) = 1

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)" ],
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 17,
      "name" => "EV017",
      "x" => 8,
      "y" => 23,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "hiro_sleep02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $Ev005 = Ev005.new("C01")
                   $Ev005.pop
            wait 20
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (It's too late already...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 28,
      "name" => "EV028",
      "x" => 16,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "pl_sleep05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 2 },
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
        }
      ]
    },
    {
      "id" => 23,
      "name" => "EV023",
      "x" => 23,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $ev001 = Bust_Anime.new
                   $ev001.p("B","A01","A01",0,"A",0,0)
            text sad
            switch(11) = 0
            script $ev001.massage_on("A","A",5)
            script $ev001.p("B","A01","A01",0,"J",0,0)
          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "EV012",
      "x" => 6,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Ron]
                 Heheh... Greeting.
            script $pose = Pose.new("A","A","B01",0,1)
                   $pose.slide
            script $ev011 = Ev011.new
                   $ev011.pop("E")
            switch(13) = 0
            script $ev011.massage_on(10)
            text [\N[1]]
                 ...........!!!
            text [Ron]
                 Hey it's just a casual greeting, heheh...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 S- Stop it at once!!
            switch(13) = 1
            script $ev011.massage_off
            script $ev011.clear
                   $ev011 = nil
            script $pose.clear
                   $pose = nil

            text [Ron]
                 Ouchh...!!
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "Massage types.",
      "x" => 8,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
          COMMANDS
        }
      ]
    },
    {
      "id" => 29,
      "name" => "EV029",
      "x" => 13,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 18,
      "name" => "EV018",
      "x" => 19,
      "y" => 19,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Thief01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 5,
          "move_frequency" => 6,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS


              goto event 6
              switch(42) = 0
              switch(43) = 1
              switch(44) = 1

              goto event 7
              switch(42) = 1
              switch(43) = 0
              switch(44) = 1

              goto event 8
              switch(42) = 1
              switch(43) = 1
              switch(44) = 0


          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "EV007",
      "x" => 12,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
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
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text A A
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","C","A01",0,1)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","A01",1,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","E","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A01",0,0)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("D","A","A01",0,1)
                   $pose.slide
            text asdzxxcx
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 24,
      "name" => "Weather",
      "x" => 1,
      "y" => 0,
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
          "trigger" => 3,
          "commands" => <<-COMMANDS
            script $game_screen.weather(21, 20, 10, 3)

          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "EV013",
      "x" => 7,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
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
        }
      ]
    },
    {
      "id" => 2,
      "name" => "Massage types.",
      "x" => 7,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(31) >= 0" ],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            var(3) = 2
            text Event: Massage types.




            script $ev001 = Bust_Anime.new
                   $ev001.p("B","A01","A01",0,"A",0,0)
            text /..../




            switch(11) = 0
            text Start massaging in clothed mode (tits type B)
                 Normal mode.

            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"B",0,0)
            text Faster.
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","A01","A01",0,"B",0,0)
            text Hadake == 1
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","A01","A01",0,"B",1,0)
            text Proceeding to undress camisole.



            script $ev001.massage_off
            script $ev001.p("B","A01","A01",0,"A",1,"B")
            text Pulling camisole down.
            script $ev001.p("B","A01","A01",0,"A",2,0)
            script $ev001.shake_on
            text the Camisole has been pulled down.
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"C",2,0)
            text Massaging in topless mode (bust type C).
                 massage Type A.
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","A01","A01",0,"C",2,0)
            text Bust type C, massage type B.
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"F",2,0)
            text Bust type F.
                 Massage type A.
            script $ev001.massage_on("B","B",5)
            text Bust type F.
                 Massage type B.
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"G",2,0)
            text Bust type G.
                 Massage type A.
            script $ev001.massage_on("B","B",5)
            text Bust type G.
                 Massage type B.
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"H",2,0)
            text Bust type H.
                 Massage type A.
            script $ev001.massage_on("B","B",5)
            text Bust type H.
                 Massage type B.
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A01","A01",0,"I",2,0)
            text Bust type I.
                 Massage type A.
            script $ev001.massage_on("B","B",5)
            text Bust type I.
                 Massage type B.
            script $ev001.p("A","A01","A01",0,"A",2,0)
            text No more massage types, stop massaging.
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 30,
      "name" => "Takashi",
      "x" => 14,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
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
      "id" => 19,
      "name" => "EV019",
      "x" => 19,
      "y" => 18,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
              text Morning
            end
            if switch(43) == true
              text Evening
            end
            if switch(44) == true
              text Night
            end
          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "EV008",
      "x" => 14,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "hiro_sleep02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $ev013 = Ev013.new
                   $ev013.pop("A","A01",1,1,0,0)
            text asdzxc
            switch(14) = 0
            script $ev013.massage_on("B",5)
            script $ev013.pop("B","A02",1,1,1,1)
            text asdzxc
            script $ev013.pop("C","A02",1,1,1,1)
            script $ev013.massage_on("C",5)
            text asdzxc
            script $ev013.massage_on("D",3)
            script $ev013.pop("D","A02",1,1,1,1)
            text asdzxc
            switch(14) = 1
            script $ev013.massage_off
            script $ev013.clear
                   $ev013 = nil
            script $ev012 = Ev012.new("A","A01","A01",1,0,0)
                   $ev012.pop
            text asdzxc
            script $ev012.clear
                   $ev012 = nil
            script $ev012 = Ev012.new("B","A02","A03",1,1,1) 
                   $ev012.pop
            text asdzxc
            script $ev012.clear
                   $ev012 = nil
            var(3) = 5
            script $ev011 = Ev011.new
                   $ev011.pop("A")
            text asdzxc
            switch(13) = 0
            script $ev011.massage_on(10)
            text asdzxc
            script $ev011.pop("B")
            script $ev011.massage_on(10)
            text asdzxc
            script $ev011.pop("G")
            script $ev011.massage_on(10)
            text asdzxc
            script $ev011.massage_off
            switch(13) = 1
            script $ev011.clear
                   $ev011 = nil
            text asdzxc
            script $Ev010 = Ev010.new("A01","A01",0,0,0,0,1)
                   $Ev010.pop
            text asdzxc
            script $Ev010.clear
                   $Ev010 = nil
            script $Ev010 = Ev010.new("A03","A02",1,0,0,1,1)
                   $Ev010.pop
            text asdzxc
            script $Ev010.clear
                   $Ev010 = nil
            script $Ev010 = Ev010.new("A02","A02",0,0,0,1,1)
                   $Ev010.pop
            text asdzxc
            script $Ev010.clear
                   $Ev010 = nil
            script $Ev010 = Ev010.new("B01","A05",3,3,1,1,1)
                   $Ev010.pop
            text asdzxc
            script $Ev010.clear
                   $Ev010 = nil
            script $Ev008 = Ev008.new("C01","C02",1,0,3)
                   $Ev008.pop
            text asdzxc
            script $Ev008.clear
                   $Ev008 = nil
            text asdzxc
            script $Ev007 = Ev007.new("A01","A01","B04","B02",1,3)
                   $Ev007.pop
            text asdzxc
            script $Ev007.clear
                   $Ev007 = nil
            text asdzxc
            script $Ev005 = Ev005.new("A01")
                   $Ev005.pop
            text asdzxc
            script $Ev005.clear
                   $Ev005 = nil
            text asdzxc
            script $Ev006 = Ev006.new("A01", "A01", "B01")
                   $Ev006.pop
            text asdzxc
            script $Ev006.clear
                   $Ev006 = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 25,
      "name" => "EV025",
      "x" => 9,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "199-Support07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
      "name" => "Massage types.",
      "x" => 9,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "switch(15)" ],
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
              switch(43) = 1
              switch(44) = 1
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
              switch(43) = 1
              switch(44) = 1
              playSE(volume=80, pitch=100, name="056-Right02")
              text \c[6]Seita has joined the party!
              screen_tone(0,0,0,0,duration=20)
              wait 20

          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "EV014",
      "x" => 8,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian09", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Jack]
                 Hey, there's something on your shirt.
            script $pose = Pose.new("A","A","B02",0,0)
                   $pose.slide
            text [\N[1]]
                 Yes....?
            text [Jack]
                 Bow down a bit I'll take it off for ya.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","B02",0,1)
                   $pose.pop
            text [\N[1]]
                 Like this?
            text [Jack]
                 (Can't believe this old trick still works. Just a little 
                 check though.)
            text [Jack]
                 (Heheh... still no bra.)
            text [Jack]
                 Sorry, it was my imagination.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",0,1)
                   $pose.pop
            text [\N[1]]
                 (Hmm.....)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "EV009",
      "x" => 15,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "087-Monster01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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

            actor(1).hp += 50





              text 【\N[1]】
                   (Damn it... I lost...)
              text 【\N[1]】
                   (I shouldn't lose against such a weak
                   enemy...)
              playSE(volume=80, pitch=100, name="105-Heal01")
              actor(1).hp += 999

          COMMANDS
        }
      ]
    },
    {
      "id" => 20,
      "name" => "EV020",
      "x" => 20,
      "y" => 14,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 25" ],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
        },
        {
          "conditions" => [ "var(51) >= 30" ],
          "graphic" => { "character" => "Civilian10", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
      "id" => 31,
      "name" => "EV031",
      "x" => 19,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "151-Animal01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "switch(21)" ],
          "graphic" => { "character" => "hiro_sleep04", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            script $hip = Hip.new("F","D01",0,0)
                   $hip.pop
          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "EV015",
      "x" => 4,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            script $Ev020 = Ev020.new("A",1,1,1,1)
                   $Ev020.pop
            text Ev020
            script $Ev020.clear
                   $Ev020 = nil
            text asdzxcasd
            script $Ev020 = Ev020.new("A",0,0,1,0)
                   $Ev020.pop
            text Ev019
            script $Ev020.clear
                   $Ev020 = nil
            script $Ev019 = Ev019.new("A01","A",1,"A",1,1,"A",0,0)
                   $Ev019.pop
            text asdzxcasd
            script $Ev019.clear
                   $Ev019 = nil
            script $Ev019 = Ev019.new("B01","B",0,"B",1,1,"B",0,0)
                   $Ev019.pop
            text asdzxcasd
            screen_tone(0,0,0,0,duration=20)
            script $Ev019.clear
                   $Ev019 = nil
            wait 20
            script $Ev018 = Ev018.new("A01",1,1,1,1,1,1,0,0)
                   $Ev018.pop
            text Ev018
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev018 = Ev018.new("B01",0,1,1,1,2,1,1,1)
                   $Ev018.pop
            text asdzxcasd
            script $Ev018.clear
                   $Ev018 = nil
            script $Ev017 = Ev017.new("A01",1,1,1,0,0)
                   $Ev017.pop
            text Ev017
            script $Ev017.clear
                   $Ev017 = nil
            script $Ev017 = Ev017.new("F01",0,1,1,1,1)
                   $Ev017.pop
            text asdzxcasd
            script $Ev017.clear
                   $Ev017 = nil
            script $Ev016 = Ev016.new("A02",1,1,1,1,1,1,1)
                   $Ev016.pop
            text Ev016
            script $Ev016.clear
                   $Ev016 = nil
            script $Ev016 = Ev016.new("A05",1,0,0,1,1,2,1)
                   $Ev016.pop
            text asdzxcasd
            script $Ev016.clear
                   $Ev016 = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        }
      ]
    },
    {
      "id" => 26,
      "name" => "EV026",
      "x" => 6,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "pl_sleep08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            var(3) = 2
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A01",0,"A",0,0)
            switch(11) = 0
            wait 5
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","C04","B07",1,"I",2,0)
            text asczx
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","C04","B07",1,"I",2,0)
            text asczx
            script $ev001.massage_on("C","B",5)
            script $ev001.p("B","C04","B07",1,"I",2,0)
            text end
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil

            screen_tone(0,0,0,0,duration=20)
          COMMANDS
        },
        {
          "conditions" => [ "switch(A)" ],
          "graphic" => { "character" => "pl_sleep08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            var(3) = 1
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A01",0,"A",0,0)
            switch(11) = 0
            wait 5
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","C04","B07",1,"I",2,0)
            text asczx
            script $ev001.massage_on("B","B",5)
            script $ev001.p("B","C04","B07",1,"I",2,0)
            text asczx
            script $ev001.massage_on("C","B",5)
            script $ev001.p("B","C04","B07",1,"I",2,0)
            text end
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil

            screen_tone(0,0,0,0,duration=20)
          COMMANDS
        }
      ]
    },
    {
      "id" => 21,
      "name" => "EV021",
      "x" => 19,
      "y" => 20,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian12", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            playSE(volume=80, pitch=100, name="089-Attack01")
            wait 15
            playSE(volume=80, pitch=100, name="090-Attack02")
            wait 15
            playSE(volume=80, pitch=100, name="091-Attack03")
            wait 15
            playSE(volume=80, pitch=100, name="097-Attack09")
            wait 15
            playSE(volume=80, pitch=100, name="098-Attack10")
            wait 15
            playSE(volume=80, pitch=100, name="097-Attack09")
            wait 15
            playSE(volume=80, pitch=100, name="098-Attack10")
            wait 15
            playSE(volume=80, pitch=100, name="098-Attack10")
            wait 15
            playSE(volume=80, pitch=100, name="098-Attack10")
          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "EV010",
      "x" => 6,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "hiro_sleep02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text aszxcasc
            wait 10

            screen_tone(0,0,0,0,duration=0)

            wait 60


            screen_tone(0,0,0,0,duration=0)

            wait 40
          COMMANDS
        }
      ]
    },
    {
      "id" => 32,
      "name" => "EV032",
      "x" => 17,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "Civilian06", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
