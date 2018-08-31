module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / orbitalPeriod
  where orbitalPeriod = 31557600 * multiplierOn planet
        multiplierOn Earth   = 1
        multiplierOn Mercury = 0.2408467
        multiplierOn Venus   = 0.61519726
        multiplierOn Mars    = 1.8808158
        multiplierOn Jupiter = 11.862615
        multiplierOn Saturn  = 29.447498
        multiplierOn Uranus  = 84.016846
        multiplierOn Neptune = 164.79132
