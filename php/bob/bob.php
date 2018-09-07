<?php

class Bob {

  function respondTo(string $gambit) : string
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

  private function isShouting(string $utterance) : bool
  {
    return $utterance === mb_strtoupper($utterance)
        && $utterance !== mb_strtolower($utterance);
  }

  private function isQuestion(string $utterance): bool
  {
    return mb_substr($utterance, -1) === '?';
  }

  private function isSilence(string $utterance) : bool
  {
    return mb_strlen($utterance) === 0;
  }

  private function mb_trim(string $str) : string {
    return preg_replace('/^[\p{Z}\s]+|[\p{Z}\s]+$/u','',$str);
  }
}
