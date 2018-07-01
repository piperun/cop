map = {
  "tileset" => 54,
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
      "name" => "Kid 1",
      "x" => 13,
      "y" => 3,
      "pages" => [
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "kid_01_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Little kid]
                 Can you help me doing my homework?
            text [Little kid]
                 No?
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 13,
      "y" => 2,
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
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "", "tile" => 684, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
      "name" => "Door",
      "x" => 16,
      "y" => 8,
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
      "id" => 2,
      "name" => "EV002",
      "x" => 11,
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
      "name" => "Villager",
      "x" => 10,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 0" ],
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
                 Aah... \N[1]-chan!
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A05","A04",0,"A",0,0)
            switch(11) = 1
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","A05","A04",0,"B",1,0)
            text The man immediately grabs her breasts, not giving 
                 her a chance to react.
            text [Ron]
                 Just right when I need something to entertain...
            script $ev001.p("A","A01","A05",0,"B",1,0)
            text [\N[1]]
                 Wait-
            switch(11) = 0
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","A05","A05",0,"B",1,0)
            text [\N[1]]
                 Ah......!
            text His hands started to massage her breasts so 
                 smoothly like this is a common thing he does 
                 everyday.
            script $ev001.massage_on("A","B",4)
            wait 35
            script $ev001.p("A","B04","A02",1,"B",1,0)
            text [\N[1]]
                 You.....
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
            wait 10

            text [Ron]
                 Ouch!!
            wait 25
            text [Villager]
                 I was just kidding.....
            script $pose = Pose.new("A","A","E06",0,1)
                   $pose.slide
            text [\N[1]]
                 You deserve it.
            script $pose.clear
                   $pose = nil

          COMMANDS
        },
        {
          "conditions" => [ "switch(A)", "var(1) >= 0" ],
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
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A05","A04",0,"A",0,0)
            switch(11) = 0
            script $ev001.massage_on("A","B",5)
            script $ev001.p("A","A05","A05",1,"B",1,0)
            text [Ron]
                 Came back for this?
                 Heheh....
            script $ev001.p("A","A05","A05",1,"B",1,0)
            text [\N[1]]
                 .......!
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil

            text [Ron]
                 Ouch!!
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 45" ],
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
                 Hi- hi, Sei-kun....
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 90" ],
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
            script $ev001 = Bust_Anime.new
                   $ev001.p("A","A01","A02",0,"A",0,0)
            text [Ron]
                 Oooh Yuuki-san!!
                 You look really good today!
            switch(11) = 0
            script $ev001.Graphics_freeze
            script $ev001.massage_on("A","B",5)
            script $ev001.p("B","A05","A02",0,"B",1,0)
            text [Ron]
                 Your breasts... somehow they're  more attractive 
                 than before!
            script $ev001.p("B","B04","A04",1,"B",1,0)
            text [\N[1]]
                 Y- you....
                 You're at it again...!
            text [Ron]
                 It can't be helped, they're so gorgeous!!
            text [Ron]
                 I believe if you let me grope your breasts everyday,
                 it will become bigger and sexier!!
            script $ev001.p("B","B04","A05",1,"B",1,0)
            text [\N[1]]
                 What a lame excuse....!!
            text [Ron]
                 Heheh...
                 Are you feeling it...?
            script $ev001.p("B","B02","A05",1,"B",1,0)
            text [\N[1]]
                 ....What?
            text [Ron]
                 I thought you'd hit me right at the moment I touched 
                 your breasts...
            text [Ron]
                 Does it mean... what I think it means?
            script $ev001.p("B","B01","A02",1,"B",1,0)
            text [\N[1]]
                 ....!!!
            switch(11) = 1
            script $ev001.clear
                   $ev001 = nil
            wait 20

            text [Ron]
                 Woaah!!
            text [\N[1]]
                 .............
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)" ],
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
                 Oho!!
                 It's Yuuki-ch-
            text [Ron]
                 (Shit... I'm almost did it while my wife is nearby!)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 130" ],
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
                 Hi, \N[1]-chan!
                 You look beautiful today!
            script $pose = Pose.new("A","A","E07",1,1)
                   $pose.slide
            text [\N[1]]
                 Don't call me by that name, we're not that close-
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",1,1)
                   $pose.pop
            script $ev011 = Ev011.new
                   $ev011.pop("A")
            switch(13) = 0
            script $ev011.massage_on(10)
            text [\N[1]]
                 Wh- where do you think you're touching!?
            text [Ron]
                 Excuse me?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E07",1,1)
                   $pose.pop
            text [\N[1]]
                 You... you must be kidding me, right?
            text [Ron]
                 Heheh... this is just a casual greeting, don't get mad.
            text [Ron]
                 I see you don't like it when I massage your breasts 
                 without permission, so...
            text [Ron]
                 Some slightly touchings won't bother you much, 
                 right?
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E05",1,1)
                   $pose.pop
            text [\N[1]]
                 W-what?!
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","A","E04",1,1)
                   $pose.pop
            switch(13) = 1
            script $ev011.massage_off
            text [\N[1]]
                 Either of them are forbidden!
            script $ev011.clear
                   $ev011 = nil
            script $pose.clear
                   $pose = nil
            wait 10
            text [Seita]
                 (What kind of greeting is that...?)
          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 140" ],
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
                 Heheh... Greetings!
            script $pose = Pose.new("A","A","B01",0,1)
                   $pose.slide
            script $ev011 = Ev011.new
                   $ev011.pop("E")
            switch(13) = 0
            script $ev011.massage_on(10)
            text [\N[1]]
                 ...........!!!
            text [Ron]
                 Heheheh....
            text [Ron]
                 Hey it's just a casual greeting, you know.
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
            wait 25

            text [Ron]
                 Ouchh...!!
          COMMANDS
        },
        {
          "conditions" => [ "switch(43)", "var(1) >= 140" ],
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
                 (Damn, if my wife isn't here...)
          COMMANDS
        }
      ]
    },
    {
      "id" => 4,
      "name" => "Villager 2",
      "x" => 17,
      "y" => 3,
      "pages" => [
        {
          "conditions" => [ "switch(43)" ],
          "graphic" => { "character" => "121-Civilian21", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text [Villager]
                 Oi... I'm preparing the dinner.
          COMMANDS
        }
      ]
    }
  ]
}
