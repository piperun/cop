#!/usr/bin/php
<?php

$file_layers = [
  '01Title' => 'title',
  'PoseA_hair' => 'hairback',
  'PoseA_jacketA01' => 'jacket',
  'PoseA_jacketA02' => 'jacket',
  'PoseA_jacketA03' => 'jacket',
  'PoseA_jacketA04' => 'jacketback',
  'PoseA_jacketB01' => 'jacket',
  'PoseA_jacketB02' => 'jacket',
  'PoseA_jacketB03' => 'jacket',
  'PoseA_jacketB04' => 'jacketback',
  'PoseA_jacketD' => 'jacket',
  'PoseA_jacketE' => 'jacket',
  'PoseA_bodyA' => 'body',
  'PoseA_bodyB' => 'body',
  'PoseA_bodyC' => 'body',
  'PoseA_bodyD' => 'body',
  'PoseA_bodyE' => 'body',
  'PoseA_panty' => 'panty',
  'PoseA_skirtA' => 'skirt',
  'PoseA_skirtB' => 'skirt',
  'PoseA_bustA01' => 'bust',
  'PoseA_bustA02' => 'bust',
  'PoseA_bustA03' => 'bust',
  'PoseA_camisoleA01' => 'camisole',
  'PoseA_camisoleA02' => 'camisole',
  'PoseA_camisoleA03' => 'camisole',
  'PoseA_camisoleC01' => 'camisole',
  'PoseA_camisoleC02' => 'camisole',
  'PoseA_camisoleC03' => 'camisole',
  'PoseA_camisoleD' => 'camisole',
  'PoseA_camisoleE' => 'camisole',
  'PoseA_headA01' => 'head',
  'PoseA_headA02' => 'head',
  'PoseA_headA03' => 'head',
  'PoseA_headA04' => 'head',
  'PoseA_headA05' => 'head',
  'PoseA_headA06' => 'head',
  'PoseA_headB01' => 'head',
  'PoseA_headB02' => 'head',
  'PoseA_headB03' => 'head',
  'PoseA_headC01' => 'head',
  'PoseA_headC02' => 'head',
  'PoseA_headC03' => 'head',
  'PoseA_headD01' => 'head',
  'PoseA_headD02' => 'head',
  'PoseA_headD03' => 'head',
  'PoseA_headD04' => 'head',
  'PoseA_headD05' => 'head',
  'PoseA_headD06' => 'head',
  'PoseA_headD07' => 'head',
  'PoseA_headE01' => 'head',
  'PoseA_headE02' => 'head',
  'PoseA_headE03' => 'head',
  'PoseA_headE04' => 'head',
  'PoseA_headE05' => 'head',
  'PoseA_headE06' => 'head',
  'PoseA_headE07' => 'head',
  'PoseA_red' => 'red',
  'EV001_hair' => 'hairback',
  'EV001_bodyA' => 'body',
  'EV001_bodyB' => 'body',
  'EV001_bodyC' => 'body',
  'EV001_bustA01' => 'bust',
  'EV001_bustA02' => 'bust',
  'EV001_bustA03' => 'bust',
  'EV001_bustA04' => 'bust',
  'EV001_bustA05' => 'bust',
  'EV001_camisoleA' => 'camisole',
  'EV001_camisoleB' => 'camisole',
  'EV001_camisoleC' => 'camisole',
  'EV001_camisoleD' => 'camisole',
  'EV001_jacket' => 'jacketback',
  'EV001_jacketA' => 'jacket',
  'EV001_jacketB' => 'jacket',
  'EV001_jacketC' => 'jacket',
  'EV001_jacketC01' => 'jacketsleeves',
  'EV001_jacketD' => 'jacket',
  'EV001_jacketD01' => 'jacketsleeves',
  'EV001_headA01' => 'head',
  'EV001_headA02' => 'head',
  'EV001_headA03' => 'head',
  'EV001_headA04' => 'head',
  'EV001_headA05' => 'head',
  'EV001_headB01' => 'head',
  'EV001_headB02' => 'head',
  'EV001_headB03' => 'head',
  'EV001_headB04' => 'head',
  'EV001_headB05' => 'head',
  'EV001_headC01' => 'head',
  'EV001_headC02' => 'head',
  'EV001_headC03' => 'head',
  'EV001_headC04' => 'head',
  'EV001_headC05' => 'head',
  'EV001_headC06' => 'head',
  'EV001_mouthA01' => 'mouth',
  'EV001_mouthA02' => 'mouth',
  'EV001_mouthA03' => 'mouth',
  'EV001_mouthA04' => 'mouth',
  'EV001_mouthA05' => 'mouth',
  'EV001_mouthA06' => 'mouth',
  'EV001_mouthB01' => 'mouth',
  'EV001_mouthB02' => 'mouth',
  'EV001_mouthB03' => 'mouth',
  'EV001_mouthB04' => 'mouth',
  'EV001_mouthB05' => 'mouth',
  'EV001_mouthB06' => 'mouth',
  'EV001_mouthB07' => 'mouth',
  'EV001_mouthB08' => 'mouth',
  'EV001_mouthC01' => 'mouth',
  'EV001_mouthC02' => 'mouth',
  'EV001_mouthC03' => 'mouth',
  'EV001_mouthC04' => 'mouth',
  'EV001_mouthC05' => 'mouth',
  'EV001_mouthC06' => 'mouth',
  'EV001_red' => 'red',
  'EV001_bustA_massageA01' => 'bust',
  'EV001_bustA_massageA02' => 'bust',
  'EV001_bustA_massageA03' => 'bust',
  'EV001_bustA_massageA04' => 'bust',
  'EV001_bustA_massageA05' => 'bust',
  'EV001_bustA_massageB01' => 'bust',
  'EV001_bustA_massageB02' => 'bust',
  'EV001_bustA_massageB03' => 'bust',
  'EV001_bustA_massageB04' => 'bust',
  'EV001_bustA_massageB05' => 'bust',
  'EV001_bustA_massageB06' => 'bust',
  'EV001_bustA_massageC01' => 'bust',
  'EV001_bustA_massageC02' => 'bust',
  'EV001_bustA_massageC03' => 'bust',
  'EV001_bustA_massageC04' => 'bust',
  'EV001_bustA_massageC05' => 'bust',
  'EV001_bustA_massageC06' => 'bust',
  'EV001_bustA_massageD01' => 'bust',
  'EV001_bustA_massageD02' => 'bust',
  'EV001_bustA_massageD03' => 'bust',
  'EV001_bustA_massageD04' => 'bust',
  'EV001_camisole_massageA01' => 'camisole',
  'EV001_camisole_massageA02' => 'camisole',
  'EV001_camisole_massageA03' => 'camisole',
  'EV001_camisole_massageA04' => 'camisole',
  'EV001_camisole_massageD01' => 'camisole',
  'EV001_camisole_massageD02' => 'camisole',
  'EV001_camisole_massageD03' => 'camisole',
  'EV001_camisole_massageD04' => 'camisole',
  'EV001_handB_massageA01' => 'hands',
  'EV001_handB_massageA02' => 'hands',
  'EV001_handB_massageA03' => 'hands',
  'EV001_handB_massageA04' => 'hands',
  'EV001_handB_massageA05' => 'hands',
  'EV001_handB_massageB01' => 'hands',
  'EV001_handB_massageB02' => 'hands',
  'EV001_handB_massageB03' => 'hands',
  'EV001_handB_massageB04' => 'hands',
  'EV001_handB_massageB05' => 'hands',
  'EV001_handB_massageB06' => 'hands',
  'EV001_handB_massageC01' => 'hands',
  'EV001_handB_massageC02' => 'hands',
  'EV001_handB_massageC03' => 'hands',
  'EV001_handB_massageC04' => 'hands',
  'EV001_handB_massageC05' => 'hands',
  'EV001_handB_massageC06' => 'hands',
  'EV001_handB_massageD01' => 'hands',
  'EV001_handB_massageD02' => 'hands',
  'EV001_handB_massageD03' => 'hands',
  'EV001_handB_massageD04' => 'hands',
  'EV001_handB_massageE' => 'hands',
  'EV001_handB_massageE01' => 'hands',
  'EV001_handB_massageE02' => 'hands',
  'EV001_handB_massageE03' => 'hands',
  'EV001_handB_massageE04' => 'hands',
  'PoseA_sweat' => 'sweat',
  'Menu_back' => 'background',
  'Menu_hair' => 'hairback',
  'Menu_bodyA' => 'body',
  'Menu_panty' => 'panty',
  'Menu_skirtA' => 'skirt',
  'Menu_camisoleA' => 'camisole',
  'Menu_jacketA' => 'jacket',
  'Menu_headA01' => 'head',
  'Ev019_BG' => 'background',
  'Ev019_BodyA' => 'body',
  'Ev019_BodyB' => 'body',
  'Ev019_HeadA03' => 'head',
  'Ev019_HeadB01' => 'head',
  'Ev019_HeadB02' => 'head',
  'Ev019_HeadB03' => 'head',
  'Ev019_HeadB04' => 'head',
  'Ev019_HeadB17' => 'head',
  'Ev019_HeadB22' => 'head',
  'Ev019_Camisole' => 'camisole',
  'Ev019_Panty' => 'panty',
  'Ev019_SkirtA' => 'skirt',
  'Ev019_SkirtB' => 'skirt',
  'Ev019_jacketA' => 'jacket',
  'Ev019_jacketB' => 'jacket',
  'Ev019_HairA' => 'hair',
  'Ev019_HairB' => 'hair',
  'Ev019_ManB' => 'man',
  'Ev019_SkirtFront' => 'skirtfront',
  'Ev019_RedB' => 'red',
  'Ev019_SweatB' => 'sweat',
];

$sfx_params = [
  'Audio/SE/poyoyon' => [70, 90],
  'Audio/SE/002-System02' => [100,100],
  'Audio/SE/008-System08' => [100,100],
  'Audio/SE/015-Jump01' => [100,100],
  'Audio/SE/003-System03' => [100,100],
  'Audio/SE/001-System01' => [100,100],
  'Audio/SE/007-System07' => [100,100],
  'Audio/SE/024-Door01' => [100,100],
  'Audio/SE/undress' => [100,100],
  'Audio/SE/056-Right02' => [100,100],
  'Audio/SE/089-Attack01' => [100,100],
  'Audio/SE/090-Attack02' => [100,100],
  'Audio/SE/091-Attack03' => [100,100],
  'Audio/SE/097-Attack09' => [100,100],
  'Audio/SE/098-Attack10' => [100,100],
  'Audio/SE/006-System06' => [100,100],
];

$layer_switches = [
  'jacket' => 'JACKET',
  'jacketback' => 'JACKET',
  'jacketsleeves' => 'JACKET',
  'panty' => 'PANTY',
  'camisole' => 'CAMISOLE',
  'skirt' => 'SKIRT',
  'skirtfront' => 'SKIRT',
  'title' => false,
  'hairback' => false,
  'hair' => false,
  'body' => false,
  'head' => false,
  'red' => false,
  'bust' => false,
  'mouth' => false,
  'hands' => 'HANDS_B',
  'sweat' => false,
  'background' => false,
  'man' => false,
];

function locate_picture($filename) {
  $filename = pathinfo($filename, PATHINFO_FILENAME);
  $pattern = preg_replace_callback('/([a-z])/i', function ($match) {
    $lower = strtolower($match[1]);
    $upper = strtoupper($match[1]);
    return "[{$lower}{$upper}]";
  }, $filename);
  foreach (glob("Graphics/Pictures/{$pattern}.*") as $match) {
    return pathinfo($match, PATHINFO_FILENAME);
  }
}

function layer_from_file($file) {
  global $file_layers;
  if (is_null($layer = &$file_layers[$file])) {
    throw new Exception("Unable to determine layer for file {$file}");
  }
  return $layer;
}

function is_empty($string) {
  return empty($string);
}

function sfx_params($file) {
  global $sfx_params;
  if (is_null($params = &$sfx_params[$file])) {
    throw new Exception("Unable to determine params for sfx {$file}");
  }
  return $params;
}

function switch_from_layer($layer) {
  global $layer_switches;
  if (is_null($switch = &$layer_switches[$layer])) {
    throw new Exception("Unable to determine switch for layer {$layer}");
  }
  return $switch;
}

function format_params($params) {
  $result = [];
  foreach ($params as $name => $value) {
    if (is_array($value)) {
      $value = format_params($value);
    }
    $result[] = ":{$name} => {$value}";
  }
  return '{ '. implode(', ', $result) .' }';
}

function format_layers($layers) {
  foreach ($layers as $name => $params) {
    $params = format_params($params);
    echo "      :{$name} => {$params},\n";
  }
}

echo "  ANIMATION = [\n";
preg_match_all('/^frame: (\d+)((?:(?!^frame).|\n)*)/m', file_get_contents('php://stdin'), $matches, PREG_SET_ORDER);
foreach ($matches as $match) {
  list(, $framenum, $lines) = $match;
  if (!is_empty($lines = trim($lines))) {
    $layers = [];
    $z = 0;
    echo "    {\n";
    echo "      # {$framenum}\n";
    foreach (explode("\n", $lines) as $line) {
      $line = explode(': ', trim($line), 2);
      if ($line[0] == 'sfx') {
        list($volume, $pitch) = sfx_params($line[1]);
        $layers['control']['sfx'] = ['file' => "'{$line[1]}'", 'volume' => $volume, 'pitch' => $pitch];
      } else if ($line[0] == 'picture') {
        $file = locate_picture($line[1]);
        $layer = layer_from_file($file);
        if ($switch = switch_from_layer($layer)) {
          $layers[$layer] = ['file' => "'{$file}'", 'z' => $z++, 'switch' => $switch];
        } else {
          $layers[$layer] = ['file' => "'{$file}'", 'z' => $z++];
        }
      } else if ($line[0] == 'message') {
        echo "      # {$line[1]}\n";
      } else {
        throw new Exception("Unknown type {$line[0]}");
      }
    }
    echo format_layers($layers);
    echo "    },\n";
  }
}

echo "  ]\n";

?>
