defmodule Math do
  def multiply(num1, num2) do
    num1 * num2
  end
end

input = IO.read(:stdio, :line)
num_list = String.split(input, " ")
	|> Enum.map(fn x -> {n, _} = Integer.parse x; n end)

num1 = List.first(num_list)
num2 = List.last(num_list)
IO.puts(:stdio, Math.multiply(num1, num2))
