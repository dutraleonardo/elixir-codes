defmodule Anagrams do

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end

  def is_anagrams?(word1, word2) when is_binary(word1) and is_binary(word2) do
    sort_string(word1) == sort_string(word2)
  end

end

word1 = IO.read(:stdio, :line)
|> String.trim
word2 = IO.read(:stdio, :line)
|> String.trim

IO.puts(:stdio, Anagrams.is_anagrams?(word1, word2))
