defmodule Factorial do
	def fact(0), do: 1
	def fact(inpt) when inpt > 0, do: inpt * fact(inpt - 1)
end

{inpt, _} = IO.read(:stdio, :line)
    |> Integer.parse
IO.puts(:stdio, Factorial.fact(inpt))
