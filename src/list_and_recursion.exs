defmodule ListAndRecursion do
  # -----ex ListsAndRecursion-1------
  # Write a mapsum function that takes a list and a function. It applies the function to each element of the list and then sums the result, so
  # iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
  # 14
  def mapsum(list, function), do: mapsum(list, function, 0)
  def mapsum([], _, sum), do: sum
  def mapsum([head | tail], function, sum), do: mapsum(tail, function, sum+function.(head))

end