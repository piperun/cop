module CG

  ITEM_SHOP_ACCESS_DENIED = [
    # [Shop owner] Hey, don't get into my room without my permission!!
    {
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headB02', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :red => { :file => 'PoseA_red', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] S-sorry...!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
  ]

  ITEM_SHOP_MEASURING = [
    # [Karmal] This is quite interesting, it's been a long time since he  has sent somebody out for mission.
    {
      :control => { :seek => 18 },
    },
    {
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headD03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ..............
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ................
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] I- It's alright...
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD04', :z => 8, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
      :red => { :file => 'PoseA_red', :z => 9, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ...........!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] (...........)
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] I understand. Please go ahead.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD03', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] (.............)
      :control => { :playing => false },
      :hairback => { :file => 'EV001_hair', :z => 0, :y => -60 },
      :body => { :file => 'EV001_bodyA', :z => 1, :y => -60 },
      :bust => { :file => 'EV001_bustA01', :z => 2, :y => -60 },
      :camisole => { :file => 'EV001_camisoleA', :z => 3, :switch => CAMISOLE, :y => -60 },
      :jacket => { :file => 'EV001_jacketA', :z => 4, :switch => JACKET, :y => -60 },
      :head => { :file => 'EV001_headA01', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA01', :z => 6, :y => -60 },
      :red => { :file => 'EV001_red', :z => 7, :y => -60 },
      :jacketback => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
    },
    {
      # The man reached out and firmly grabbed \N[1]-chan  delicious breasts.
      :control => { :playing => false },
      :bust => { :file => 'EV001_bustA_massageA01', :z => 2, :y => -60 },
      :camisole => { :file => 'EV001_camisole_massageA01', :z => 3, :switch => CAMISOLE, :y => -60 },
      :jacket => { :file => 'EV001_jacketC', :z => 4, :switch => JACKET, :y => -60 },
      :head => { :file => 'EV001_headA05', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA04', :z => 6, :y => -60 },
      :red => { :file => 'EV001_red', :z => 7, :y => -60 },
      :handsA => { :file => 'EV001_handA_massageA01', :z => 10, :switch => HANDS_A, :y => -60 },
      :handsB => { :file => 'EV001_handB_massageA01', :z => 10, :switch => HANDS_B, :y => -60 },
    },
    {
      # [\N[1]] Nevermind.... Please keep going.
      :control => { :playing => false },
      :head => { :file => 'EV001_headC04', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA02', :z => 6, :y => -60 },
    },
    {
      # [\N[1]] Like this...?
      :control => { :playing => false },
      :body => { :file => 'EV001_bodyB', :z => 1, :y => -60 },
      :jacket => { :file => 'EV001_jacketD', :z => 4, :switch => JACKET, :y => -60 },
      :head => { :file => 'EV001_headA01', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA04', :z => 6, :y => -60 },
    },
    {
      :control => { :fade => 20 },
    },
    {
      # [\N[1]] Haah....
      :control => { :playing => false },
      :head => { :file => 'EV001_headC04', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA06', :z => 6, :y => -60 },
      :bust => { :file => '' },
      :camisole => { :file => '', :switch => CAMISOLE },
      :handsA => { :file => '', :switch => HANDS_A },
      :handsB => { :file => '', :switch => HANDS_B },
      :massage => { :play => 'ITEM_SHOP_MEASURING_MASSAGE' },
    },
    {
      # [\N[1]] ....Al-alright.
      :control => { :playing => false },
      :head => { :file => 'EV001_headC04', :z => 5, :y => -60 },
      :mouth => { :file => 'EV001_mouthA02', :z => 6, :y => -60 },
    },
    {
      :control => { :fade => 20 },
    },
    {
      # [Karmal] Thanks, just a little more.
      :control => { :playing => false },
      :massage => { :stop => 'ITEM_SHOP_MEASURING_MASSAGE', :play => 'ITEM_SHOP_MEASURING_MASSAGE_FASTER' },
    },
    {
      # [\N[1]] (He's having fun at teasing my chest, isn't he?)
      :control => { :playing => false },
      :head => { :file => '' },
      :mouth => { :file => 'EV001_mouthA02', :z => 6, :y => -60 },
      :blink => { :play => 'ITEM_SHOP_MEASURING_BLINK_DOWN' },
    },
    {
      # [\N[1]] ......... Are you done yet?
      :control => { :playing => false },
      :mouth => { :file => 'EV001_mouthA06', :z => 6, :y => -60 },
      :blink => { :stop => 'ITEM_SHOP_MEASURING_BLINK_DOWN', :play => 'ITEM_SHOP_MEASURING_BLINK_UP' },
    },
    {
      # [Karmal] Ah- yes!! I got it!!
      :control => { :playing => false },
      :hairback => { :file => '' },
      :body => { :file => '' },
      :jacket => { :file => '', :switch => JACKET },
      :mouth => { :file => '' },
      :red => { :file => '' },
      :massage => {  :stop => 'ITEM_SHOP_MEASURING_MASSAGE_FASTER' },
      :blink => {  :stop => 'ITEM_SHOP_MEASURING_BLINK_UP' },
    },
    {
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headE06', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :red => { :file => 'PoseA_red', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Thanks.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
  ]

  ITEM_SHOP_MEASURING_BLINK_DOWN = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headC05', :z => 5, :y => -60 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headC04', :z => 5, :y => -60 },
    },
  ]

  ITEM_SHOP_MEASURING_BLINK_UP = [
    {
      :control => { :wait => 100 },
      :head => { :file => 'EV001_headC02', :z => 5, :y => -60 },
    },
    {
      :control => { :wait => 5 },
      :head => { :file => 'EV001_headC03', :z => 5, :y => -60 },
    },
    {
      :control => { :seek => 0 },
      :head => { :file => 'EV001_headC04', :z => 5, :y => -60 },
    },
  ]

  ITEM_SHOP_MEASURING_MASSAGE = [
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'EV001_bustA_massageA01', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA01', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA01', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA01', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 5 },
      :bust => { :file => 'EV001_bustA_massageA02', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA02', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA02', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA02', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 5 },
      :bust => { :file => 'EV001_bustA_massageA03', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA03', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA03', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA03', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 5 },
      :bust => { :file => 'EV001_bustA_massageA04', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA04', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA04', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA04', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 5 },
      :bust => { :file => 'EV001_bustA_massageA03', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA03', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA03', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA03', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 5, :seek => 0 },
      :bust => { :file => 'EV001_bustA_massageA02', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA02', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA02', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA02', :z => 10, :switch => HANDS_B, :y => -60  },
    },
  ]

  ITEM_SHOP_MEASURING_MASSAGE_FASTER = [
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA01', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA01', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA01', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA01', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA02', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA02', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA02', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA02', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA03', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA03', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA03', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA04', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA04', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA04', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA04', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'EV001_bustA_massageA03', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA03', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA03', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA03', :z => 10, :switch => HANDS_B, :y => -60  },
    },
    {
      :control => { :wait => 3, :seek => 0 },
      :bust => { :file => 'EV001_bustA_massageA02', :z => 2, :y => -60  },
      :camisole => { :file => 'EV001_camisole_massageA02', :z => 3, :switch => CAMISOLE, :y => -60  },
      :handsA => { :file => 'EV001_handA_massageA02', :z => 10, :switch => HANDS_A, :y => -60  },
      :handsB => { :file => 'EV001_handB_massageA02', :z => 10, :switch => HANDS_B, :y => -60  },
    },
  ]

  ITEM_SHOP_CURSED = [
    {
      # [\N[1]] ........ How do you know that!?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headB02', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] .............
      :control => { :playing => false },
      :head => { :file => 'PoseA_headE02', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
  ]

  ITEM_SHOP_HELP_WANTED = [
    {
      # [\N[1]] What's wrong....?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headB01', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
  ]

  ITEM_SHOP_ONLY_APPLES = [
    {
      # [\N[1]] ........ Only apples?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headB01', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] ..............
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
  ]

  ITEM_SHOP_SHE_GOT_IT = [
    {
      # [\N[1]] I got it.
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA01', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
  ]

  ITEM_SHOP_WORKING = [
    {
      # [\N[1]] ........ How much for upgrading my sword?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] W- what!?
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ..........
      :control => { :playing => false },
      :head => { :file => 'PoseA_headE06', :z => 8, :x => 180 },
      :red => { :file => 'PoseA_red', :z => 10, :x => 180 },
    },
    {
      # [\N[1]] I- I'm sorry... ...So, what is it?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB02', :z => 8, :x => 180 },
      :red => { :file => '' },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ........ Just that?
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Well... I'm a little surprised.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD06', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      # [\N[1]] I think I can't say no on this!
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA01', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Thank you, oji-san!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
    },
    {
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA05', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Welcome!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] I'm Yuuki, the new worker here.
      :control => { :playing => false },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      # [\N[1]] Th- thanks.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
      :red => { :file => 'PoseA_red', :z => 10, :x => 180 },
    },
    {
      # [\N[1]] Then you can leave it here, it will be repaired as soon  as possible!
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA05', :z => 8, :x => 180 },
      :sweat => { :file => '' },
      :red => { :file => '' },
    },
    {
      # [\N[1]] Erm... About me, I'm not sure.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      # [\N[1]] But I'm sure that your armor will be ready when you  come back!
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA05', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] Y- Yes... Thank you very much.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] Well, looks like this job isn't so bad.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA01', :z => 8, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA05', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Yes, everything is fine.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB02', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Oh, another customer.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Please come in!
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] Ah- yes! H- how may I help you?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA05', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
      :sweat => { :file => '' },
    },
    {
      # The old man slowly crawled behind her and remained  undetected while she did the talking with his  customer.
      :control => { :playing => false },
      :background => { :file => 'Ev019_BG', :z => 0 },
      :body => { :file => 'Ev019_BodyB', :z => 1 },
      :head => { :file => 'Ev019_HeadB01', :z => 2 },
      :camisole => { :file => 'Ev019_Camisole', :z => 3, :switch => CAMISOLE },
      :panty => { :file => 'Ev019_Panty', :z => 4, :switch => PANTY },
      :skirt => { :file => 'Ev019_SkirtA', :z => 5, :switch => SKIRT },
      :jacket => { :file => 'Ev019_jacketA', :z => 6, :switch => JACKET },
      :hair => { :file => 'Ev019_HairB', :z => 7 },
    },
    {
      # As she's busy talking with the customer, the old man  silently got even closer and lower to the ground.
      :control => { :playing => false },
      :man => { :file => 'Ev019_ManB', :z => 8 },
    },
    {
      # [\N[1]] Yes, we can fix your broken gloves, you can leave it  right here.
      :control => { :playing => false },
      :head => { :file => 'Ev019_HeadB04', :z => 2 },
    },
    {
      # [\N[1]] Hahah... Please don't say that. It's so embarrassing...!
      :control => { :playing => false },
      :head => { :file => 'Ev019_HeadB22', :z => 2 },
      :skirt => { :file => 'Ev019_SkirtB', :z => 5, :switch => SKIRT },
      :jacket => { :file => 'Ev019_jacketB', :z => 6, :switch => JACKET },
      :skirtfront => { :file => 'Ev019_SkirtFront', :z => 8, :switch => SKIRT },
      :red => { :file => 'Ev019_RedB', :z => 9 },
    },
    {
      # [\N[1]] Phew... finally he's left. What a talky man...
      :control => { :playing => false },
      :head => { :file => 'Ev019_HeadB17', :z => 2 },
      :red => { :file => '' },
      :sweat => { :file => 'Ev019_SweatB', :z => 10 },
    },
    {
      # [\N[1]] Hmm....?
      :control => { :playing => false },
      :head => { :file => 'Ev019_HeadB03', :z => 2 },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] Oji-san...? What are you doing?
      :control => { :playing => false },
      :body => { :file => 'Ev019_BodyA', :z => 1 },
      :head => { :file => 'Ev019_HeadA03', :z => 2 },
      :hair => { :file => 'Ev019_HairA', :z => 7 },
    },
    {
      :control => { :playing => false },
      :background => { :file => '' },
      :body => { :file => '' },
      :head => { :file => '' },
      :camisole => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :jacket => { :file => '' },
      :skirtfront => { :file => '' },
      :hair => { :file => '' },
      :man => { :file => '' },
    },
    {
      # [\N[1]] ...Is that so?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA04', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] It's not so hard, but thank you!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
    },
    {
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA06', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Thank you so much!
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA01', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ........ Sure, I will think about it.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB02', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Oh... these potions...
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] I'm sure they will.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
    },
    {
      # [\N[1]] Now my equipment is upgraded, I should talk to  Mayor-san to hear about his next step.
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA01', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
  ]

  ITEM_SHOP_RICH_GIRL = [
    {
      # [\N[1]] ........ How much for upgrading my sword?
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA05', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Oh... if so then I can afford it.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] What do you mean?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA04', :z => 8, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
    },
    {
      # [\N[1]] Oh... It looks stronger now. Thank you!
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA05', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB02', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] Oh... these potions...
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA06', :z => 8, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 2 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :wait => 3 },
      :bust => { :file => 'PoseA_bustA03', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA03', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB03', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] I'm sure they will.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      :control => { :playing => false },
      :hairback => { :file => '' },
      :jacketback => { :file => '' },
      :body => { :file => '' },
      :panty => { :file => '' },
      :skirt => { :file => '' },
      :bust => { :file => '' },
      :camisole => { :file => '' },
      :jacket => { :file => '' },
      :head => { :file => '' },
    },
    {
      # [\N[1]] Now my equipment is upgraded, I should talk to  Mayor-san to hear about his next step.
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyA', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA01', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
  ]

end
