<?php

class Bob {

  function respondTo($gambit)
  {
    $gambit = $this->mb_trim($gambit);

    if ($this->isSilence($gambit)) {
      return 'Fine. Be that way!';
    }

    if ($this->isShouting($gambit) && $this->isQuestion($gambit)) {
      return "Calm down, I know what I'm doing!";
    }

    if ($this->isShouting($gambit)) {
      return 'Whoa, chill out!';
    };

    if ($this->isQuestion($gambit)) {
      return 'Sure.';
    }

    return 'Whatever.';
  }

  private function isShouting($utterance)
  {
    return $utterance === mb_strtoupper($utterance)
        && $utterance !== mb_strtolower($utterance);
  }

  private function isQuestion($utterance)
  {
    return mb_substr($utterance, -1) === '?';
  }

  private function isSilence($utterance)
  {
    return mb_strlen($utterance) === 0;
  }

  private function mb_trim($str) {
    return preg_replace('/^[\p{Z}\s]+|[\p{Z}\s]+$/u','',$str);
  }
}
