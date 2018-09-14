module Bob

let isShouting (input: string): bool =
  input = input.ToUpper() && input <> input.ToLower()

let isQuestion (input: string): bool =
  input |> Seq.last = '?'

let isForcefulQuestion (input: string): bool =
  isShouting(input) && isQuestion(input)

let isSilence = Seq.isEmpty

let response (input: string): string =
  let input = input.Trim()
  if isSilence(input) then "Fine. Be that way!"
  elif isForcefulQuestion(input) then "Calm down, I know what I'm doing!"
  elif isShouting(input) then "Whoa, chill out!"
  elif isQuestion(input) then "Sure."
  else "Whatever."
