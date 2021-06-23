defmodule Sublist do

  @spec compare(any, any) :: :equal | :sublist | :superlist | :unequal
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a == b -> :equal
      sublist_of?(a,b) -> :sublist
      sublist_of?(b,a) -> :superlist
      true -> :unequal
    end
  end

  defp sublist_of?(_, []), do: false
  defp sublist_of?(left, right) do
    List.starts_with?(right, left) or sublist_of?(left,tl(right))
  end
end
