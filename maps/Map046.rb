map = {
  "tileset" => 54,
  "width" => 25,
  "height" => 25,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "019-People01", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 5,
      "name" => "EV005",
      "x" => 22,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I shouldn't go up there without permission.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 9999" ],
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
      "id" => 16,
      "name" => "Barkeeper",
      "x" => 17,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian15", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Bartender]
                 Welcome, what do you want to drink?
            text [Bartender]
                 No?
          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Thug 1",
      "x" => 18,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 Woa, what a pretty girl!
                 Wanna have a drink with us?
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 Th- thanks, but I don't drink.
            text [Thug]
                 For real!?
                 What a waste!
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 Please clean the table for us.
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(132)", "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 Heheheh, you're interesting,
                 I'm starting to like you, girl.
          COMMANDS
        }
      ]
    },
    {
      "id" => 22,
      "name" => "EV022",
      "x" => 18,
      "y" => 11,
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
          "conditions" => [ "switch(131)" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            playSE(volume=75, pitch=100, name="036-Switch05")

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)" ],
          "graphic" => { "character" => "", "tile" => 386, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
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
      "id" => 6,
      "name" => "Villager 1",
      "x" => 3,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian03", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Blue-haired Young Man]
                 A girl like you should be careful for being here.
            text [Blue-haired Young Man]
                 This place is full of troubles.
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian03", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 Excuse me, do you need anytthing?
            text [Blue-haired Young Man]
                 Ah- yes, can you wipe these spilled leftovers on the 
                 table for us?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Yes, sir.
            script $pose.clear
                   $pose = nil
            moveroute()
              face right
            movewait

            wait 10
            script $Ev005 = Ev005.new("C01")
                   $Ev005.pop
            text [Blue-haired Young Man]
                 (.....*Clears throat*)
            text [Blue-haired Young Man]
                 (Her boobs look so delicious!!)
            text [Middle-Aged Man]
                 (This is her intention, isn't it?)
            text [Blue-haired Young Man]
                 (I don't know, man, just enjoy it for now!)
            script $Ev005.clear
                   $Ev005 = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 It's done!
                 Anything else?
            text [Blue-haired Young Man]
                 G- Good job...!
                 We are good now, thanks!
            script $pose.clear
                   $pose = nil

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian03", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Villager]
                 Y- You're doing good!
                 Keep it up.
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Heheh... thanks!
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 17,
      "name" => "Villager 6",
      "x" => 15,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian14", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Villager]
                 This place should hire more girls.
                 Now it looks so boring.
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian14", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Villager]
                 You're... the new girl?
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 Y- Yes, but only for today.
            text [Villager]
                 *Sighs*
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 12,
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
            goto event 10

          COMMANDS
        },
        {
          "conditions" => [ "switch(131)" ],
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
                 (I cannot leave right now.)
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
      "id" => 12,
      "name" => "Thug 2",
      "x" => 20,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 You sure have a perfect shape,
                 I wonder what's hiding under these clothes?
            text [Thug]
                 Hahahah...!!!
            script $pose = Pose.new("A","A","E02",0,1)
                   $pose.slide
            text [\N[1]]
                 (What a rude person...)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 Please clean the table for us.
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(132)", "var(1) >= 151" ],
          "graphic" => { "character" => "Thieves01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 Wanna go for another shot?
          COMMANDS
        }
      ]
    },
    {
      "id" => 23,
      "name" => "EV023",
      "x" => 10,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "switch(131)" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            playSE(volume=75, pitch=100, name="036-Switch05")

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)" ],
          "graphic" => { "character" => "", "tile" => 386, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
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
      "id" => 7,
      "name" => "Villager 2",
      "x" => 7,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Middle-Aged Man]
                 Foods here are mediocre, but their wines are the 
                 best!
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Middle-Aged Man]
                 C- Can I know your name?
            script $pose = Pose.new("A","B","A06",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",1,0)
                   $pose.shake
            text [\N[1]]
                 Y- Yes, my name is Yuuki.
            text [Middle-Aged Man]
                 Oh... what a beautiful name!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 So...
                 You don't need anything?
            script $pose.clear
                   $pose = nil

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian11", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Middle-Aged Man]
                 It's good to have you here.
                 I'll come here frequently.
          COMMANDS
        }
      ]
    },
    {
      "id" => 18,
      "name" => "EV018",
      "x" => 3,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            script $pose = Pose.new("A","B","D03",0,1)
                   $pose.slide
            text [\N[1]]
                 (I don't need this now.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 24,
      "name" => "EV024",
      "x" => 19,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => true,
          "direction_fix" => true,
          "through" => true,
          "always_on_top" => false,
          "trigger" => 1,
          "commands" => <<-COMMANDS
            moveroute()
              unknown19
            movewait
            script $pose = Pose.new("A","B","A06",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",1,0)
                   $pose.shake
            text [\N[1]]
                 Excuse me, I'm gonna clean your table now.
            script $pose.clear
                   $pose = nil
            moveroute()
              face right
            movewait
            text [Thug A]
                 Yeah, thanks for that!
            moveroute()
              face left
            movewait
            text [Thug B]
                 Oops...
                 Isn't this spot is pretty tight?
            script $ev021 = Ev021.new
                   $ev021.pop("A")
            switch(15) = 0
            script $ev021.massage_on("A",10)
            text [Thug A]
                 Yea, I guess it can't be helped if we accidentally... do 
                 this.
            moveroute()
              face left
            movewait
            switch(15) = 1
            script $ev021.clear
                   $ev021 = nil
            script $pose = Pose.new("A","B","D04",1,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D04",1,1)
                   $pose.shake
            text [\N[1]]
                 ...
                 P- Please don't do it.
            script $ev021 = Ev021.new
                   $ev021.pop("A")
            switch(15) = 0
            script $ev021.massage_on("A",10)
            text [Thug B]
                 But you have to do your job anyway, right?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,1)
                   $pose.shake
            text [\N[1]]
                 Y- You too...!
                 Get your hand off, please!
            switch(15) = 1
            script $ev021.clear
                   $ev021 = nil
            text [Thug B]
                 Okay then, just have a glass of wine and you can go.
            text [Thug A]
                 Or maybe you want stay with us like this?
                 Heheheh...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",1,1)
                   $pose.pop
            text [\N[1]]
                 ...........
                 F- Fine.
            text [\N[1]]
                 ............
            text [\N[1]]
                 (This is my first time drinking wine...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 *Gulps...*
            text [Thug A]
                 Heheheh...
                 She's really doing it.
            text [Thug B]
                 That's it!
                 Make sure it's completely empty, girl!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D04",0,1)
                   $pose.pop
            text [\N[1]]
                 Fuawaah~
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","D03",0,1)
                   $pose.pop
            text [\N[1]]
                 (I- I drank it all...)
            text [\N[1]]
                 (Feels like it's burning in my throat...)
            text [Thug A]
                 Good job, heheheh...
                 You'll get used to it soon.
            text [Thug B]
                 A pretty girl loves drinking alcohol?
                 That's awesome!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,1)
                   $pose.pop
            text [\N[1]]
                 (I won't become a girl like that!)
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown19
            moveroute()
              unknown19
            movewait

            var(52) = 1
            switch(132) = 0
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
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
      "name" => "Door",
      "x" => 3,
      "y" => 9,
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
            goto event 2
          COMMANDS
        }
      ]
    },
    {
      "id" => 13,
      "name" => "Villager 7",
      "x" => 11,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
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
            text [Villager]
                 Hey, you want to have a date with me?
                 I will pay!
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 S- sorry but I can't.
            text [Villager]
                 *Sighs*
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
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
            text [Villager]
                 If my wife comes here don't tell her where I am,
                 please.
          COMMANDS
        }
      ]
    },
    {
      "id" => 8,
      "name" => "Conrad",
      "x" => 5,
      "y" => 21,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            script $ev011 = Ev011.new
                   $ev011.pop("A")
            switch(13) = 0
            script $ev011.massage_on(10)
            text [Conrad]
                 *Uugh*
                 Oh... what a beauty...!
            script $ev011.massage_on(10)
            script $pose = Pose.new("A","B","E05",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,1)
                   $pose.shake
            text [\N[1]]
                 Wh- what are you...!!
            text [Conrad]
                 Heheh... just a little touch~
                 No need to get angry.
            text [Villager]
                 *Ughh....*
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.pop
            text [\N[1]]
                 (He's drunk already...)
            script $pose.clear
                   $pose = nil
            switch(13) = 1
            script $ev011.clear
                   $ev011 = nil
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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

            script $pose = Pose.new("A","B","D07",1,0)
                   $pose.slide
            text [\N[1]]
                 (I hate getting close to this man, but I think I have to 
                 do it anyway...)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",1,0)
                   $pose.shake
            text [\N[1]]
                 Excuse me, but do you need anyth-
            script $pose.clear
                   $pose = nil
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A02",0,"A",0,0)
            moveroute()
              unknown25
            movewait
            text [Conrad]
                 Nyeheheh...
                 So you've come!
            switch(11) = 0
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","A",5)
            script $ev001.p("B","A05","A04",0,"B",0,0)
            text [Conrad]
                 Let me feel your boobs a little, heheh...!!
            text Suddenly getting both of her breasts groped by that 
                 drunk old-man, \N[1] let out a gasp.
            text [\N[1]]
                 Hyah!?
            script $ev001.p("B","B01","A06",1,"B",0,0)
            text [\N[1]]
                 Wh... What are you doing!?
            text [Conrad]
                 Oi... it's called 'skinship'!
                 No need to get mad.
            text [\N[1]]
                 Aah... S- Stop it or you will regret!
            text [Conrad]
                 Heheheh... fine.
                 I've got to feel your boobs anyway.
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
            script $pose = Pose.new("A","B","E06",0,1)
                   $pose.slide
            text [\N[1]]
                 (What a rude person...)
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown19
            movewait

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            script $ev011 = Ev011.new
                   $ev011.pop("E")
            switch(13) = 0
            script $ev011.massage_on(10)
            text [Conrad]
                 Heheheh... come for another round?
            script $pose = Pose.new("A","B","E05",0,1)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E05",0,1)
                   $pose.shake
            script $ev011.massage_on(10)
            text [\N[1]]
                 ......
                 Cut it out already!
            script $pose.clear
                   $pose = nil
            switch(13) = 1
            script $ev011.clear
                   $ev011 = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 19,
      "name" => "EV019",
      "x" => 7,
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        },
        {
          "conditions" => [ "switch(131)" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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

            moveroute()
              unknown19
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            wait 10
            playSE(volume=80, pitch=100, name="undress")
            script $Ev020 = Ev020.new("A",1,1,1,1)
                   $Ev020.pop
            text [Middle-Aged Man]
                 Oops!
                 Her panties are being shown!
            text [Middle-Aged Man]
                 C- Can you see it!?
            moveroute()
              unknown19
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Blue-haired Young Man]
                 Y- Yeah, barely!!
            script $Ev020.clear
                   $Ev020 = nil
            moveroute()
              graphic(name="", 0, 2, 0)
            moveroute()
              face down
            moveroute()
              face right
            moveroute()
              face left
            movewait
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.shake
            text [\N[1]]
                 ....?
            script $pose.clear
                   $pose = nil

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)" ],
          "graphic" => { "character" => "", "tile" => 386, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
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
      "id" => 3,
      "name" => "EV003",
      "x" => 9,
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
      "id" => 14,
      "name" => "Soldier",
      "x" => 19,
      "y" => 7,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 *Ughhh...*
                 Y- your face... seems familiar....
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "soldier01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
                 *Ughhh...*
                 Y- your face... seems familiar....
          COMMANDS
        }
      ]
    },
    {
      "id" => 9,
      "name" => "Villager 4",
      "x" => 17,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Topless Man]
                 I heard this place is looking for a girl to hire.
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Excuse me, do you need anything?
            text [Topless Man]
                 Care to sit down and have a few drinks with us?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 Sorry but I can't drink while working.
            script $pose.clear
                   $pose = nil
            text [Topless Man]
                 Oh- Okay, another time then.

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            text [Topless Man]
                 Want to have a few drinks and chit-chat with us?
          COMMANDS
        }
      ]
    },
    {
      "id" => 20,
      "name" => "EV020",
      "x" => 2,
      "y" => 21,
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
          "conditions" => [ "switch(131)" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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

            moveroute()
              face left
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            wait 10
            script $pose = Pose.new("B","A","A01",0,0)
                   $pose.pop
            text [Bearded Man]
                 Woaa... what a great ass!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("B","B","A01",0,0)
                   $pose.pop
            playSE(volume=80, pitch=100, name="015-Jump01")
            text [Bearded Man]
                 ...Amazing, heheheh!!
            moveroute()
              face right
            movewait
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E04",0,1)
                   $pose.shake
            text [\N[1]]
                 ....!!!
            text [Bearded Man]
                 Ooh... so scary~
                 Heheheh...!!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","E06",1,1)
                   $pose.pop
            text [\N[1]]
                 (Must stay calm...)
            script $pose.clear
                   $pose = nil
            moveroute()
              unknown19
            movewait

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)" ],
          "graphic" => { "character" => "", "tile" => 386, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
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
      "id" => 4,
      "name" => "EV004",
      "x" => 21,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 (I shouldn't go up there without permission.)
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              unknown1
            movewait
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 9999" ],
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
      "id" => 15,
      "name" => "Barkeeper 2",
      "x" => 13,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
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
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Barkeeper]
                 Ah, \N[1]-san!
                 It's been a long time!
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 Yes, it's been a while.
            text [Barkeeper]
                 It's alright, I know you don't like this place 
                 atmosphere.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",0,0)
                   $pose.pop
            text [\N[1]]
                 Y- Yeah, this place is a little bit complicated for me.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Anyway, how are you doing recently?
            text [Barkeeper]
                 Honestly, tough time.
            text [Barkeeper]
                 The former waitress has left and now we don't have 
                 any.
            text [Barkeeper]
                 I know these man, most of them came here just 
                 because of two things.
            text [Barkeeper]
                 Drinking and flirting.
            text [Barkeeper]
                 Because of that we now have less customers than 
                 before.
            text [Barkeeper]
                 .......
                 I know you might not like it, but...
            text [Barkeeper]
                 Can you help us out?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A04",0,0)
                   $pose.pop
            text [\N[1]]
                 Y- you want me to work here as a waitress?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Barkeeper]
                 N- No... I didn't mean that.
            text [Barkeeper]
                 This isn't a job, not completely.
                 It's more like a... favor.
            text [Barkeeper]
                 I just need you to be a waitress for a day,
                 just a temporary solution.
            text [Barkeeper]
                 You can quit anytime you want, or continue to work 
                 for another day.
            text [Barkeeper]
                 It's all up to you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A03",0,0)
                   $pose.pop
            text [\N[1]]
                 Well, if it's just for a day...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Then I guess it's okay.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Barkeeper]
                 Really?
                 Thank you!
            text [Barkeeper]
                 Shall we start now?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A06",0,0)
                   $pose.pop
            text [\N[1]]
                 Yeah, if you want.
            text [Barkeeper]
                 Then please keep the floor clean and talk to each 
                 customer if they need anything.
            text [Barkeeper]
                 It's not so hard for you, right?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 Yeah, it sounds simple enough.
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Barkeeper]
                 And.... one last thing!
            text [Barkeeper]
                 You might get flirted around, please bear with it, 
                 okay?
            text [Barkeeper]
                 I promise they won't do anything to you.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.pop
            text [\N[1]]
                 (You already made me a bit worried...)
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20

            wait 35
            switch(131) = 0
            var(52) = 5
            screen_tone(0,0,0,0,duration=20)
            wait 20

            script $pose = Pose.new("A","B","A01",0,0)
                   $pose.slide
            text [\N[1]]
                 (Now I gotta clean the place first, then talk to all 
                 customers to see if they need anything...)
            text [\N[1]]
                 (Let's do this.)
            script $pose.clear
                   $pose = nil
          COMMANDS
        },
        {
          "conditions" => [ "var(52) >= 5" ],
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
            text [Barkeeper]
                 How is everything going?
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(52) >= 16" ],
          "graphic" => { "character" => "Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            screen_tone(0,0,0,0,duration=20)
            wait 20

            wait 50


            screen_tone(0,0,0,0,duration=20)
            wait 20
            text [Barkeeper]
                 You've worked hard today, \N[1]-san!
            script $pose = Pose.new("A","A","D07",0,1)
                   $pose.slide
            text [\N[1]]
                 (........)
            text [Barkeeper]
                 .....
                 \N[1]-san?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.shake
            text [\N[1]]
                 Ah- yes, I was just doing my best!
            text [Barkeeper]
                 Yes~
                 I can see that!
            text [Barkeeper]
                 Here's your payment, you really deserve it!
            playSE(volume=80, pitch=100, name="006-System06")

            text Received \c[6]300G\c[8]!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Thanks.
            script $pose.clear
                   $pose = nil
            text [Barkeeper]
                 You can come by and have a drink anytime, it's 
                 gonna be free.
            text [Barkeeper]
                 Thank you again!


            var(52) = 20
            switch(131) = 1
            screen_tone(0,0,0,0,duration=20)
            wait 40
            switch(44) = 0
            switch(42) = 1
            switch(43) = 1
            script $pose = Pose.new("A","A","B01",0,0)
                   $pose.pop
            text [\N[1]]
                 It's night already?
            text [\N[1]]
                 I better go home.
            script $pose.clear
                   $pose = nil
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="013-Move01")
            wait 30
            playSE(volume=80, pitch=100, name="024-Door01")

            screen_tone(0,0,0,0,duration=20)
            wait 20
          COMMANDS
        },
        {
          "conditions" => [ "var(52) >= 20" ],
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
            text [Barkeeper]
                 You look good today, \N[1]-san!
            text [Barkeeper]
                 How about working here today?
            script $pose = Pose.new("A","A","D06",1,0)
                   $pose.slide
            text [\N[1]]
                 M- Maybe another time.
            text [Barkeeper]
                 Alright then.
            script $pose.clear
                   $pose = nil
          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "Villager 5",
      "x" => 21,
      "y" => 16,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Middle-Aged Man]
                 Woop!
                 Are you the new waitress here!?
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A06",0,0)
                   $pose.shake
            text [\N[1]]
                 Excuse me, do you need anything?
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Middle-Aged Man]
                 Nope!
                 We're good.
            text [Middle-Aged Man]
                 J- Just refill my cup!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","B","A05",1,0)
                   $pose.pop
            text [\N[1]]
                 O- Okay, here it is.
            text [Middle-Aged Man]
                 (Wew...!!)
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("C","A","A01",0,0)
                   $pose.pop
            text [\N[1]]
                 Anything else?
            script $pose.clear
                   $pose = nil
            text [Middle-Aged Man]
                 N- No, thanks.
            moveroute()
              face left
            movewait

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)", "var(1) >= 151" ],
          "graphic" => { "character" => "Civilian07", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
            text [Middle-Aged Man]
                 Wine is good, now we even have a pretty girl!
          COMMANDS
        }
      ]
    },
    {
      "id" => 21,
      "name" => "EV021",
      "x" => 15,
      "y" => 16,
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
          "conditions" => [ "switch(131)" ],
          "graphic" => { "character" => "twinkle", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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

            moveroute()
              face left
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            wait 10
            script $Ev005 = Ev005.new("C01")
                   $Ev005.pop
            text [Topless Man]
                 Oh boy, look at her cleavage!
            text [Middle-Aged Man]
                 Y- Yeah, is she teasing us!?
            text [Topless Man]
                 Don't know man but I want to squeeze those tits so 
                 bad!
            text [Middle-Aged Man]
                 Best tits I've seen in a while!
            script $Ev005.clear
                   $Ev005 = nil
            script $pose = Pose.new("A","B","A03",0,0)
                   $pose.slide
            text [\N[1]]
                 ...Excuse me?
            script $pose.clear
                   $pose = nil
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Topless Man]
                 Oh, no- nothing!
            moveroute()
              face right
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait

            var(52) = 1
          COMMANDS
        },
        {
          "conditions" => [ "switch(131)", "switch(A)" ],
          "graphic" => { "character" => "", "tile" => 386, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => false,
          "stop_animation" => false,
          "direction_fix" => true,
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
