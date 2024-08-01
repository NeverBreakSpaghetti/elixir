IO.puts "-----ex functions-2------"
# fun 3 args. if first 2 equal zero return FizzBuzz. if first zero return Fizz. if Second zero return Buzz. Otherwise return third arg
fizz_buzz = fn
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_, _, c} -> c
end

IO.puts fizz_buzz.({0,0,3})
IO.puts fizz_buzz.({0,1,3})
IO.puts fizz_buzz.({1,0,3})
IO.puts fizz_buzz.({1,2,3})

IO.puts "-----ex functions-3------"
# rem(a,b) return reminder. fun get n as arg
complete_fizz_buzz = fn
  n -> fizz_buzz.({rem(n,3), rem(n,5), n})
end

IO.puts complete_fizz_buzz.(10)
IO.puts complete_fizz_buzz.(11)
IO.puts complete_fizz_buzz.(12)
IO.puts complete_fizz_buzz.(13)
IO.puts complete_fizz_buzz.(14)
IO.puts complete_fizz_buzz.(15)
IO.puts complete_fizz_buzz.(16)


IO.puts "-----ex functions-4------"
prefix = fn prefix ->
  (fn
    string -> "#{prefix} #{string}"
  end)
end

IO.puts prefix.("Mrs").("Smith")
IO.puts prefix.("Elixir").("Rocks")

IO.puts "-----ex functions-5------"
IO.inspect Enum.map [1,2,3,4], fn x -> x+2 end
IO.inspect Enum.map [1,2,3,4], &(&1 + 2)
IO.puts Enum.each [1,2,3,4], fn x -> IO.inspect x end
IO.puts Enum.each [1,2,3,4], &(IO.inspect &1)

