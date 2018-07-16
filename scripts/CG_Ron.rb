class CG

  RON_1 = [
    { # The man immediately grabs...
      :control => { :playing => false },
      :hair => { :file => 'EV001_hair.png', :z => 0 },
      :jacketback => { :file => 'EV001_jacket.png', :z => 1, :switch => JACKET },
      :body => { :file => 'EV001_bodyA.png', :z => 2 },
      :bust => { :file => 'EV001_bustA_massageA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA01.png', :z => 5, :switch => CAMISOLE },
      :jacket => { :file => 'EV001_jacketC.png', :z => 6, :switch => JACKET },
      :head => { :file => 'EV001_headA05.png', :z => 7 },
      :mouth => { :file => 'EV001_mouthA04.png', :z => 8 },
      :hands => { :file => 'EV001_handB_massageA01.png', :z => 9 },
    },
    { # Wait-
      :control => { :playing => false },
      :head => { :file => 'EV001_headA01.png', :z => 7 },
      :mouth => { :file => 'EV001_mouthA05.png', :z => 8 },
    },
    { # Ah....!
      :control => { :playing => false },
      :massage => { :play => 'RON_1_MASSAGE' },
      :blink => { :play => 'RON_1_BLINK' },
      :bust => { :file => '' },
      :camisole => { :file => '', :switch => CAMISOLE },
      :head => { :file => '' },
      :hands => { :file => '' },
    },
    { # You....
      :control => { :playing => false },
      :head => { :file => 'EV001_headB04.png', :z => 7 },
      :mouth => { :file => 'EV001_mouthA02.png', :z => 8 },
      :red => { :file => 'EV001_red.png', :z => 10 },
      :blink => { :stop => 'RON_1_BLINK' },
    },
    { # You deserve it.
      :control => { :playing => false },
      :mouth => { :file => '' },
      :hair => { :file => 'poseA_hair.png', :z => 0 },
      :jacketback => { :file => 'PoseA_jacketA04.png', :z => 1, :switch => JACKET },
      :body => { :file => 'poseA_bodyA.png', :z => 2 },
      :bust => { :file => 'poseA_bustA02.png', :z => 3 },
      :panty => { :file => 'poseA_panty.png', :z => 4, :switch => PANTY },
      :skirt => { :file => 'poseA_skirtA.png', :z => 5, :switch => SKIRT },
      :camisole => { :file => 'poseA_camisoleA02.png', :z => 6, :switch => CAMISOLE },
      :jacket => { :file => 'poseA_jacketA02.png', :z => 7, :switch => JACKET },
      :head => { :file => 'poseA_headE06.png', :z => 8 },
      :red => { :file => 'PoseA_red.png', :z => 9 },
      :massage => { :stop => 'RON_1_MASSAGE' },
    },
  ]

  RON_1_MASSAGE = [
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA01.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA01.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA04.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA04.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA04.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 9 },
    },
    {
      :control => { :seek => 0, :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 5, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 9 },
    },
  ]

  RON_1_BLINK = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headA05.png', :z => 7 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headA04.png', :z => 7 },
    },
  ]

  RON_2 = [
    { # Came back for this?
      :control => { :playing => false },
      :hair => { :file => 'EV001_hair.png', :z => 0 },
      :jacketback => { :file => 'EV001_jacket.png', :z => 1, :switch => JACKET },
      :body => { :file => 'EV001_bodyA.png', :z => 2 },
      :jacket => { :file => 'EV001_jacketC.png', :z => 5, :switch => JACKET },
      :head => { :file => 'EV001_headA05.png', :z => 6 },
      :mouth => { :file => 'EV001_mouthA05.png', :z => 7 },
      :red => { :file => 'EV001_red.png', :z => 8 },
      :massage => { :play => 'RON_2_MASSAGE' },
      :blink => { :play => 'RON_2_BLINK' },
    },
    {
      :massage => { :stop => 'RON_2_MASSAGE' },
      :blink => { :stop => 'RON_2_BLINK' },
      :bust => { :file => '' },
      :camisole => { :file => '', :switch => CAMISOLE },
      :head => { :file => '' },
    },
  ]

  RON_2_MASSAGE = [
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA01.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA01.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA04.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA04.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA04.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 9 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 9 },
    },
    {
      :control => { :wait => 3, :seek => 0 },
      :bust => { :file => 'EV001_bustA_massageA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA01.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA01.png', :z => 9 },
    },
  ]

  RON_2_BLINK = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headA05.png', :z => 6 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headA04.png', :z => 6 },
    },
  ]

  RON_3 = [
    { # Oooh Yuuki-san!! You look really good today!
      :control => { :playing => false },
      :hair => { :file => 'EV001_hair.png', :z => 0 },
      :jacketback => { :file => 'EV001_jacket.png', :z => 1, :switch => JACKET },
      :body => { :file => 'EV001_bodyA.png', :z => 2 },
      :bust => { :file => 'EV001_bustA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisoleA.png', :z => 4, :switch => CAMISOLE },
      :jacket => { :file => 'EV001_jacketA.png', :z => 5, :switch => JACKET },
      :head => { :file => 'EV001_headA01.png', :z => 6 },
      :mouth => { :file => 'EV001_mouthA02.png', :z => 7 },
    },
    { # Your breasts... somehow they're  more attractive  than before!
      :control => { :playing => false },
      :jacketback => { :file => 'EV001_jacket.png', :z => 1, :switch => JACKET },
      :body => { :file => 'EV001_bodyB.png', :z => 2 },
      :jacket => { :file => 'EV001_jacketD.png', :z => 5, :switch => JACKET },
      :mouth => { :file => 'EV001_mouthA02.png', :z => 7 },
      :massage => { :play => 'RON_3_MASSAGE' },
      :blink => { :play => 'RON_3_BLINK_A' },
      :bust => { :file => '' },
      :camisole => { :file => '', :switch => CAMISOLE },
      :head => { :file => '' },
    },
    { # Y- you.... You're at it again...!
      :control => { :playing => false },
      :head => { :file => 'EV001_headB04.png', :z => 6 },
      :mouth => { :file => 'EV001_mouthA04.png', :z => 7 },
      :red => { :file => 'EV001_red.png', :z => 9 },
      :blink => { :stop => 'RON_3_BLINK_A' },
    },
    { # What a lame excuse....!!
      :control => { :playing => false },
      :mouth => { :file => 'EV001_mouthA05.png', :z => 7 },
    },
    {  # ....What?
      :control => { :playing => false },
      :blink => { :play => 'RON_3_BLINK_B' },
      :head => { :file => '' },
    },
    { # ....!!!
      :control => { :playing => false },
      :head => { :file => 'EV001_headB01.png', :z => 6 },
      :mouth => { :file => 'EV001_mouthA02.png', :z => 7 },
      :blink => { :stop => 'RON_3_BLINK_B' },
    },
    {
      :massage => { :stop => 'RON_3_MASSAGE' },
    },
  ]

  RON_3_MASSAGE = [
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA01.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA01.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA01.png', :z => 8 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 8 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 8 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA04.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA04.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA04.png', :z => 8 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA03.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA03.png', :z => 8 },
    },
    {
      :control => { :wait => 3, :seek => 0 },
      :bust => { :file => 'EV001_bustA_massageA02.png', :z => 3 },
      :camisole => { :file => 'EV001_camisole_massageA02.png', :z => 4, :switch => CAMISOLE },
      :hands => { :file => 'EV001_handB_massageA02.png', :z => 8 },
    },
  ]

  RON_3_BLINK_A = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headA05.png', :z => 6 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headA04.png', :z => 6 },
    },
  ]

  RON_3_BLINK_B = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headB02.png', :z => 6 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headB03.png', :z => 6 },
    },
  ]

  RON_4 = [
    {
      # Don't call me by that name, we're not that close-
      :control => { :playing => false },
      :hair => { :file => 'poseA_hair.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 0 },
      :jacketback => { :file => 'PoseA_jacketA04.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 1, :switch => JACKET },
      :body => { :file => 'poseA_bodyA.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 2 },
      :bust => { :file => 'poseA_bustA02.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 3 },
      :panty => { :file => 'poseA_panty.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 4, :switch => PANTY },
      :camisole => { :file => 'poseA_camisoleA02.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 5, :switch => CAMISOLE },
      :skirt => { :file => 'poseA_skirtA.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 6, :switch => SKIRT },
      :jacket => { :file => 'poseA_jacketA02.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 7, :switch => JACKET },
      :head => { :file => 'poseA_headE07.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 8 },
      :red => { :file => 'PoseA_red.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 9 },
      :sweat => { :file => 'PoseA_sweat.png', :tween => { :from_x => 450, :to_x => 200, :duration => 6 }, :z => 10 },
    },
    { # Wh- where do you think you're touching!?
      :control => { :playing => false },
      :head => { :file => 'poseA_headE05.png', :x => 200, :z => 8 },
      :nipplerub => { :play => 'RON_4_NIPPLERUB' },
    },
    { # You... you must be kidding me, right?
      :control => { :playing => false },
      :head => { :file => 'poseA_headE07.png', :x => 200, :z => 8 },
    },
    { # W-what?!
      :control => { :playing => false },
      :head => { :file => 'poseA_headE05.png', :x => 200, :z => 8 },
    },
    { # Either of them are forbidden!
      :control => { :playing => false },
      :head => { :file => 'poseA_headE04.png', :x => 200, :z => 8 },
    },
    {
      :nipplerub => { :stop => 'RON_4_NIPPLERUB' },
    },
  ]

  RON_4_NIPPLERUB = [
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyA01.png', :z => 0 },
    },
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyA02.png', :z => 0 },
    },
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyA03.png', :z => 0 },
    },
    {
      :control => { :wait => 8, :seek => 0 },
      :body => { :file => 'EV011_bodyA02.png', :z => 0 },
    },
  ]

  RON_5 = [
    { # ...........!!!
      :control => { :playing => false },
      :hair => { :file => 'poseA_hair.png', :x => 200, :z => 0 },
      :jacketback => { :file => 'PoseA_jacketA04.png', :x => 200, :z => 1, :switch => JACKET },
      :body => { :file => 'poseA_bodyA.png', :x => 200, :z => 2 },
      :bust => { :file => 'poseA_bustA02.png', :x => 200, :z => 3 },
      :panty => { :file => 'poseA_panty.png', :x => 200, :z => 4, :switch => PANTY },
      :camisole => { :file => 'poseA_camisoleA02.png', :x => 200, :z => 5, :switch => CAMISOLE },
      :skirt => { :file => 'poseA_skirtA.png', :x => 200, :z => 6, :switch => SKIRT },
      :jacket => { :file => 'poseA_jacketA02.png', :x => 200, :z => 7, :switch => JACKET },
      :head => { :file => 'poseA_headB01.png', :x => 200, :z => 8 },
      :red => { :file => 'PoseA_red.png', :x => 200, :z => 9 },
      :nipplerub => { :play => 'RON_5_NIPPLERUB' },
    },
    { # S- Stop it at once!!
      :control => { :playing => false },
      :head => { :file => 'poseA_headE07.png', :x => 200, :z => 8 },
    },
    {
      :nipplerub => { :stop => 'RON_5_NIPPLERUB' },
    },
  ]

  RON_5_NIPPLERUB = [
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyE01.png', :z => 0 },
    },
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyE02.png', :z => 0 },
    },
    {
      :control => { :wait => 8 },
      :body => { :file => 'EV011_bodyE03.png', :z => 0 },
    },
    {
      :control => { :wait => 8, :seek => 0 },
      :body => { :file => 'EV011_bodyE02.png', :z => 0 },
    },
  ]

end
