defmodule Math do
  def sub(num1, num2) do
    num1 - num2
  end
end

input = IO.read(:stdio, :line)
sub = String.split(input, " ")
	|> Enum.map(fn x -> {n, _} = Integer.parse x; n end)

num1 = List.first(sub)
num2 = List.last(sub)
IO.puts(:stdio, Math.sub(num1, num2))
