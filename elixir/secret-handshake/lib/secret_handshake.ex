import Bitwise
defmodule SecretHandshake do
  @secret_h %{
    0b1 => "wink",
    0b10 => "double blink",
    0b100 => "close your eyes",
    0b1000 => "jump"}

  @spec commands(any) :: nil
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """


  @spec commands(code :: integer) :: list(String.t())

  def commands(code) do
    action_numbers = Map.keys(@secret_h) |> Enum.sort()

    if band(code,0b10000) !== 0 do
      secret_c(code,action_numbers)
    else
      Enum.reverse(secret_c(code,action_numbers))
    end

  end

  defp secret_c(code,actions) do
    Enum.reduce(actions,[], fn
       x,acc when band(code,x) !== 0 -> [@secret_h[x] | acc]
      _x, acc -> acc
    end)
  end






end
