defmodule Bob do
  defp is_shouting(input) do
    input == String.upcase(input)
    && String.downcase(input) != String.upcase(input)
  end

  defp is_question(input) do
    String.ends_with?(input, "?")
  end

  defp is_silence(input) do
    input |> String.trim |> String.length == 0
  end

  def hey(input) do
    cond do
      is_silence(input)
        -> "Fine. Be that way!"
      is_shouting(input) && is_question(input)
        -> "Calm down, I know what I'm doing!"
      is_shouting(input)
        -> "Whoa, chill out!"
      is_question(input)
        -> "Sure."
      true
        -> "Whatever."
    end
  end
end
