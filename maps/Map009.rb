map = {
  "tileset" => 52,
  "width" => 20,
  "height" => 20,
  "autoplay_bgm" => true,
  "bgm" => { "name" => "024-Town02", "volume" => 80, "pitch" => 100 },
  "autoplay_bgs" => true,
  "bgs" => { "name" => "", "volume" => 45, "pitch" => 100 },
  "encounter_list" => [],
  "encounter_step" => 30,
  "events" => [
    {
      "id" => 16,
      "name" => "EV016",
      "x" => 16,
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


          COMMANDS
        }
      ]
    },
    {
      "id" => 5,
      "name" => "Takashi",
      "x" => 11,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "switch(41)", "var(1) >= 0" ],
          "graphic" => { "character" => "taka01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
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
            moveroute()
              opacity(0)
            movewait

            wait 60
            screen_tone(0,0,0,0,duration=40)
            wait 45
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Takashi]
                 You can't, Sei-kun.
                 You're so fucking weak.
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 I'm- I'm not!!
            text [Hiroshi]
                 Taka-kun is right, you can't be an adventurer.
            moveroute()
              face right
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 No, I'm gonna be an adventurer, just like my daddy!!
            text [Little kid]
                 But he's dead...
            moveroute()
              unknown19
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Sh- shut up!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Seita]
                 Don't talk about him like that!!
            movewait
            text [Hiroshi]
                 This brat is getting annoying...
            text [Takashi]
                 I wanna punch him in the face...
            text .....
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown15
              face left
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown15
            wait 50


            wait 40
            playSE(volume=80, pitch=100, name="073-Animal08")
            wait 25
            moveroute()
              face right
            moveroute()
              face right
            moveroute()
              face right
            movewait
            text [Hiroshi]
                 ...what was that!?
            text [Takashi]
                 Was that a... beast?
            text [Seita]
                 ............
            moveroute()
              opacity(255)
              playSE(volume=80, pitch=100, name="073-Animal08")
            movewait

            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            moveroute()
              jump(x=0, y=0)
            moveroute()
              jump(x=0, y=0)
            moveroute()
              jump(x=0, y=0)
            movewait
            wait 25
            text [All]
                 \bWOAAH!!!!\b
            moveroute()
              speed(4)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown1
              unknown2
              unknown2
              face right
              speed(4)
            moveroute()
              speed(4)
              playSE(volume=80, pitch=100, name="015-Jump01")
              unknown2
              face right
              speed(4)
            movewait
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 It- It's a TIGER!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Wh- what now?!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 ...Stop that beast, Seita!!
                 Aren't you strong?!!
            wait 20
            text [Seita]
                 .................
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Shit, he's wetting his pants...!!
            text [Little kid]
                 We're so DEAD...!!
            moveroute()
              speed(2)
              move forward
              move forward
              playSE(volume=80, pitch=100, name="073-Animal08")
            movewait
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Hiroshi]
                 IT'S COMING...!!
            movewait
            text [Seita]
                 .................
            wait 20
            moveroute()
              move forward
              playSE(volume=80, pitch=100, name="073-Animal08")
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Takashi]
                 GO AWAY YOU BEAST!!
            movewait
            text [Seita]
                 .................
            moveroute()
              move forward
              playSE(volume=80, pitch=100, name="073-Animal08")
            movewait
            text [???]
                 HEY!!!!
            wait 20
            moveroute()
              face down
            moveroute()
              face down
            moveroute()
              face down
            moveroute()
              face down
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Hiroshi]
                 Who... who is that!?
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 That voice...!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Sister!! It's my sister!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 Yayy!!
            text [Little kid]
                 We are saved...!!
            moveroute()
              unknown19
              opacity(255)
            movewait
            text [\N[1]]
                 Sei-chan!!
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Seita]
                 Nee-chan!!
            moveroute()
              speed(5)
              transfer player
              unknown3
              unknown3
              transfer player
              transfer player
              transfer player
              transfer player
              transfer player
              unknown3
              unknown3
              unknown3
              transfer player
              transfer player
              face right
              unknown15
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            moveroute()
              face right
            moveroute()
              face right
            moveroute()
              face right
            moveroute()
              face right
            movewait

            text [\N[1]]
                 Hyyaaa!!
            wait 20
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Little kid]
                 Y- yeah!! Back off you monster!!
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Takashi]
                 She's gonna kick your ASS!!
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            text [Hiroshi]
                 She is much stronger than you think!!
            movewait

            wait 20
            moveroute()
              playSE(volume=80, pitch=100, name="073-Animal08")
            moveroute()
              unknown13
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Little kid]
                 It's drawing back!!
            wait 20
            moveroute()
              playSE(volume=80, pitch=100, name="073-Animal08")
            moveroute()
              unknown13
            movewait
            moveroute()
              jump(x=0, y=0)
              playSE(volume=80, pitch=100, name="015-Jump01")
            movewait
            text [Takashi]
                 That's right! Get away from us!!
            wait 20
            moveroute(skippable)
              playSE(volume=75, pitch=120, name="073-Animal08")
              unknown15
              playSE(volume=80, pitch=100, name="073-Animal08")
            movewait
            moveroute(skippable)
              face right
              speed(2)
              unknown15
              move forward
              move forward
              playSE(volume=70, pitch=100, name="013-Move01")
              opacity(0)
            movewait

            wait 40
            text [\N[1]]
                 ............
            moveroute()
              face left
            movewait
            text [\N[1]]
                 Looks like it's gone...
                 We're safe now.
            wait 20
            text [Hiroshi]
                 .....It was so scary...
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Takashi]
                 Thank you so much, nee-chan!
            text [Takashi]
                 You're so strong!!
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Little kid]
                 Yeah, we would be dead without you!!
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Hiroshi]
                 My heart almost jumped out that moment...!!
            text [Hiroshi]
                 And Sei-kun he was...
                 Oh, look at him~
            moveroute()
              playSE(volume=80, pitch=100, name="015-Jump01")
              jump(x=0, y=0)
            movewait
            text [Takashi]
                 Hahahah...!!
                 This brat, he wet his pants all over!!
            text [\N[1]]
                 ..............
            wait 20
            text [Seita]
                 I- I'm sorry, nee-chan....
            text [\N[1]]
                 ....It's alright.
                 Let's go home, Sei-chan.
            text [\N[1]]
                 And you guys too, don't let your parents worry.
            wait 25
            screen_tone(0,0,0,0,duration=20)
            wait 20
            playSE(volume=80, pitch=100, name="013-Move01")
            wait 30
            text ........
            text .....................
            text [\N[1]]
                 Something isn't right....
            text [\N[1]]
                 What made a tiger came this close to the village?
                 This never happened before...
            text [\N[1]]
                 ............
            text [\N[1]]
                 I should report to the mayor.
            playSE(volume=80, pitch=100, name="013-Move01")
            movewait
            var(1) = 10

          COMMANDS
        },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 11,
      "name" => "Kid02",
      "x" => 12,
      "y" => 5,
      "pages" => [
        {
          "conditions" => [ "switch(41)", "var(1) >= 0" ],
          "graphic" => { "character" => "kid_02_01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 17,
      "name" => "EV017",
      "x" => 15,
      "y" => 18,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 1, "direction" => 6 },
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
            text v Ancient Tree
          COMMANDS
        }
      ]
    },
    {
      "id" => 6,
      "name" => "EV006",
      "x" => 8,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "186-Bulletin01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 8 },
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
            text ^ East Road | Lake Village v
          COMMANDS
        }
      ]
    },
    {
      "id" => 1,
      "name" => "EV001",
      "x" => 5,
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
          "trigger" => 1,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 12,
      "name" => "EV012",
      "x" => 4,
      "y" => 8,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => true,
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
      "id" => 7,
      "name" => "Weather",
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
            script $game_screen.weather(13, 5, 0, 9)

          COMMANDS
        }
      ]
    },
    {
      "id" => 18,
      "name" => "Tiger",
      "x" => 19,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "switch(41)", "var(1) >= 0" ],
          "graphic" => { "character" => "158-Animal08", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 2,
      "name" => "EV002",
      "x" => 16,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "197-Support05", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => true,
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
      "id" => 13,
      "name" => "EV013",
      "x" => 2,
      "y" => 9,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "fish2", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 6 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => true,
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
      "x" => 0,
      "y" => 12,
      "pages" => [
        {
          "conditions" => [],
          "graphic" => { "character" => "185-Light02", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 2 },
          "move_type" => 0,
          "move_speed" => 3,
          "move_frequency" => 3,
          "move_animation" => true,
          "stop_animation" => true,
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
      "id" => 14,
      "name" => "EV014",
      "x" => 0,
      "y" => 18,
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
      "id" => 9,
      "name" => "Seita",
      "x" => 12,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "switch(41)", "var(1) >= 0" ],
          "graphic" => { "character" => "seita01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    },
    {
      "id" => 15,
      "name" => "EV015",
      "x" => 0,
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


          COMMANDS
        }
      ]
    },
    {
      "id" => 10,
      "name" => "Hiro",
      "x" => 13,
      "y" => 6,
      "pages" => [
        {
          "conditions" => [ "switch(41)", "var(1) >= 0" ],
          "graphic" => { "character" => "hiro01", "tile" => 0, "opacity" => 255, "blend" => 0, "hue" => 0, "pattern" => 0, "direction" => 4 },
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
          "trigger" => 0,
          "commands" => <<-COMMANDS

          COMMANDS
        }
      ]
    }
  ]
}
