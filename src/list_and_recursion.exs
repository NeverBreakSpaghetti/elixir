defmodule ListAndRecursion do
  # -----ex ListsAndRecursion-1------
  # Write a mapsum function that takes a list and a function. It applies the function to each element of the list and then sums the result, so
  # iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
  # 14
  def mapsum(list, function), do: mapsum(list, function, 0)
  def mapsum([], _, sum), do: sum
  def mapsum([head | tail], function, sum), do: mapsum(tail, function, sum+function.(head))

  # -----ex ListsAndRecursion-2------
  # Write a max(list) that returns the element with the maximum value in the list. (This is slightly trickier than it sounds.)
  def max([]), do: IO.puts("empty")
  def max([head | tail]), do: my_max(tail, head)
  def my_max([], current_max), do: current_max
  def my_max([head | tail], current_max) when head > current_max, do: my_max(tail, head)
  def my_max([head | tail], current_max) when head <= current_max, do: my_max(tail, current_max)
  # ListAndRecursion.max([2,3,9,7,4,3,1,1])

  # -----ex ListsAndRecursion-3------
  # An Elixir single-quoted string is actually a list of individual character codes.
  # Write a caesar(list, n) function that adds n to each list element, wrapping if the addition results in a character greater than z.
  def caesar([], _), do: []
  def caesar([head | tail], n), do: [ ( rem((head-97+n),26) )+97 | caesar(tail, n)]
  # ListAndRecursion.caesar('ryvkve', 13)

  # -----ex ListsAndRecursion-4------
  # Write a function MyList.span(from, to) that returns a list of the numbers from from up to to.
  def span(from,to) when from > to, do: []
  def span(from,to), do: [from | span(from+1, to)]
  # ListAndRecursion.span(3, 13)
end