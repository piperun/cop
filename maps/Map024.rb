map = {
  "tileset" => 1,
  "width" => 20,
  "height" => 15,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 1,
      "name" => "EV001",
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
            wait 10
            script $yuuki = Pose.new("AB","A01")
                   $yuuki.slide().shake()
            text Hi there.
            text You're playing the early stage version of my first 
                 ever game.
            text Since this is just an early stage, we only have a 
                 short prologue to offer.
            text But I still hope you will enjoy it.
            script $yuuki.face("A05")
            text Now do you want me to explain about the hotkeys?


              script $yuuki.face("A01").shake()
              text Very well.
                   We have totally 6 configurable hotkeys here.
                   You can re-config them by pressing F1.
              text Press Z to show Game Menu.
              text Press X to Cancel or Leave.
              text Press C to Confirm or Interact.
              text Press Q to skip Messages.
              text Press W to hide Message Window.
              text Press S to show Message Log.
              script $yuuki.face("A02")
              text Z, X, C and Q, W, S.
                   Pretty easy to remember, right?
              script $yuuki.face("A01")
              text But there's more.
                   Here are some features that are in progress.
              script $yuuki.face("A02")
              text Energy stat: It allows you to activate some events 
                   that require energy, mostly are repeatable daily 
                   events.
              script $yuuki.face("A01").blush()
              text Obedient stat: the name explains it, higher obedient 
                   level allows you to unlock certain events and mini-
                   events. It also changes the way you react.
              script $yuuki.face("A02")
              text Exposure stat: This one is hidden, It allows you to 
                   wear less clothes, at highest level you can become 
                   completely naked.
              text Of course there are some certain events will be able 
                   to activated with naked state for you to play.
              script $yuuki.face("A01").clear_effects()
              text And the last one, Title System: base on your 
                   achievements and events you have unlocked, you 
                   will get several different title ingame.
              text Some people will react differently based on which 
                   title you are 'wearing'.
              script $yuuki.face("A05")
              text They're interesting, right?
              script $yuuki.face("A06").blush()
              text But this is just an early stage, remember?
                   Many things still in development.
              script $yuuki.face("A01").clear_effects()
              text Well, that's all....
                   Don't forget to visit my patreon for more news and 
                   future updates.
              script $yuuki.face("A06")
              text If you want to support me, I'd appreciate it.
              text That's enough chit chat, now story begins....
              script $yuuki.clear()
              switch(41) = 0
              var(1) = 0
              switch(2) = 0
              var(11) = 100
              var(10) = 100
              var(8) = 0
              var(9) = 100
              var(5) = 1
              switch(42) = 0
              screen_tone(0,0,0,0,duration=20)
              wait 20
              moveroute()
                opacity(0)


              script $yuuki.pose("AB").face("A01")
              text Okay then, but how about the list of features that are 
                   being developed?


                text Okay, here are some features that are in progress.
                script $yuuki.face("A02")
                text Energy stat: It allows you to activate some events 
                     that require energy, mostly are repeatable daily 
                     events.
                script $yuuki.face("A01").blush()
                text Obedient stat: the name explains it, higher obedient 
                     level allows you to unlock certain events and mini-
                     events. It also changes the way you react.
                script $yuuki.face("A02")
                text Exposure stat: This one is hidden, It allows you to 
                     wear less clothes, at highest level you can become 
                     completely naked.
                text Of course there are some certain events will be able 
                     to activated with naked state for you to play.
                script $yuuki.face("A01")
                text And the last one, Title System: base on your 
                     achievements and events you have unlocked, you 
                     will get several different title ingame.
                text Some people will react differently based on which 
                     title you are 'wearing'.
                script $yuuki.face("A05").clear_effects()
                text They're interesting, right?
                script $yuuki.face("A06").blush()
                text But this is just an early stage, remember?
                     Many things still in development.
                script $yuuki.face("A01").clear_effects()
                text Well, that's all....
                     Don't forget to visit my patreon for more news and 
                     future updates.
                script $yuuki.face("A06")
                text If you want to support me, I'd appreciate it.
                script $yuuki.face("A02")
                text That's enough chit chat, now story begins....
                script $yuuki.dispose()
                switch(41) = 0
                var(1) = 0
                switch(2) = 0
                var(11) = 100
                var(10) = 100
                var(8) = 0
                var(9) = 100
                var(5) = 1
                switch(42) = 0
                screen_tone(0,0,0,0,duration=20)
                wait 20
                moveroute()
                  opacity(0)


                script $yuuki.pose("AB").face("D07")
                text Well, that's all....
                     Don't forget to visit my patreon for more news and 
                     future updates.
                script $yuuki.face("A06")
                text If you want to support me, I'd appreciate it.
                text That's enough chit chat, now story begins....
                script $yuuki.dispose()
                switch(41) = 0
                var(1) = 0
                switch(2) = 0
                var(11) = 100
                var(10) = 100
                var(8) = 0
                var(9) = 100
                var(5) = 1
                switch(42) = 0
                screen_tone(0,0,0,0,duration=20)
                wait 20
                moveroute()
                  opacity(0)



          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 10,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "", "tile" => 518, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
