defmodule TwelveDays do

  @days " Drummers Drumming, Pipers Piping, Lords-a-Leaping, Ladies Dancing, Maids-a-Milking, Swans-a-Swimming, Geese-a-Laying, Gold Rings, Calling Birds, French Hens, Turtle Doves, and a Partridge in a Pear Tree. "
  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
   @days


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
