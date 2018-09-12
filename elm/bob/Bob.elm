module Bob exposing (hey)

hey : String -> String
hey remark =
    if isSilence remark then
      "Fine. Be that way!"
    else if isForcefulQuestion remark then
      "Calm down, I know what I'm doing!"
    else if isQuestion remark then
      "Sure."
    else if isShouting remark then
      "Whoa, chill out!"
    else "Whatever."

isShouting : String -> Bool
isShouting remark = remark == String.toUpper remark
                    && remark /= String.toLower remark

isQuestion : String -> Bool
isQuestion = String.endsWith "?"

isForcefulQuestion : String -> Bool
isForcefulQuestion remark = isShouting remark && isQuestion remark

isSilence : String -> Bool
isSilence = String.isEmpty << String.trim
