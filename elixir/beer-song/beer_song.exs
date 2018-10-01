defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    how_many = how_many number
    bottles  = bottles number
    instruction = instruction number
    next_num    = how_many (number - 1)
    next_bottles = bottles (number - 1)

    String.capitalize(how_many) <>
    bottles <> " of beer on the wall, " <>
    how_many <> bottles <> " of beer.\n" <>
    instruction <> next_num <>
    next_bottles <> " of beer on the wall.\n"
  end

  defp how_many(0), do: "no more"
  defp how_many(n) when n < 0, do: "99"
  defp how_many(n), do: Integer.to_string n

  defp bottles(1), do: " bottle"
  defp bottles(_), do: " bottles"

  defp instruction(0), do: "Go to the store and buy some more, "
  defp instruction(1), do: "Take it down and pass it around, "
  defp instruction(_), do: "Take one down and pass it around, "

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range \\ 99..0) do
    range |> Enum.map(&verse/1) |> Enum.join("\n")
  end
end
