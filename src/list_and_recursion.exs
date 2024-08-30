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

  # -----ex ListsAndRecursion-5------
  # Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take.
  # You may need to use an if statement to implement filter. The syntax for this is
  # if condition do
  #    expression(s)
  # else
  #    expression(s)
  # end
  def my_all?([], _), do: true
  # def my_all?([head | _tail], function) when function.(head) === false, do: false # error: invalid expression in guards, anonymous call is not allowed in guards.
  # def my_all?([_ | tail], function), do: my_all?(tail, function)
  def my_all?([head | tail], function) do
    if function.(head) === false do
      false
    else
      my_all?(tail, function)
    end
  end
  # ListAndRecursion.my_all?([1,2,3], &(&1<5))
  # ListAndRecursion.my_all?([1,2,3,10], &(&1<5))
  # ListAndRecursion.my_all?([10], &(&1<5))

  def my_each([],_), do: :ok
  def my_each([head | tail], function) do
    function.(head)
    my_each(tail, function)
  end
  # ListAndRecursion.my_each(["some", "example"], &(IO.puts(&1)))

  def my_filter([],_), do: []
  def my_filter([head | tail], function) do
    if function.(head) === true do
      [head | my_filter(tail, function)]
    else
      my_filter(tail, function)
    end
  end
  # ListAndRecursion.my_filter(["apple", "pear", "banana", "melon"], &(String.contains?(&1, "a")))

  def my_split([],_), do: []
  def my_split(list, count) when count>=0, do: [less_or_equal_then(list, count, 1), grater_then(list, count, 1)]
  def my_split(list, count) when count<0, do: [less_or_equal_then(list, length(list)+count, 1), grater_then(list, length(list)+count, 1)]
  def less_or_equal_then(_, count, element_number) when element_number>count, do: []
  def less_or_equal_then([], _, _), do: []
  def less_or_equal_then([head | tail], count, element_number), do: [head | less_or_equal_then(tail, count, element_number+1)]
  def grater_then([], _, _), do: []
  def grater_then([_head | tail], count, element_number) when element_number <= count, do: grater_then(tail, count, element_number+1)
  def grater_then([head | tail], count, element_number) when element_number > count, do: [head | grater_then(tail, count, element_number+1)]
  # ListAndRecursion.my_split([1, 2, 3], 2)
  # ListAndRecursion.my_split([1, 2, 3], 10)
  # ListAndRecursion.my_split([1, 2, 3], 0)
  # ListAndRecursion.my_split([1, 2, 3], -1)
  # ListAndRecursion.my_split([1, 2, 3], -5)
end
