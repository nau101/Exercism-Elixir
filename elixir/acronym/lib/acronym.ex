defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
     words = String.split(string,~r/[[:punct:]\s]/, trim: true)
     Enum.reduce(words,"", fn x, acc -> acc <> obtain(x) end)

  end

  def obtain(head) do
     graph_m = String.graphemes(head)
     String.upcase(Enum.fetch!(graph_m,0))

  end
end
