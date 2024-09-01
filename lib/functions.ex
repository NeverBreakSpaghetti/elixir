defmodule Functions do

  def list_concat(list1, list2), do: list1 ++ list2

  def sum(n1, n2, n3), do: n1 + n2 + n3

  def pair_tuple_to_list({a,b}), do: [a,b]

  def fizz_buzz(input) do
    fizz_buzz_function = fn
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, c} -> c
    end
    fizz_buzz_function.(input)
  end

  def complete_fizz_buzz(input) do
    complete_fizz_buzz_function = fn
      n -> fizz_buzz({rem(n,3), rem(n,5), n})
    end
    complete_fizz_buzz_function.(input)
  end

  def prefix(prefix) do
    fn string -> "#{prefix} #{string}" end
  end

end