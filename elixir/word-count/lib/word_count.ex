defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    words = String.downcase(sentence)
    |> String.split(~r/(?=[^w-])[[:punct:]\s]+/u , trim: true) # (?=[^w-]) excludes hyphen(-) from [:punct:]
    Enum.reduce(words, %{}, fn x,acc -> Map.put(acc,x,occurs(words,x)) end)

  end

  defp occurs(words,word) do
      Enum.count(words, fn x -> x === word end)
  end


end
