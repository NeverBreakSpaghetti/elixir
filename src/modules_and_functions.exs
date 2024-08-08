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

# -----ex modulesAndFunctions-6------
#Find the library functions to do the following, and then use each in IEx.
#(If the word Elixir or Erlang appears at the end of the challenge, then you’ll find the answer in that set of libraries.)
defmodule Libraries do
  #Convert a float to a string with two decimal digits. (Erlang)
  def float_to_string(float) when is_float(float), do: :io.format("~.2f", [float])
  #def floatToString(float) when is_float(float), do: :erlang.float_to_binary(float, decimals: 2)

  #Get the value of an operating-system environment variable. (Elixir)
  def get_env_variable(variable), do: System.get_env(variable)
  def get_system_home(), do: System.user_home()

  #Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
  def get_extension(file_name), do: Path.extname(file_name)
  #def get_extension(file_name), do: Regex.run(~r{\.\w+}, file_name)

  #Return the process’s current working directory. (Elixir)
  def get_cwd(), do: File.cwd()

  #Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)


  #Execute a command in your operating system’s shell.
  def execute_shell_echo_command(message), do: System.shell("echo #{message}")

end