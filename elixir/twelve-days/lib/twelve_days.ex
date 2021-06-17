defmodule TwelveDays do

  @gifts "twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."

  @days %{
         1 => "first",
         2 => "second",
         3 => "third",
         4 => "fourth",
         5 => "fifth",
         6 => "sixth",
         7 => "seventh",
         8 => "eigth",
         9 => "ninth",
         10 => "tenth",
         11 => "eleventh",
         12 => "twelfth"
        }
  #@day @days |> Map.keys()
  @sorted_gifts @gifts |> String.split(~r/[[:punct:]]\s/) |> Enum.reverse()
  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
   res = ""
   if number == 1 do
    "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
   else
    "On the #{@days[number]} day of Christmas my true love gave to me:#{sing_verse(number,@sorted_gifts,res)}"
   end
  end

  @doc """
   Returns all gifts including previous day
  """
  defp sing_verse(0,_gifts,res), do: String.replace(res, ~r/^,/,"") # Regex to remove first comma
  defp sing_verse(day_num, gifts,res) when day_num >= 0 do
    sing_verse(day_num-1, gifts, res <>", #{Enum.fetch!(gifts,day_num-1)}")
  end

  @doc """
  Given a `starting_verse` and an `ending_verse`, return the verses for each
  included day, one per line.
  """
  @spec verses(starting_verse :: integer, ending_verse :: integer) :: String.t()
  def verses(starting_verse, ending_verse) do
      starting_verse..ending_verse #stream [1..10]
      |> Enum.reduce("", fn x,acc -> acc <>
              ~s"""
              #{verse(x)}
              """
      end) |> String.trim()

  end
  @doc """
  Sing all 12 verses, in order, one verse per line.
  """
  @spec sing() :: String.t()
  def sing do
      verses(1,12)
  end



end
