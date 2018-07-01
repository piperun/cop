map = {
  "tileset" => 52,
  "width" => 35,
  "height" => 25,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 25,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "184-Light01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 6,
      "y" => 19,
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
            goto event 9

          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Soldier 7",
      "x" => 5,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Soldier]
                 Br- Bring me... *Hic*
                 ...Some more...
            text [Soldier]
                 ...W- wine.
                 *Hic*
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Soldier]
                 Th- the... one... *Hic*
                 ...who talked with... a beggar?
            text [Soldier]
                 ...It's... him.
                 *Hic*
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 6,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "184-Light01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "Soldier 6",
      "x" => 7,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Soldier]
                 Look at this campfire, it's like we're having a picnic!
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            script $pose = Pose.new("A","B","E02",0,0)
                   $pose.slide
            text [\N[1]]
                 You were the one who broke his promise and bullied 
                 a beggar?
            text [Soldier]
                 Beggar?
                 Oh, I remember.
            text [Soldier]
                 But who are you?
                 Don't stick your nose into my bussiness.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,0)
                   $pose.pop
            text [\N[1]]
                 It doesn't matter who I am.
            text [\N[1]]
                 I'm here to ask you to pay him the money he 
                 deserved.
            script $pose.clear
                   $pose = nil
            text [Soldier]
                 Hah!
                 You must be crazy, woman!!
            text [Soldier]
                 Go away before I left some scars on your pretty 
                 face!
            moveroute()
              unknown25
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 (Hey, you idiot!!)
            moveroute()
              face left
            movewait
            text [Soldier]
                 (Wh- what!?)
            text [another Soldier]
                 *Whispers*
                 (I saw her *Hic* had a talk with our commander...)
            text [another Soldier]
                 (....yesterday *Hic*)
            text [Soldier]
                 (...Really!?)
            text [Soldier]
                 (So... She knows our boss!?)
            text [another Soldier]
                 (*Hic*
                 I- I think so...)
            text [Soldier]
                 (...Damnit!!)
            script $pose = Pose.new("A","B","E07",0,0)
                   $pose.slide
            text [\N[1]]
                 Hey, have you guys done talking?
            text [\N[1]]
                 I just want to collect his money that you've promised.
            moveroute()
              unknown25
            movewait
            text [Soldier]
                 Grrr......!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Soldier]
                 Fine then!!
            text [Soldier]
                 I have some coins in my pocket here, enough to pay 
                 him out!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 *Hic*... You... wanna pay for real!?
            text [Soldier]
                 Y- Yeah, but I'm not giving it to you that easily!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",0,0)
                   $pose.pop
            text [\N[1]]
                 .....
                 What do you mean?
            text [Soldier]
                 Heheh....
                 Lift you skirt up.

            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,1)
                   $pose.shake
            text [\N[1]]
                 .....What!?
            text [Soldier]
                 You heard that.
                 Lift-your-skirt-up.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 Oooh....!!
                 I like that idea!! *Hic*
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E02",0,1)
                   $pose.pop
            text [\N[1]]
                 You....!!!
            text [Soldier]
                 H- Hey...!! Be careful, baby!
            text [Soldier]
                 You are in our military camp, don't you dare to attack 
                 a soldier right here!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E03",0,1)
                   $pose.pop
            text [\N[1]]
                 D- Do you really think I would do it!?
            text [Soldier]
                 It's up to you, girl.
                 You don't want to? Fine, just go back, empty-handed!
            text [Soldier]
                 Or you can just lift your skirt up so I can put my coins 
                 onto it, see?
            text [Soldier]
                 The choice is yours.
                 Heheheh...!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 Yeah! *Hic*
                 Earning money... ain't that easy, heheheh!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 (.............)
            text [\N[1]]
                 (What should I do...?)
            text [\N[1]]
                 (Doing that... impossible!
                 But I promised to take the money back for him.)
            text [\N[1]]
                 (...And I can't attack them here either.)
            text [\N[1]]
                 (Guess I have no other choice...)
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 So...? *Hic*
                 What are you... gonna *Hic* do...!?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.shake
            text [\N[1]]
                 ....
                 Fine, I will do it.
            playSE(volume=80, pitch=100, name="undress")
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","E07",0,1)
                   $pose.pop
            text [\N[1]]
                 Is this what you wanted?
            text As she had no choice, she raised her skirt up while 
                 her face blushed in shame. Her white panties 
                 became fully exposed to those soldiers.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Soldier]
                 Woow...!!
                 She really did it!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 Heheheh...
                 What a kind person! *Hic*
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 (............)
            text [\N[1]]
                 (I'm showing my panties to them strangers...)
            text [\N[1]]
                 (I can't believe that I'm doing this.
                 This is so humiliating...)
            text Witnessing a strong swordswoman like her in that 
                 shameful pose, those two began to humiliate her 
                 more...
            text [Soldier]
                 So this is how a swordwoman makes an 
                 'engagement' to her enemies?
            text [another Soldier]
                 You're an... *Hic* idiot!!
                 That must be *Hic* one... of her fighting styles!
            text [Soldier]
                 That's right!!
                 Hahahah!!
            text [another Soldier]
                 Heheheh...!! *Hic*
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","D","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (............)
            text [\N[1]]
                 (Must endure it...)
            text [Soldier]
                 I bet you love going around and flashing your panties 
                 like this?
            text [Soldier]
                 But... standing up for a dirty beggar, you've earned 
                 my respect.
            text [Soldier]
                 Here are the goddamn coins I promised!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [another Soldier]
                 Hey, d- do it *Hic* slow so we can... enjoy this sight a 
                 little more!
            text [Soldier]
                 Yeah, I'm gonna give them to her one-by-one, it'd take 
                 a while so, heheheh....!!
            text [\N[1]]
                 (..........)
            text [\N[1]]
                 (I must... stay calm.
                 Just a little more.)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            text ........
            text ...............
            wait 30
            playSE(volume=80, pitch=100, name="013-Move01")
            wait 50

          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 34,
      "y" => 10,
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

          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
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
                 (I can't return with empty hands.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown2
            movewait
          COMMANDS
        }
      ]
    },
    {
      "id" => 7,
      "name" => "Soldier 4",
      "x" => 11,
      "y" => 14,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Soldier]
                 Behave yourself, this is Commander's tent.
          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "Soldier 5",
      "x" => 2,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Soldier]
                 ...........
            text [Soldier]
                 (It's good to see such a pretty girl like this at a military 
                 camp.)
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 3,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => false,
          "direction_fix" => false,
          "through" => false,
          "always_on_top" => false,
          "trigger" => 0,
          "commands" => <<-COMMANDS
            text [Soldier]
                 Check out the tent ahead, I think I saw them talking 
                 with a beggar yesterday.
          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 16,
      "y" => 24,
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

          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "Soldier 1",
      "x" => 26,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Soldier]
                 You're looking for our Commander?
            text [Soldier]
                 He must be in his tent right now.
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Soldier]
                 The beggar?
            text [Soldier]
                 Don't know what are you talking about.
          COMMANDS
        }
      ]
    },
    {
      "id" => 3,
      "name" => "EV003",
      "x" => 15,
      "y" => 20,
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
            text > Lake Village.
                 v Southern Gate.
          COMMANDS
        }
      ]
    },
    {
      "id" => 14,
      "name" => "EV014",
      "x" => 12,
      "y" => 13,
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
            goto event 9

          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "Soldier 2",
      "x" => 24,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Soldier]
                 What time is it? I'm feeling hungry again...
          COMMANDS
        },
        {
          "conditions" => [ "switch(129)" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Soldier]
                 Hmm... no wonder our campfires are full of woods.
            text [Soldier]
                 Sorry but I don't know whoever did this.
          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "EV015",
      "x" => 23,
      "y" => 10,
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
            goto event 9

          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "Soldier 3",
      "x" => 13,
      "y" => 14,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Soldier]
                 Behave yourself, this is Commander's tent.
          COMMANDS
        }
      ]
    }
  ]
}
