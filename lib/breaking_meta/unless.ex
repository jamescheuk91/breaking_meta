defmodule BreakMetaing.Unless do

  defmacro unless(condition, clauses) do
    build_unless(condition, clauses)
  end

  defp build_unless(condition, do: do_clause) do
    build_unless(condition, do: do_clause, else: nil)
  end

  defp build_unless(condition, do: do_clause, else: else_clause) do
    quote do
      if !unquote(condition), do: unquote(else_clause), else: unquote(do_clause)
    end
  end

  # "
  # if !"[insert a condition]" do
  #   "[insert a else clause]"
  # else
  #   "[insert a do clause]"
  # "

  # if !available? do
  #  ##
  # end

  # unless available? do
  #   ##
  # end
end
