defmodule ListLength do
  def call(list), do: count(list, 0)

  defp count([], accumulator), do: accumulator

  defp count([_head | tail], accumulator) do
    accumulator = accumulator + 1
    count(tail, accumulator)
  end
end
