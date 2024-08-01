defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end

# -----ex modulesAndFunctions-4------
defmodule Sum do
  def of(1), do: 1
  def of(n), do: n + sum(n-1)
end
