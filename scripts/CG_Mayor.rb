module CG

  MAYOR_FIRST_MISSION = [
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
      :sweat => { :file => 'PoseA_sweat', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
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
      # [\N[1]] Y-yes, I want to inform you about-
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
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
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
      # [\N[1]] ...........
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
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
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
      # [\N[1]] ..........!!
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
      :head => { :file => 'PoseA_headE04', :z => 8, :x => 180 },
      :sweat => { :file => '' },
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
      # [\N[1]] ...I got it.
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
      :head => { :file => 'PoseA_headE05', :z => 8, :x => 180 },
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
      # [\N[1]] Yes, I am.
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
      # [\N[1]] Thank you, mayor-san.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
  ]

  MAYOR_CURSED = [
    {
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] ....My mother?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headB01', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      # [\N[1]] So everything that demon said was true?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headC02', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      # [\N[1]] ..............
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      # [\N[1]] But we believe she has her own reason to do that.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA04', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      # [\N[1]] ................
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA03', :z => 8, :switch => CAMISOLE, :x => 180 },
    },
    {
      # [\N[1]] Glad I could help.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA01', :z => 8, :switch => CAMISOLE, :x => 180 },
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
      # [\N[1]] Let's go, Sei-kun.
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
  ]

  MAYOR_BANDITS = [
    {
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
      :sweat => { :file => 'PoseA_sweat', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] ......
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA03', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] I understand.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headE03', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] ....?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] Y- Yeah....The meeting was... going well.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD06', :z => 8, :x => 180 },
      :red => { :file => 'PoseA_red', :z => 9, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 10, :x => 180 },
    },
    {
      # [\N[1]] Don't worry, I can handle it. Just leave it to me.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA01', :z => 8, :x => 180 },
      :red => { :file => '' },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] .....
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
  ]

  MAYOR_ARMY_ARRIVAL = [
    {
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] What we heard was true, they've set a camp in  South Forest, waiting for their chance.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA04', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] But the rumor was just his plan to lower enemies'  moral.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] Y- yes. They lack of men and are running out of stock.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD04', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] He said the only thing we can do right now is waiting  and praying.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] ..........
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD03', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] I'm sorry...
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] ... Understood.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA04', :z => 8, :x => 180 },
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
      # [\N[1]] (Upgrade equipments...?)
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0 },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET },
      :body => { :file => 'PoseA_bodyA', :z => 2 },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT },
      :bust => { :file => 'PoseA_bustA02', :z => 5 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET },
      :head => { :file => 'PoseA_headA03', :z => 8 },
    },
    {
      # [\N[1]] (Guess I have to visit the Item shop once again...)
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      # [\N[1]] (.........)
      :control => { :playing => false },
      :red => { :file => 'PoseA_red', :z => 10, :x => 180 },
    },
    {
      # [\N[1]] (Oh... it's dark already? I should get back home.)
      :control => { :playing => false },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
      :sweat => { :file => '' },
      :red => { :file => '' },
    },
  ]

  MAYOR_BECOMING_PRISONER = [
    {
      # [\N[1]] Yes, I'm ready for the next step.
      :control => { :playing => false },
      :hairback => { :file => 'PoseA_hair', :z => 0, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :body => { :file => 'PoseA_bodyB', :z => 2, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
      :head => { :file => 'PoseA_headA03', :z => 8, :tween => { :from_x => 450, :to_x => 180, :duration => 10 } },
    },
    {
      # [\N[1]] But have you figured it out yet?
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA04', :z => 8, :x => 180 },
    },
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :bust => { :file => 'PoseA_bustA01', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA01', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB01', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headB02', :z => 8, :x => 180 },
      :red => { :file => 'PoseA_red', :z => 10, :x => 180 },
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
      # [\N[1]] Th- that perverted thief!?
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ....Yes.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headA03', :z => 8, :x => 180 },
      :red => { :file => '' },
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
      # [\N[1]] ....What!? Prisoner?
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketB02', :z => 7, :switch => JACKET, :x => 180 },
    },
    {
      # [\N[1]] ......
      :control => { :playing => false },
      :head => { :file => 'PoseA_headC01', :z => 8, :x => 180 },
      :sweat => { :file => 'PoseA_sweat', :z => 9, :x => 180 },
    },
    {
      # [\N[1]] B- But....
      :control => { :playing => false },
      :head => { :file => 'PoseA_headC02', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] .......... I understand.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD03', :z => 8, :x => 180 },
      :sweat => { :file => '' },
    },
    {
      # [\N[1]] (Th- that's a really big amount!)
      :control => { :playing => false },
      :head => { :file => 'PoseA_headB01', :z => 8, :x => 180 },
    },
    {
      # [\N[1]] Yes, mayor-san.
      :control => { :playing => false },
      :head => { :file => 'PoseA_headD07', :z => 8, :x => 180 },
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
      # [\N[1]] (Now I have to find that perverted thief once again...)
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
  ]

  MAYOR_SOUTH_GATE = [
    {
      :control => { :sfx => { :file => 'Audio/SE/poyoyon', :volume => 70, :pitch => 90 }, :wait => 5 },
      :hairback => { :file => 'PoseA_hair', :z => 0, :x => 180 },
      :jacketback => { :file => 'PoseA_jacketA04', :z => 1, :switch => JACKET, :x => 180 },
      :body => { :file => 'PoseA_bodyA', :z => 2, :x => 180 },
      :panty => { :file => 'PoseA_panty', :z => 3, :switch => PANTY, :x => 180 },
      :skirt => { :file => 'PoseA_skirtA', :z => 4, :switch => SKIRT, :x => 180 },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
      :head => { :file => 'PoseA_headA03', :z => 8, :x => 180 },
    },
    {
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
      # [\N[1]] South Gate it is... It must be located in the... south, right?
      :control => { :playing => false },
      :bust => { :file => 'PoseA_bustA02', :z => 5, :x => 180 },
      :camisole => { :file => 'PoseA_camisoleA02', :z => 6, :switch => CAMISOLE, :x => 180 },
      :jacket => { :file => 'PoseA_jacketA02', :z => 7, :switch => JACKET, :x => 180 },
    },
  ]

end
