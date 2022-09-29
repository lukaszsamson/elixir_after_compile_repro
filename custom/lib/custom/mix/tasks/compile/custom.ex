defmodule Mix.Tasks.Compile.Custom do
  use Mix.Task.Compiler

  @recursive true

  @impl Mix.Task.Compiler
  def run(_argv) do
    IO.puts "running custom compiler"

    Mix.Task.Compiler.after_compiler(:app, &IO.inspect(&1, label: "after compile"))
    {:ok, []}
  end
end
