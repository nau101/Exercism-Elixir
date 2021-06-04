defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @base_n %{
            1 => "I",
            5 => "V",
            10 => "X",
            50 => "L",
            100 => "C",
            500 => "D",
            1000 => "M"
          }

  @spec numeral(pos_integer) :: String.t()

  def numeral(number) do

      num_inc = Map.keys(@base_n)
      result = ""

      if Enum.find(num_inc, fn x -> x == number end)  do
        @base_n[number]
      else
       rom_num(number,result)
      end
    end


  def rom_num(num,res) when num <= 0 do
    res
  end

  def rom_num(num,_res) when num > 3 do
    if num < 5 do
      @base_n[1] <> @base_n[5]
    else

    end
  end

  def rom_num(num,res) do
    result = res <> @base_n[1]
    rom_num(num - 1, result)
  end




end
