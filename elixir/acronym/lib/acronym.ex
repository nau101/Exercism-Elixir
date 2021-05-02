defmodule Acronym do

  @regex ~r/([\s\-\_]+|[a-z](?=[A-Z]))/

  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()

  def abbreviate(string) do
     string
     |> String.split(@regex, trim: true)
     |> Enum.reduce("", fn x, acc -> acc <> String.upcase(String.first(x)) end)
  end


end
