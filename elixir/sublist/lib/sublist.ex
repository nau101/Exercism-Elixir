defmodule Sublist do



  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    count_a = Enum.count(a)
    count_b = Enum.count(b)

    cond do
      a == b -> :equal
      a == [] and b == [nil] -> :sublist
      a == [nil] and b == [] -> :superlist
      count_a < count_b and check_list(a,b) -> :sublist
      a != b -> :unequal
    end
  end

  defp check_list(a,b) do
    for x <- a , x === b, do: :sublist
    |> Enum.filter(fn x )

  end
end
