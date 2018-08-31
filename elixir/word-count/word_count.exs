defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
      |> String.downcase
      |> String.replace("_", " ")
      |> String.split(~r/[^\w-]/u, trim: true)
      |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1+1)) end)
  end
end
