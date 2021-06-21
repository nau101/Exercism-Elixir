defmodule Sublist do



  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a === b -> :equal
      a == [] and b == [nil] -> :sublist
      a == [nil] and b == [] -> :superlist
      check_list(a,b) == :sublist -> :sublist
      a != b -> :unequal
    end
  end

  defp check_list(a,b) do
    count_a = Enum.count(a)
    count_b = Enum.count(b)

    if count_a < count_b do
      res = for x <- a, Enum.member?(b,x), into: "", do: "sublist\s"
      if String.contains?(res,"sublist") == true, do: :sublist
    end

  end
end
