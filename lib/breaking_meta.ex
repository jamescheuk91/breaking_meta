defmodule BreakingMeta do
  import Logger

  def write(path, contents) do
    debug "Writing contents to #{path}"
    File.write!(path, contents)
  end

  IO.puts "YO? during compile-time?"
  # RUN IN COMPILE-TIME ...
  # everything is expression
  
  # source code -> AST -> machine code / bytecode
  # Abstract Syntax Tree
  # iex> quote 1 + 1
  # iex> quote dev(10, 2)
end
