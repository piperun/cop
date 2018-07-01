event(id=1, trigger=autorun, switch=6, name="Clothing Check")
  if switch(7) == true
    switch(6) = 1
  else
    if var(4) == 3
      if switch(47) == true
        switch(6) = 1
      else
        script $pose = Pose.new("A","A","D01",0)
               $pose.slide
        script $pose.clear
               $pose = nil
        script $pose = Pose.new("A","A","D01",0)
               $pose.shake
        script $pose.clear
               $pose = nil
        script $pose = Pose.new("A","B","D02",0)
               $pose.pop
        text 【\N[1]】
             (...I'm almost naked.
              I can't go like this during the day!)
        script $pose.clear
               $pose = nil
        goto menu
      end
    else
      if var(4) == 4
        if switch(47) == true
          switch(6) = 1
        else
          script $pose = Pose.new("A","A","D01",0)
                 $pose.slide
          script $pose.clear
                 $pose = nil
          script $pose = Pose.new("A","A","D01",0)
                 $pose.shake
          script $pose.clear
                 $pose = nil
          script $pose = Pose.new("A","C","D02",0)
                 $pose.pop
          text 【\N[1]】
               (Outside...naked...?
               I should at least wait until dark)
          script $pose.clear
                 $pose = nil
          goto menu
        end
      else
        switch(6) = 1
      end
    end
  end

event(id=2, trigger=none, switch=1, name="Door (Small)")
  playSE(volume=80, pitch=100, name="024-Door01")
  moveroute(skippable=true, repeat=true)
    turn = true
    noclip = true
    face right
  movewait
  moveroute(skippable=true, repeat=true)
    try move forward
    try move forward
  movewait
  moveroute(skippable=true, repeat=true)
    face down
    turn = false
    noclip = false
  movewait

event(id=3, trigger=none, switch=1, name="Door (Medium)")
  playSE(volume=80, pitch=100, name="025-Door02")
  moveroute(skippable=true, repeat=true)
    turn = true
    noclip = true
    face left
  movewait
  moveroute(skippable=true, repeat=true)
    try move forward
    try move forward
  movewait
  moveroute(skippable=true, repeat=true)
    face down
    turn = false
    noclip = false
  movewait

event(id=4, trigger=none, switch=1, name="Door (Bars)")
  playSE(volume=80, pitch=100, name="026-Door03")
  moveroute(skippable=true, repeat=true)
    turn = true
    noclip = true
    face left
  movewait
  moveroute(skippable=true, repeat=true)
    try move forward
    try move forward
  movewait
  moveroute(skippable=true, repeat=true)
    face down
    turn = false
    noclip = false
  movewait

event(id=5, trigger=none, switch=1, name="Treasure")
  playSE(volume=80, pitch=100, name="044-Chest01")
  moveroute(skippable=true, repeat=true)
    turn = true
    face left
  movewait

event(id=6, trigger=none, switch=1, name="Morning-Noon")
  screen_tone(0,0,0,0,duration=0)

event(id=7, trigger=none, switch=1, name="Evening")
  screen_tone(0,0,0,0,duration=0)

event(id=8, trigger=none, switch=1, name="Night")
  screen_tone(0,0,0,0,duration=0)

event(id=9, trigger=none, switch=1, name="Indoor")
  switch(49) = 0
  switch(50) = 1
  screen_tone(0,0,0,0,duration=0)

event(id=10, trigger=none, switch=1, name="Outdoors")
  switch(49) = 1
  switch(50) = 0
  if switch(42) == true
    goto event 6
  end
  if switch(43) == true
    goto event 7
  end
  if switch(44) == true
    goto event 8
  end

event(id=11, trigger=none, switch=1, name="Rest")
  playME(volume=100, pitch=100, name="014-Inn01")
  actor(1).hp += 9999
  actor(1).sp += 9999

event(id=12, trigger=none, switch=1, name="Rest(Until Night)")
  playME(volume=100, pitch=100, name="014-Inn01")
  state(actor=1, state=1) = false
  actor(1).hp += 9999
  actor(1).sp += 9999
  switch(42) = 1
  switch(43) = 1
  switch(44) = 0

event(id=13, trigger=none, switch=1, name="Sleep")
  playME(volume=100, pitch=100, name="014-Inn01")
  state(actor=1, state=1) = false
  actor(1).hp += 9999
  actor(1).sp += 9999
  var(2) = 1
  switch(42) = 0
  switch(43) = 1
  switch(44) = 1
  var(10) = 100

event(id=14, trigger=none, switch=1, name="Rest(Until Dusk)")
  playME(volume=100, pitch=100, name="014-Inn01")
  state(actor=1, state=1) = false
  actor(1).hp += 9999
  actor(1).sp += 9999
  switch(42) = 1
  switch(44) = 1
  switch(43) = 0

event(id=15, trigger=none, switch=1, name="")

event(id=16, trigger=none, switch=1, name="Clothes Reset")
  var(3) = 1
  state(actor=1, state=17) = false
  switch(1) = 1
  switch(8) = 1

event(id=17, trigger=none, switch=1, name="")

event(id=18, trigger=none, switch=1, name="")

event(id=19, trigger=none, switch=1, name="")

event(id=20, trigger=none, switch=1, name="Orgasm")
  playSE(volume=80, pitch=100, name="CumF")
  screen_flash(0,0,0,0,duration=10)

event(id=21, trigger=none, switch=1, name="Orgasm (No sound)")
  screen_flash(0,0,0,0,duration=10)

event(id=22, trigger=none, switch=1, name="Orgasm 3 times NO sound")
  goto event 21
  wait 5
  goto event 21
  wait 15
  goto event 21

event(id=23, trigger=none, switch=1, name="")

event(id=24, trigger=none, switch=1, name="")

event(id=25, trigger=none, switch=1, name="")

event(id=26, trigger=none, switch=1, name="")

event(id=27, trigger=none, switch=1, name="")

event(id=28, trigger=none, switch=1, name="")

event(id=29, trigger=none, switch=1, name="")

event(id=30, trigger=none, switch=1, name="")

event(id=31, trigger=none, switch=1, name="")

event(id=32, trigger=none, switch=1, name="")

event(id=33, trigger=none, switch=1, name="")

event(id=34, trigger=none, switch=1, name="")

event(id=35, trigger=none, switch=1, name="")

event(id=36, trigger=none, switch=1, name="")

event(id=37, trigger=none, switch=1, name="")

event(id=38, trigger=none, switch=1, name="")

event(id=39, trigger=none, switch=1, name="")

event(id=40, trigger=none, switch=1, name="")

event(id=41, trigger=none, switch=1, name="")

event(id=42, trigger=none, switch=1, name="")

event(id=43, trigger=none, switch=1, name="")

event(id=44, trigger=none, switch=1, name="")

event(id=45, trigger=none, switch=1, name="")

event(id=46, trigger=none, switch=1, name="")

event(id=47, trigger=none, switch=1, name="")

event(id=48, trigger=none, switch=1, name="")

event(id=49, trigger=none, switch=1, name="")

event(id=50, trigger=none, switch=1, name="Jumping")
  moveroute(skippable=true, repeat=true)
    jump(x=0, y=0)
    playSE(volume=80, pitch=100, name="015-Jump01")
  movewait

