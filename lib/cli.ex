defmodule CLI do
  def main([]), do: IO.puts :stderr, "usage: ./parser \"<input>\""

  def main([arg]) do
    Parser.parse(arg)
    |> IO.puts

  rescue
    _ -> IO.puts :stderr, "parser: Invalid input."
  end
end
