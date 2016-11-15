defmodule BreakMetaing.Math do

  defmacro sumPlus10(a, b) do
    quote do
      unquote(a) + unquote(b) + 10
    end
  end

  # "
  #   "[insert a]" +  "[insert b]" + 42
  # "

  defmacro squared(x) do
    quote do
      unquote(x) * unquote(x)
    end
  end

  defmacro say({:+, _, [lhs, rhs]}) do
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs + rhs
      IO.puts "#{lhs} plus #{rhs} is #{result}"
      result
    end
  end

  # div do
    # h1 class: "title" do
      # text "Hello"
    # end

    # p do
      # text "Metaprogramming Elixir"
    # end
  # end
end
