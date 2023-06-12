defmodule Mix.Tasks.WriteNumber do
  @moduledoc """
  Writes a random number in a file.

  `mix write_number`
  """

  use Mix.Task

  @shortdoc "Writes a random number in a file"
  def run(_) do
    ElixirSup.WriteRandomNumber.write
  end
end
