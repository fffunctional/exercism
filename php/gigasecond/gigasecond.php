<?php

function from(DateTime $date): DateTime
{
  $period = 'P';
  $time = 'T';
  $giga = pow(10,9);
  $seconds = 'S';
  $interval_spec = "{$period}{$time}{$giga}{$seconds}";

  return (clone $date)->add(new DateInterval($interval_spec));
}
