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
   Creating a new map of letter(key) to score(value) map.

    seed_map = %{"A => 1, "B" => 1 ..etc}

  """
  def seed_map do
    Enum.reduce(@l_keys,%{}, fn x, acc -> list_to_map(x,acc) end)
  end

  defp list_to_map(key,acc) do
    new_map = Map.new(@l_values[key], fn a -> {a,key} end )
    Map.merge(acc,new_map)
  end


  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t()) :: non_neg_integer
  def score(word) do
    if String.length(word) >= 1 do
        if String.contains?(word," \t\n") do
          0
        else
          map_l = seed_map()
          word
          |> String.upcase()
          |> String.split("",trim: true)
          |> Enum.reduce(0, fn x,acc -> acc + Map.fetch!(map_l,x) end)
        end
    else
       0
    end
  end
end
