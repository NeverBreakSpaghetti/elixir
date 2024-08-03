defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end

# -----ex modulesAndFunctions-4------
defmodule Sum do
  def of(1), do: 1
  def of(n), do: n + of(n-1)
end


# -----ex modulesAndFunctions-5------
defmodule Gdc do
  def of(x,0) when is_integer(x), do: x
  def of(x,y) when is_integer(x) and is_integer(y), do: of(y,rem(x,y))
end

# -----ex modulesAndFunctions-6------
# Chop.guess(273, 1..1000)
defmodule Chop do
  def guess(guess, _.._) when is_integer(guess) === false, do: IO.puts("only integers are accepted")
  def guess(guess, min..max) when (guess in min..max) === false, do: IO.puts("#{guess} not in range")
  def guess(guess, min..max) when guess in min..max do
    c = div(max+min,2)
    IO.puts("is it #{c}")
    guess(guess, min..max, div(max+min,2))
  end
  def guess(guess, _.._, center) when guess === center, do: IO.puts("#{guess}")
  def guess(guess, min.._, center) when guess <= center do
    c = div(center+min,2)
    IO.puts("is it #{c}")
    guess(guess, min..center, c)
  end
  def guess(guess, _..max, center) when guess > center do
    c = div(max+center,2)
    IO.puts("is it #{c}")
    guess(guess, center..max, c)
  end
end