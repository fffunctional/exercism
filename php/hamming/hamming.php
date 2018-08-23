<?php

function distance($a, $b)
{
  if (strlen($a) !== strlen($b)) {
    throw new InvalidArgumentException('DNA strands must be of equal length.');
  }

  $a_ = str_split($a);
  $b_ = str_split($b);
  $result = 0;

  foreach ($a_ as $k => $v) {
    if ($v !== $b_[$k]) {
      $result += 1;
    }
  }

  return $result;
}
