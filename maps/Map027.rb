map = {
  "tileset" => 53,
  "width" => 25,
  "height" => 30,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "018-Field01", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "002-Wind02", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 9,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 30" ],
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

            screen_tone(0,0,0,0,duration=40)


            moveroute()
              speed(1)
              move forward
              move forward

            movewait
            wait 20
            wait 20
            text \c[1][???]
                 Hmmm....
                 A mortal?
            moveroute()
              face down
              unknown15
            movewait
            playSE(volume=80, pitch=100, name="083-Monster05")
            text \c[1][???]
                 It's unexpected....
            script $pose = Pose.new("A","B","E05",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,0)
                   $pose.shake
            text [\N[1]]
                 ....Y-you... What are you?!
            playSE(volume=55, pitch=100, name="079-Monster01")
            text \c[1][???]
                 ........
                 It's been a while since I've been asked that question.
            text \c[1][???]
                 ...Of course I'm a Demon.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",1,0)
                   $pose.shake
            text [\N[1]]
                 ..........!!!
            playSE(volume=55, pitch=100, name="083-Monster05")
            text \c[1][???]
                 ...And you, mortal, why you come here?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",1,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.shake
            text [\N[1]]
                 What are you planning to do!?
            playSE(volume=60, pitch=100, name="083-Monster05")
            text \c[1][???]
                 .................
                 What do you mean?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,0)
                   $pose.shake
            text [\N[1]]
                 Don't pretend that you don't know!!
            text [\N[1]]
                 Your strange aura... you're controlling animals and 
                 monsters around here to attack our village!!
            text \c[1][???]
                 .....................
            playSE(volume=45, pitch=100, name="083-Monster05")
            text \c[1][???]
                 I see... so it's about my powerful aura.
                 But don't get it wrong, mortal.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,0)
                   $pose.pop
            text [\N[1]]
                 ..................?
            text \c[1][???]
                 I have no interest in killing human right now.
            text \c[1][???]
                 I'm just wandering around and decided to stay here a 
                 while to clear up my mind...
            text \c[1][???]
                 Political war in Hell is already making me stressed, 
                 and that's the only thing I'm concerned with.
            text \c[1][???]
                 Don't even have time to do demon things like killing 
                 human or burn down villages...
            text \c[1][???]
                 ..........
                 Do you find it funny?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 (Demons have political war...?)
            text [\N[1]]
                 (He seems honest...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",1,0)
                   $pose.pop
            text [\N[1]]
                 (But I can't let him stay here any longer.)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.shake
            text [\N[1]]
                 Whatever, you have to leave this place right now!
            playSE(volume=80, pitch=100, name="079-Monster01")
            text \c[1][???]
                 Hahahah...!!!
                 Are you threatening me, mortal?
            text \c[1][???]
                 You are reminding me of someone...
            playSE(volume=80, pitch=100, name="083-Monster05")
            moveroute()
              unknown19
            movewait
            text \c[1][???]
                 Go, before I change my mind...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,0)
                   $pose.shake
            text [\N[1]]
                 I'm not scared of you, devil!!
            script $pose.clear
                   $pose = nil


              moveroute()
                face down
              movewait

              wait 10
              moveroute()
                speed(3)
                unknown13
              movewait
              wait 20
              text \c[1][???]
                   Ahhh.... Not bad.
              text \c[1][???]
                   You cheated, but it's okay.
              playSE(volume=45, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now I remember....
              text \c[1][???]
                   You must be their daughter....
              text [\N[1]]
                   Y-you.... you know my parents...?
              playSE(volume=65, pitch=100, name="083-Monster05")
              text \c[1][???]
                   More than that, we had a fight, a good fight...
              text \c[1][???]
                   It happened many years ago.
              text \c[1][???]
                   Both of them were very strong, they had me 
                   wounded, but still couldn't kill me.
              text \c[1][???]
                   But mortals are just mortals, I killed the husband and 
                   left his wife alive, just to suffer the pain.
              text \c[1][???]
                   Didn't forget to place a curse into her body, to see 
                   her slowly corrupted...
              text [\N[1]]
                   Y-you........!!!
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now their daughter came to me, I don't think this is 
                   coincidence.
              text \c[1][???]
                   But I won't kill you, mortal.
              text \c[1][???]
                   I will make you suffer the same way your mother 
                   has.
              wait 20

              wait 20
              text [\N[1]]
                   .....Wh- what was that!?
              moveroute()
                unknown19
              movewait
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Just a small gift from a Demon.
              text \c[1][???]
                   We will meet again.
              text \c[1][???]
                   Can't wait to see what kind of woman you will 
                   become...
              playSE(volume=70, pitch=100, name="079-Monster01")
              text \c[1][???]
                   HAHAHAHAHAH!!!
              text [\N[1]]
                   .....
              screen_tone(0,0,0,0,duration=20)
              wait 20
              text ...........
              text ........................



              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
                opacity(255)
              movewait
              screen_tone(0,0,0,0,duration=20)
              wait 25
              text [\N[1]]
                   ........................
              moveroute()
                graphic(name="pl_sleep01", 0, 2, 3)
              movewait
              wait 20
              text [\N[1]]
                   (How long I've been lying here...?)
              text [\N[1]]
                   (Was that... a dream?)
              wait 20
              text [\N[1]]
                   (I should get back home.
                   My head... it aches...)
              screen_tone(0,0,0,0,duration=20)
              wait 25
              moveroute()
                opacity(0)
              moveroute()
                opacity(255)
              movewait

              moveroute()
                unknown45
              movewait
              screen_tone(0,0,0,0,duration=40)
              wait 25
              var(1) = 35

              moveroute()
                face down
              movewait

              wait 10
              moveroute()
                speed(1)
                unknown13
              movewait
              wait 20
              text [\N[1]]
                   Uggh......!
              text \c[1][???]
                   .......................
              playSE(volume=45, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now I remember....
              text \c[1][???]
                   You must be their daughter....
              text [\N[1]]
                   Hah.... hahh...
                   Y-you.... you know my parents...?
              playSE(volume=65, pitch=100, name="083-Monster05")
              text \c[1][???]
                   More than that, we had a fight, a good fight...
              text \c[1][???]
                   It happened many years ago.
              text \c[1][???]
                   Both of them were very strong, they had me 
                   wounded, but still couldn't kill me.
              text \c[1][???]
                   But mortals are just mortals, I killed the husband and 
                   left his wife alive, just to suffer the pain.
              text \c[1][???]
                   Didn't forget to place a curse into her body, to see 
                   her slowly corrupted...
              text [\N[1]]
                   Y-you........!!!
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now their daughter came to me, I don't think this is 
                   coincidence.
              text \c[1][???]
                   But I won't kill you, mortal.
              text \c[1][???]
                   I will make you suffer the same way your mother 
                   has.
              wait 20

              wait 20
              text [\N[1]]
                   .....Wh- what was that!?
              moveroute()
                unknown19
              movewait
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Just a small gift from a Demon.
              text \c[1][???]
                   We will meet again.
              text \c[1][???]
                   Can't wait to see what kind of woman you will 
                   become...
              playSE(volume=70, pitch=100, name="079-Monster01")
              text \c[1][???]
                   HAHAHAHAHAH!!!
              text [\N[1]]
                   .....
              screen_tone(0,0,0,0,duration=20)
              wait 20
              text ...........
              text ........................



              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
                opacity(255)
              movewait
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 60
              text [\N[1]]
                   ........................
              moveroute()
                graphic(name="pl_sleep01", 0, 2, 3)
              movewait
              wait 20
              text [\N[1]]
                   (Was that... a dream?)
              text [\N[1]]
                   (How long I've been lying here...?)
              wait 20
              text [\N[1]]
                   (I should get back home.
                   My head... it aches...)
              screen_tone(0,0,0,0,duration=20)
              wait 25
              moveroute()
                opacity(0)
              moveroute()
                opacity(255)
              movewait

              moveroute()
                unknown45
              movewait
              screen_tone(0,0,0,0,duration=40)
              wait 25
              state(actor=1, state=1) = false
              var(1) = 35

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
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
      "y" => 12,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 30" ],
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

            screen_tone(0,0,0,0,duration=40)


            moveroute()
              speed(1)
              move forward
              move forward

            movewait
            wait 20
            wait 20
            text \c[1][???]
                 Hmmm....
                 A mortal?
            moveroute()
              face down
              unknown15
            movewait
            playSE(volume=80, pitch=100, name="083-Monster05")
            text \c[1][???]
                 It's unexpected....
            script $pose = Pose.new("A","B","E05",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",1,0)
                   $pose.shake
            text [\N[1]]
                 ....Y-you... What are you?!
            playSE(volume=55, pitch=100, name="079-Monster01")
            text \c[1][???]
                 ........
                 It's been a while since I've been asked that question.
            text \c[1][???]
                 ...Of course I'm a Demon.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",1,0)
                   $pose.shake
            text [\N[1]]
                 ..........!!!
            playSE(volume=55, pitch=100, name="083-Monster05")
            text \c[1][???]
                 ...And you, mortal, why you come here?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",1,0)
                   $pose.pop
            text [\N[1]]
                 ..............
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.shake
            text [\N[1]]
                 What are you planning to do!?
            playSE(volume=60, pitch=100, name="083-Monster05")
            text \c[1][???]
                 .................
                 What do you mean?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,0)
                   $pose.shake
            text [\N[1]]
                 Don't pretend that you don't know!!
            text [\N[1]]
                 Your strange aura... you're controlling animals and 
                 monsters around here to attack our village!!
            text \c[1][???]
                 .....................
            playSE(volume=45, pitch=100, name="083-Monster05")
            text \c[1][???]
                 I see... so it's about my powerful aura.
                 But don't get it wrong, mortal.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,0)
                   $pose.pop
            text [\N[1]]
                 ..................?
            text \c[1][???]
                 I have no interest in killing human right now.
            text \c[1][???]
                 I'm just wandering around and decided to stay here a 
                 while to clear up my mind...
            text \c[1][???]
                 Political war in Hell is already making me stressed, 
                 and that's the only thing I'm concerned with.
            text \c[1][???]
                 Don't even have time to do demon things like killing 
                 human or burn down villages...
            text \c[1][???]
                 ..........
                 Do you find it funny?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.pop
            text [\N[1]]
                 (Demons have political war...?)
            text [\N[1]]
                 (He seems honest...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",1,0)
                   $pose.pop
            text [\N[1]]
                 (But I can't let him stay here any longer.)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.shake
            text [\N[1]]
                 Whatever, you have to leave this place right now!
            playSE(volume=80, pitch=100, name="079-Monster01")
            text \c[1][???]
                 Hahahah...!!!
                 Are you threatening me, mortal?
            text \c[1][???]
                 You are reminding me of someone...
            playSE(volume=80, pitch=100, name="083-Monster05")
            moveroute()
              unknown19
            movewait
            text \c[1][???]
                 Go, before I change my mind...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,0)
                   $pose.shake
            text [\N[1]]
                 I'm not scared of you, devil!!
            script $pose.clear
                   $pose = nil


              moveroute()
                face down
              movewait

              wait 10
              moveroute()
                speed(3)
                unknown13
              movewait
              wait 20
              text \c[1][???]
                   Ahhh.... Not bad.
              text \c[1][???]
                   You cheated, but it's okay.
              playSE(volume=45, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now I remember....
              text \c[1][???]
                   You must be their daughter....
              text [\N[1]]
                   Y-you.... you know my parents...?
              playSE(volume=65, pitch=100, name="083-Monster05")
              text \c[1][???]
                   More than that, we had a fight, a good fight...
              text \c[1][???]
                   It happened many years ago.
              text \c[1][???]
                   Both of them were very strong, they had me 
                   wounded, but still couldn't kill me.
              text \c[1][???]
                   But mortals are just mortals, I killed the husband and 
                   left his wife alive, just to suffer the pain.
              text \c[1][???]
                   Didn't forget to place a curse into her body, to see 
                   her slowly corrupted...
              text [\N[1]]
                   Y-you........!!!
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now their daughter came to me, I don't think this is 
                   coincidence.
              text \c[1][???]
                   But I won't kill you, mortal.
              text \c[1][???]
                   I will make you suffer the same way your mother 
                   has.
              wait 20

              wait 20
              text [\N[1]]
                   .....Wh- what was that!?
              moveroute()
                unknown19
              movewait
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Just a small gift from a Demon.
              text \c[1][???]
                   We will meet again.
              text \c[1][???]
                   Can't wait to see what kind of woman you will 
                   become...
              playSE(volume=70, pitch=100, name="079-Monster01")
              text \c[1][???]
                   HAHAHAHAHAH!!!
              text [\N[1]]
                   .....
              screen_tone(0,0,0,0,duration=20)
              wait 20
              text ...........
              text ........................



              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
                opacity(255)
              movewait
              screen_tone(0,0,0,0,duration=20)
              wait 25
              text [\N[1]]
                   ........................
              moveroute()
                graphic(name="pl_sleep01", 0, 2, 3)
              movewait
              wait 20
              text [\N[1]]
                   (How long I've been lying here...?)
              text [\N[1]]
                   (Was that... a dream?)
              wait 20
              text [\N[1]]
                   (I should get back home.
                   My head... it aches...)
              screen_tone(0,0,0,0,duration=20)
              wait 25
              moveroute()
                opacity(0)
              moveroute()
                opacity(255)
              movewait

              moveroute()
                unknown45
              movewait
              screen_tone(0,0,0,0,duration=40)
              wait 25
              var(1) = 35

              moveroute()
                face down
              movewait

              wait 10
              moveroute()
                speed(1)
                unknown13
              movewait
              wait 20
              text [\N[1]]
                   Uggh......!
              text \c[1][???]
                   .......................
              playSE(volume=45, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now I remember....
              text \c[1][???]
                   You must be their daughter....
              text [\N[1]]
                   Hah.... hahh...
                   Y-you.... you know my parents...?
              playSE(volume=65, pitch=100, name="083-Monster05")
              text \c[1][???]
                   More than that, we had a fight, a good fight...
              text \c[1][???]
                   It happened many years ago.
              text \c[1][???]
                   Both of them were very strong, they had me 
                   wounded, but still couldn't kill me.
              text \c[1][???]
                   But mortals are just mortals, I killed the husband and 
                   left his wife alive, just to suffer the pain.
              text \c[1][???]
                   Didn't forget to place a curse into her body, to see 
                   her slowly corrupted...
              text [\N[1]]
                   Y-you........!!!
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Now their daughter came to me, I don't think this is 
                   coincidence.
              text \c[1][???]
                   But I won't kill you, mortal.
              text \c[1][???]
                   I will make you suffer the same way your mother 
                   has.
              wait 20

              wait 20
              text [\N[1]]
                   .....Wh- what was that!?
              moveroute()
                unknown19
              movewait
              wait 20
              playSE(volume=70, pitch=100, name="083-Monster05")
              text \c[1][???]
                   Just a small gift from a Demon.
              text \c[1][???]
                   We will meet again.
              text \c[1][???]
                   Can't wait to see what kind of woman you will 
                   become...
              playSE(volume=70, pitch=100, name="079-Monster01")
              text \c[1][???]
                   HAHAHAHAHAH!!!
              text [\N[1]]
                   .....
              screen_tone(0,0,0,0,duration=20)
              wait 20
              text ...........
              text ........................



              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
              moveroute()
                opacity(0)
                opacity(255)
              movewait
              wait 30
              screen_tone(0,0,0,0,duration=20)
              wait 60
              text [\N[1]]
                   ........................
              moveroute()
                graphic(name="pl_sleep01", 0, 2, 3)
              movewait
              wait 20
              text [\N[1]]
                   (Was that... a dream?)
              text [\N[1]]
                   (How long I've been lying here...?)
              wait 20
              text [\N[1]]
                   (I should get back home.
                   My head... it aches...)
              screen_tone(0,0,0,0,duration=20)
              wait 25
              moveroute()
                opacity(0)
              moveroute()
                opacity(255)
              movewait

              moveroute()
                unknown45
              movewait
              screen_tone(0,0,0,0,duration=40)
              wait 25
              state(actor=1, state=1) = false
              var(1) = 35

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
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
      "x" => 0,
      "y" => 22,
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 30" ],
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
            script $pose = Pose.new("A","B","E02",0,0)
                   $pose.slide
            text [\N[1]]
                 (I can't go back yet...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
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

            screen_tone(0,0,0,0,duration=40)
            moveroute()
              speed(2)
              move forward
              move forward
              move forward
              move forward
            movewait
            wait 20
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (All the monster before... They're now gone.)
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown45
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 40" ],
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
      "y" => 23,
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
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (Nothing for me to do in this way right now...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 30" ],
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
            script $pose = Pose.new("A","B","E02",0,0)
                   $pose.slide
            text [\N[1]]
                 (I can't go back yet...)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown3
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 35" ],
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

            screen_tone(0,0,0,0,duration=40)
            moveroute()
              speed(2)
              move forward
              move forward
              move forward
              move forward
            movewait
            wait 20
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (All the monster before... They're now gone.)
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown45
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 40" ],
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
      "name" => "Demon",
      "x" => 10,
      "y" => 4,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 30" ],
          "graphic" => { "character" => "077-Devil03", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
          "conditions" => [ "var(1) >= 35" ],
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
      "name" => "Player Sleep",
      "x" => 10,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "pl_sleep01", "tile" => 0, "opacity" => 0, "blend" => 0, "hue" => 0, "pattern" => 3, "direction" => 4 },
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
    }
  ]
}
