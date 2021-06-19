defmodule Scrabble do

  @l_scores %{
    'AEIOULNRST' => 1,
    'DG' => 2,
    'BCMP' => 3,
    'FHVWY' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10,
    ' \t\n' => 0
  }

  @scores_map for {letters, value} <- @l_scores,
                  letter <- letters,
              into: %{}, do: {letter, value}

  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t()) :: non_neg_integer
  def score(word) do
          word
          |> String.upcase()
          |> String.to_charlist()
          |> Enum.map(&Map.fetch!(@scores_map,&1))
          |> Enum.sum
  end


end
