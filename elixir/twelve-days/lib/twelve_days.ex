defmodule TwelveDays do
@gifts "twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree"
  @days %{1 => "first",
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

  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
   sorted_gifts = @gifts
   |> String.split(~r/[[:punct:]]\s/)
   |> Enum.reverse()
   
   "On the #{@days[number]} day of Christmas my true love gave to me: #{Enum.fetch!(sorted_gifts,0)}"
    
  end

  @doc """
  Given a `starting_verse` and an `ending_verse`, return the verses for each
  included day, one per line.
  """
  @spec verses(starting_verse :: integer, ending_verse :: integer) :: String.t()
  def verses(starting_verse, ending_verse) do

  end

  @doc """
  Sing all 12 verses, in order, one verse per line.
  """
  @spec sing() :: String.t()
  def sing do
    
  end

end
