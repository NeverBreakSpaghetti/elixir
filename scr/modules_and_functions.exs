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