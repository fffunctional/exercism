﻿module SpaceAge

type Planet = Earth | Mercury | Venus | Mars | Jupiter | Saturn | Uranus | Neptune

let age (planet: Planet) (seconds: int64): float =
  let years = float(seconds) / (365.25 * 24.0 * 60.0 * 60.0)
  let multiplier =
    match planet with
    | Earth   -> 1.0
    | Mercury -> 0.2408467
    | Venus -> 0.61519726
    | Mars -> 1.8808158
    | Jupiter -> 11.862615
    | Saturn -> 29.447498
    | Uranus -> 84.016846
    | Neptune -> 164.79132
  years / multiplier
