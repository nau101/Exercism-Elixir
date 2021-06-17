defmodule Scrabble do

  @l_values %{
    1 => ["A","E","I","O","U","L","N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B","C","M","P"],
    4 => ["F","H","V","W","Y"],
    5 => ["K"],
    8 =>["J", "X"],
    10 => ["Q", "Z"]
  }

  @l_keys Map.keys(@l_values)

  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t()) :: non_neg_integer
  def score(word) do
    String.split(word,"",trim: true)
    |> Enum.reduce(0, fn x,acc -> match(x,acc) end)

  end

  defp match(letter,total) do
    @l_keys
    |> Enum.reduce(0,fn x,acc -> )
  end


end
