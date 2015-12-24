# The “Hello, World” program is the first program you learn
# to write in many languages, but it doesn’t involve any input.
# So create a program that prompts for your name and prints a greeting using your name.

defmodule SayingHello do
  @greetings %{
    "Jim" => "Hey there, fellow",
    "Josh" => "Hello! I am honored to make the connection! I hear big things about you!"
  }
  def prompt do
    IO.gets "What is your name? "
  end

  def fix_input(name) do
    String.replace(name, "\n", "")
  end

  def select_greeting(name) do
    case @greetings[name] do
      nil ->
        "Hello, #{name}"
      greeting -> 
        "#{greeting} #{name}"
    end
  end

  def output(message) do
    IO.puts "#{message}, nice to meet you!"
  end
end

SayingHello.prompt
  |> SayingHello.fix_input
  |> SayingHello.select_greeting
  |> SayingHello.output
