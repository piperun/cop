module GameData

  # Layers have a Z-level associated with them. This Z-level increases for each subsequent layer.
  # The Z-level of any layer can be overridden by adding attribute "z" => 1234.
  # This effectively forces a layer to be at the specified Z-level.
  # Below are the starting defaults for each layer type.
  DEFAULT_BASE_Z = 0
  DEFAULT_CLOTHING_Z = 10
  DEFAULT_FACE_Z = 20
  # Effect Z-levels currently do not increment, they always are set to the default unless overridden.
  DEFAULT_EFFECT_Z = 30

  # Variables can only hold numbers, so we need to translate numbers to names.
  # This is also where we define the required switch for each clothing set.
  CLOTHING_VARIABLE = 12
  CLOTHING_SETS = {
    1 => { "name" => "default", "switch" => 76 },
  }

  # This is where we define switches controlling effects.
  EFFECTS = {
    "blush" => { "switch" => 77 },
    "sweat" => { "switch" => 78 },
    "bruise" => { "switch" => 79 },
  }

  # Layers can have relative offsets applied to them by adding the property "pos" as follows:
  # "layer" => { "file" => "...", "pos" => [x,y] } where x and y are relative to the pose origin.

  # Faces are shared between various poses, this avoids repetition.
  FACES_POSE_A = {
    "A01" => { "file" => "PoseA/PoseA_headA01.png" },
    "A02" => { "file" => "PoseA/PoseA_headA02.png" },
    "A03" => { "file" => "PoseA/PoseA_headA03.png" },
    "A04" => { "file" => "PoseA/PoseA_headA04.png" },
    "A05" => { "file" => "PoseA/PoseA_headA05.png" },
    "A06" => { "file" => "PoseA/PoseA_headA06.png" },
    "B01" => { "file" => "PoseA/PoseA_headB01.png" },
    "B02" => { "file" => "PoseA/PoseA_headB02.png" },
    "B03" => { "file" => "PoseA/PoseA_headB03.png" },
    "C01" => { "file" => "PoseA/PoseA_headC01.png" },
    "C02" => { "file" => "PoseA/PoseA_headC02.png" },
    "C03" => { "file" => "PoseA/PoseA_headC03.png" },
    "D01" => { "file" => "PoseA/PoseA_headD01.png" },
    "D02" => { "file" => "PoseA/PoseA_headD02.png" },
    "D03" => { "file" => "PoseA/PoseA_headD03.png" },
    "D04" => { "file" => "PoseA/PoseA_headD04.png" },
    "D05" => { "file" => "PoseA/PoseA_headD05.png" },
    "D06" => { "file" => "PoseA/PoseA_headD06.png" },
    "D07" => { "file" => "PoseA/PoseA_headD07.png" },
    "E01" => { "file" => "PoseA/PoseA_headE01.png" },
    "E02" => { "file" => "PoseA/PoseA_headE02.png" },
    "E03" => { "file" => "PoseA/PoseA_headE03.png" },
    "E04" => { "file" => "PoseA/PoseA_headE04.png" },
    "E05" => { "file" => "PoseA/PoseA_headE05.png" },
    "E06" => { "file" => "PoseA/PoseA_headE06.png" },
    "E07" => { "file" => "PoseA/PoseA_headE07.png" },
  }

  # Faces are shared between various poses, this avoids repetition.
  FACES_POSE_B = {
    "A01" => { "file" => "PoseB/PoseB_headA01.png" },
  }

  # Faces are shared between various poses, this avoids repetition.
  FACES_POSE_C = {
    "A01" => { "file" => "PoseC/PoseC_headA01.png" },
    "A02" => { "file" => "PoseC/PoseC_headA02.png" },
    "A03" => { "file" => "PoseC/PoseC_headA03.png" },
    "A04" => { "file" => "PoseC/PoseC_headA04.png" },
    "A05" => { "file" => "PoseC/PoseC_headA05.png" },
    "A06" => { "file" => "PoseC/PoseC_headA06.png" },
    "B01" => { "file" => "PoseC/PoseC_headB01.png" },
    "B02" => { "file" => "PoseC/PoseC_headB02.png" },
    "B03" => { "file" => "PoseC/PoseC_headB03.png" },
    "B04" => { "file" => "PoseC/PoseC_headB04.png" },
    "B05" => { "file" => "PoseC/PoseC_headB05.png" },
    "B06" => { "file" => "PoseC/PoseC_headB06.png" },
    "C01" => { "file" => "PoseC/PoseC_headC01.png" },
    "C02" => { "file" => "PoseC/PoseC_headC02.png" },
    "C03" => { "file" => "PoseC/PoseC_headC03.png" },
    "C04" => { "file" => "PoseC/PoseC_headC04.png" },
    "D01" => { "file" => "PoseC/PoseC_headD01.png" },
    "D02" => { "file" => "PoseC/PoseC_headD02.png" },
    "D03" => { "file" => "PoseC/PoseC_headD03.png" },
    "D04" => { "file" => "PoseC/PoseC_headD04.png" },
    "D05" => { "file" => "PoseC/PoseC_headD05.png" },
    "D06" => { "file" => "PoseC/PoseC_headD06.png" },
    "D07" => { "file" => "PoseC/PoseC_headD07.png" },
    "E01" => { "file" => "PoseC/PoseC_headE01.png" },
    "E02" => { "file" => "PoseC/PoseC_headE02.png" },
    "E03" => { "file" => "PoseC/PoseC_headE03.png" },
    "E04" => { "file" => "PoseC/PoseC_headE04.png" },
    "E05" => { "file" => "PoseC/PoseC_headE05.png" },
    "E06" => { "file" => "PoseC/PoseC_headE06.png" },
    "E07" => { "file" => "PoseC/PoseC_headE07.png" },
  }

  # Faces are shared between various poses, this avoids repetition.
  FACES_POSE_D = {
    "A01" => { "file" => "PoseD/PoseD_headA01.png" },
    "A02" => { "file" => "PoseD/PoseD_headA02.png" },
    "A03" => { "file" => "PoseD/PoseD_headA03.png" },
    "A04" => { "file" => "PoseD/PoseD_headA04.png" },
    "B01" => { "file" => "PoseD/PoseD_headB01.png" },
    "B02" => { "file" => "PoseD/PoseD_headB02.png" },
    "B03" => { "file" => "PoseD/PoseD_headB03.png" },
    "B04" => { "file" => "PoseD/PoseD_headB04.png" },
    "C01" => { "file" => "PoseD/PoseD_headC01.png" },
    "C02" => { "file" => "PoseD/PoseD_headC02.png" },
    "C03" => { "file" => "PoseD/PoseD_headC03.png" },
    "C04" => { "file" => "PoseD/PoseD_headC04.png" },
    "D01" => { "file" => "PoseD/PoseD_headD01.png" },
    "D02" => { "file" => "PoseD/PoseD_headD02.png" },
    "D03" => { "file" => "PoseD/PoseD_headD03.png" },
    "D04" => { "file" => "PoseD/PoseD_headD04.png" },
    "E01" => { "file" => "PoseD/PoseD_headE01.png" },
    "E02" => { "file" => "PoseD/PoseD_headE02.png" },
    "E03" => { "file" => "PoseD/PoseD_headE03.png" },
    "E04" => { "file" => "PoseD/PoseD_headE04.png" },
    "E05" => { "file" => "PoseD/PoseD_headE05.png" },
    "E06" => { "file" => "PoseD/PoseD_headE06.png" },
  }

  # Effects are shared between various poses, this avoids repetition.
  EFFECTS_POSE_A = {
    "blush" => { "file" => "PoseA/PoseA_red.png" },
    "sweat" => { "file" => "PoseA/PoseA_sweat.png" },
  }

  # Effects are shared between various poses, this avoids repetition.
  EFFECTS_POSE_C = {
    "blush" => { "file" => "PoseC/PoseC_red.png" },
    "sweat" => { "file" => "PoseC/PoseC_sweat.png" },
  }

  # Effects are shared between various poses, this avoids repetition.
  EFFECTS_POSE_D = {
    "blush" => { "file" => "PoseD/PoseD_red.png" },
    "sweat" => { "file" => "PoseD/PoseD_sweat.png" },
    "bruise" => { "file" => "PoseD/PoseD_bruise.png" },
  }

  # Most poses have the same origin, with the exception of pose "D".
  # Each origin is a pair of absolute screen coordinates (x,y) representing the pose center.
  # These should be converted to screen percentages to support window resize.
  DEFAULT_POSE_ORIGIN = [ 500, 250 ]

  # This is where all poses are defined. All attributes are optional.
  POSES = {
    "AA" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_A,
      "base" => [
        { "file" => "PoseA/PoseA_hair.png" },
        { "file" => "PoseA/PoseA_bodyA.png" },
        { "file" => "PoseA/PoseA_bustA01.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseA/PoseA_panty.png" },
          { "file" => "PoseA/PoseA_skirtA.png" },
          { "file" => "PoseA/PoseA_camisoleA01.png" },
          { "file" => "PoseA/PoseA_jacketA01.png" },
        ]
      },
      "effects" => EFFECTS_POSE_A,
    },
    "AB" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_A,
      "base" => [
        { "file" => "PoseA/PoseA_hair.png" },
        { "file" => "PoseA/PoseA_bodyB.png" },
        { "file" => "PoseA/PoseA_bustA01.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseA/PoseA_panty.png" },
          { "file" => "PoseA/PoseA_skirtA.png" },
          { "file" => "PoseA/PoseA_camisoleA01.png" },
          { "file" => "PoseA/PoseA_jacketB01.png" },
        ]
      },
      "effects" => EFFECTS_POSE_A,
    },
    "AC" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_A,
      "base" => [
        { "file" => "PoseA/PoseA_hair.png" },
        { "file" => "PoseA/PoseA_bodyC.png" },
        { "file" => "PoseA/PoseA_bustA01.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseA/PoseA_panty.png" },
          { "file" => "PoseA/PoseA_skirtA.png" },
          { "file" => "PoseA/PoseA_camisoleC01.png" },
        ]
      },
      "effects" => EFFECTS_POSE_A,
    },
    "AD" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_A,
      "base" => [
        { "file" => "PoseA/PoseA_hair.png" },
        { "file" => "PoseA/PoseA_bodyD.png" },
        { "file" => "PoseA/PoseA_bustA01.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseA/PoseA_panty.png" },
          { "file" => "PoseA/PoseA_skirtA.png" },
          { "file" => "PoseA/PoseA_camisoleD.png" },
          { "file" => "PoseA/PoseA_jacketD.png" },
        ]
      },
      "effects" => EFFECTS_POSE_A,
    },
    "AE" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_A,
      "base" => [
        { "file" => "PoseA/PoseA_hair.png" },
        { "file" => "PoseA/PoseA_bodyE.png" },
        { "file" => "PoseA/PoseA_bustA01.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseA/PoseA_panty.png" },
          { "file" => "PoseA/PoseA_skirtA.png" },
          { "file" => "PoseA/PoseA_camisoleE.png" },
          { "file" => "PoseA/PoseA_jacketE.png" },
        ]
      },
      "effects" => EFFECTS_POSE_A,
    },
    "BA" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_B,
      "base" => [
        { "file" => "PoseB/PoseB_bodyA.png" },
        { "file" => "PoseB/PoseB_hair.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseB/PoseB_camisoleA.png" },
          { "file" => "PoseB/PoseB_panty.png" },
          { "file" => "PoseB/PoseB_skirtA.png" },
          { "file" => "PoseB/PoseB_jacketA.png" },
        ]
      },
    },
    "BB" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_B,
      "base" => [
        { "file" => "PoseB/PoseB_bodyB.png" },
        { "file" => "PoseB/PoseB_hair.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseB/PoseB_camisoleA.png" },
          { "file" => "PoseB/PoseB_panty.png" },
          { "file" => "PoseB/PoseB_skirtA.png" },
          { "file" => "PoseB/PoseB_jacketA.png" },
        ]
      },
    },
    "CA" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_C,
      "base" => [
        { "file" => "PoseC/PoseC_bodyA.png" },
        { "file" => "PoseC/PoseC_bust.png" },
        { "file" => "PoseC/PoseC_hair.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseC/PoseC_panty.png" },
          { "file" => "PoseC/PoseC_camisoleA.png" },
          { "file" => "PoseC/PoseC_skirtA.png" },
          { "file" => "PoseC/PoseC_jacketA.png" },
        ]
      },
      "effects" => EFFECTS_POSE_C,
    },
    "CB" => {
      "origin" => DEFAULT_POSE_ORIGIN,
      "faces" => FACES_POSE_C,
      "base" => [
        { "file" => "PoseC/PoseC_bodyA.png" },
        { "file" => "PoseC/PoseC_bust.png" },
        { "file" => "PoseC/PoseC_hair.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseC/PoseC_panty.png" },
          { "file" => "PoseC/PoseC_camisoleA.png" },
          { "file" => "PoseC/PoseC_skirtA.png" },
          { "file" => "PoseC/PoseC_jacketB.png" },
        ]
      },
      "effects" => EFFECTS_POSE_C,
    },
    "D" => {
      "origin" => [ 470, 255 ],
      "faces" => FACES_POSE_D,
      "base" => [
        { "file" => "PoseC/PoseC_bodyA.png" },
        { "file" => "PoseC/PoseC_foot.png" },
        { "file" => "PoseC/PoseC_hair.png" },
      ],
      "clothing" => {
        "default" => [
          { "file" => "PoseC/PoseC_panty.png" },
          { "file" => "PoseC/PoseC_camisoleA.png" },
          { "file" => "PoseC/PoseC_skirtA.png" },
          { "file" => "PoseC/PoseC_jacketB.png" },
        ]
      },
      "effects" => EFFECTS_POSE_D,
    }
  }
end
