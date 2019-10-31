defmodule Sum do
  def simple_sum() do
    inpt = IO.gets("Enter two numbers sapareted by space:\n")
    result = String.split(inpt, " ")
    |> Enum.map(fn x -> {n, _} = Integer.parse x; n end)
    |> Enum.sum

    IO.puts(:stdio, result)
  end
end

Sum.simple_sum
