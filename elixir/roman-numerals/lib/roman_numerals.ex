defmodule RomanNumerals do
  @moduledoc """
  Convert the number to a roman number.
  """
  @base_n %{
            1 => "I",
            4 => "IV",
            5 => "V",
            6 => "VI",
            9 => "IX",
            10 => "X",
            40 => "XL",
            50 => "L",
            90 => "XC",
            100 => "C",
            400 => "CD",
            500 => "D",
            900 => "CM",
            1000 => "M"
          }

  @r_keys Map.keys(@base_n) |> Enum.sort(&(&1 > &2)) # extract keys to list from high to low

  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
      result = ""
      to_rnumeral(number,@r_keys,result)
  end

  defp to_rnumeral(0,_,res), do: res
  defp to_rnumeral(num,[max|rest] = keys, res) when num >= 0 do
    if num >= max do
      to_rnumeral(num-max,keys, res<>@base_n[max])
    else
      to_rnumeral(num, rest, res)
    end
  end


end
