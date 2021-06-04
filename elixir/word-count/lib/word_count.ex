defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r/(?=[^w-])[[:punct:]\s]+/u , trim: true) # (?=[^w-]) excludes hyphen(-) from [:punct:]
    |> Enum.frequencies()
  end

end
