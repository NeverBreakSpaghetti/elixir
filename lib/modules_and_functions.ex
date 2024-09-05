defmodule Times do
  def double(n), do: n * 2
  # -----ex modulesAndFunctions-1------
  def triple(n), do: n * 3
  # -----ex modulesAndFunctions-3------
  def quadruple(n), do: double(double(n))
end

# -----ex modulesAndFunctions-4------
#Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n.
#You’ll need to write this function inside a module in a separate file.
#Then load up IEx, compile that file, and try your function.
defmodule Sum do
  def of(1), do: 1
  def of(n), do: n + of(n-1)
end


# -----ex modulesAndFunctions-5------
#Write a function gcd(x,y) that finds the greatest common divisor between two nonnegative integers.
#Algebraically, gcd(x,y) is x if y is zero; it’s gcd(y, rem(x,y)) otherwise.
defmodule Gdc do
  def of(x,0) when is_integer(x), do: x
  def of(x,y) when is_integer(x) and is_integer(y), do: of(y,rem(x,y))
end

# -----ex modulesAndFunctions-6------
#I’m thinking of a number between 1 and 1000....
#The most efficient way to find the number is to guess halfway between the low and high numbers of the range.
#If our guess is too big, then the answer lies between the bottom of the range and one less than our guess.
#If our guess is too small, then the answer lies between one more than our guess and the end of the range.
#Your API will be guess(actual, range), where range is an Elixir range. Your output should look similar to this:
# Chop.guess(273, 1..1000)
defmodule Chop do
  def guess(guess, _.._//_step) when is_integer(guess) === false, do: IO.puts("only integers are accepted")
  def guess(guess, min..max//1) when (guess in min..max//1) === false, do: IO.puts("#{guess} not in range")
  def guess(guess, min..max//1) when guess in min..max//1 do
    c = div(max+min,2)
    IO.puts("is it #{c}")
    guess(guess, min..max, div(max+min,2))
  end
  def guess(guess, _.._//_step, center) when guess === center, do: IO.puts("#{guess}")
  def guess(guess, min.._//_step, center) when guess <= center do
    c = div(center+min,2)
    IO.puts("is it #{c}")
    guess(guess, min..center, c)
  end
  def guess(guess, _..max//_step, center) when guess > center do
    c = div(max+center,2)
    IO.puts("is it #{c}")
    guess(guess, center..max, c)
  end
end

# -----ex modulesAndFunctions-6------
#Find the library functions to do the following, and then use each in IEx.
#(If the word Elixir or Erlang appears at the end of the challenge, then you’ll find the answer in that set of libraries.)
defmodule MyLibraries do
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
  def convert_json_to_map(_json_string) do
    # TODO: use Jason
  end

  #Execute a command in your operating system’s shell.
  def execute_shell_echo_command(message), do: System.shell("echo #{message}")
  #I can also use System.cmd

end