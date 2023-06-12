import Config

config :elixir_sup, ElixirSup.Scheduler,
jobs: [
  {"* * * * *", fn -> GenServer.cast(:file_server, :write_number) end}
]
