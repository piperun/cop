map = {
  "tileset" => 36,
  "width" => 21,
  "height" => 15,
  "autoplay_bgm" => false,
  "bgm" => { "name" => "", "volume" => 100, "pitch" => 100 },
  "autoplay_bgs" => false,
  "bgs" => { "name" => "", "volume" => 80, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 1,
      "name" => "Commander",
      "x" => 10,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "var(1) >= 145" ],
          "graphic" => { "character" => "general01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
              face down
            movewait
            text [Commander]
                 You're looking for me?
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.slide
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A04",1,0)
                   $pose.shake
            text [\N[1]]
                 Yes, sir.
            text [\N[1]]
                 I come from 'Lake Village', the Mayor has sent me 
                 here.
            text [Commander]
                 ....
                 That old man?
            text [Commander]
                 I know what you're going to ask.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A03",1,0)
                   $pose.pop
            text [\N[1]]
                 ...........
            text [Commander]
                 You might already know this...
            text [Commander]
                 We're gonna have a fight against them in 'Coal 
                 Village'.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","A05",0,0)
                   $pose.pop
            text [\N[1]]
                 .....
                 So the rumor was true.
            text [Commander]
                 Yes, but not completely.
            text [Commander]
                 That village, it was a nice place, full of hard-working 
                 people...
            text [Commander]
                 But they don't know how to fight.
            text [Commander]
                 That made them an easy prey for those bandits, who 
                 were far from the North's border.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D04",1,0)
                   $pose.pop
            text [\N[1]]
                 What happened later? You didn't get there in time to 
                 stop them?
            text [Commander]
                 Obviously.
                 Somehow, they easily went through the borderline...
            text [Commander]
                 ... And without any resistance, they took over the 
                 village so fast.
            text [Commander]
                 It's totally unexpected.
            wait 20
            moveroute()
              unknown19
            movewait
            text [Commander]
                 We've underestimated their number and their 
                 organization...
            text [Commander]
                 So we brought here not enough soldiers for the fight.
            text [Commander]
                 While waiting for the reinforcement, we're also 
                 running out of stock.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",0,0)
                   $pose.pop
            text [\N[1]]
                 ...........
            text [Commander]
                 Now it's taking forever for us to engage them in this 
                 condition...
            text [Commander]
                 While they're growing stronger and bigger.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","C02",1,0)
                   $pose.pop
            text [\N[1]]
                 But the rumor...
            wait 20
            moveroute()
              face down
            movewait
            text [Commander]
                 That's my plan.
            text [Commander]
                 I've told my men to spread a rumor that King's troops 
                 are going for their heads, hoping they will run away.
            text [Commander]
                 It worked, but not as expected. It only affected few 
                 of them, mostly cowards that can't stand a fight.
            text [Commander]
                 Those bandits won't affect too much to the picture.
            text [Commander]
                 ..........
                 Maybe waiting is the only way...
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D03",1,0)
                   $pose.pop
            text [\N[1]]
                 ...........
            text [Commander]
                 Go back and tell your Mayor this, stay strong, and 
                 prepare for the worst case we can think of.
            text [Commander]
                 Your village is close enough for them to make an 
                 assault in order to expand their territory.
            script $pose.clear
                   $pose = nil
            script $pose = Pose.new("A","B","D07",0,0)
                   $pose.pop
            text [\N[1]]
                 ...........
                 I got it.
            script $pose.clear
                   $pose = nil
            moveroute(skippable)
              face down
              speed(2)
              unknown15
              unknown1
              unknown1
              unknown1
            movewait
            text [Commander]
                 .......
                 Sorry, but I did my best.
            wait 20
            moveroute(skippable)
              unknown19
            movewait
            wait 45
            moveroute(skippable)
              unknown1
              unknown1
              speed(4)
            movewait
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="013-Move01")
            wait 30
            var(1) = 150

          COMMANDS
        },
        {
          "conditions" => [ "var(1) >= 151" ],
          "graphic" => { "character" => "general01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
            text [Commander]
                 Sorry but I'm really busy.
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

          COMMANDS
        }
      ]
    }
  ]
}
