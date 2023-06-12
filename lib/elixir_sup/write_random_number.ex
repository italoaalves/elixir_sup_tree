defmodule ElixirSup.WriteRandomNumber do
  def write do
    file_path = Path.join([
      :code.priv_dir(:elixir_sup),
      'test.txt'
    ])
    random_number = :rand.uniform(1000)
    File.write!(file_path, "Number: #{random_number}")
  end
end
